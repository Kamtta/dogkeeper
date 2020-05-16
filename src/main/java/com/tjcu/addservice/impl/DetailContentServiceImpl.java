package com.tjcu.addservice.impl;

import com.tjcu.addcommon.BeanMapperUtils;
import com.tjcu.addcommon.Result;
import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addcommon.TypeEnum;
import com.tjcu.adddao.DetailContentRepository;
import com.tjcu.adddao.TypeDetailRepository;
import com.tjcu.addobj.TypeDetailContentDTO;
import com.tjcu.addobj.TypeDetailReqDTO;
import com.tjcu.addobj.TypeListDTO;
import com.tjcu.addservice.DetailContentService;
import com.tjcu.bean.DetailContent;
import com.tjcu.bean.DetailContentExample;
import com.tjcu.bean.TypeDetail;
import com.tjcu.bean.TypeDetailExample;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * @author 12749
 */
@Service
public class DetailContentServiceImpl implements DetailContentService {
    protected static final Logger logger = LoggerFactory.getLogger(DetailContentServiceImpl.class);

    @Autowired
    DetailContentRepository detailContentRepository;
    @Autowired
    TypeDetailRepository typeDetailRepository;

    @Override
    public ResultMessage get() {
        return Result.success(detailContentRepository.selectByExample(null));
    }

    @Override
    @Transactional
    public ResultMessage saveDetail(TypeDetailReqDTO typeDetailReqDTO) {
        if (Objects.isNull(typeDetailReqDTO)) {
            return Result.error("参数为空");
        }
        if (typeDetailReqDTO.getTypeId() == null) {
            return Result.error("参数错误,请选择类型");
        }
        TypeDetail typeDetail = BeanMapperUtils.map(typeDetailReqDTO,TypeDetail.class);
        List<DetailContent> detailContents = typeDetailReqDTO.getDetailContents();
        //当前id为空，添加
        if (typeDetailReqDTO.getId() == null) {
            typeDetail.setCreateTime(new Date());
            typeDetail.setUpdateTime(new Date());
            typeDetail.setDelFlag(0);
            int insert = typeDetailRepository.insertSelective(typeDetail);
            if (insert <= 0) {
                return Result.error("新增介绍类型内容失败");
            }
            logger.info(typeDetail.toString());
            //第一层添加成功后添加内容详情
            for (DetailContent content : detailContents) {
                content.setCreateTime(new Date());
                content.setUpdateTime(new Date());
                content.setDelFlag(0);
                content.setTypeDetailId(typeDetail.getId());
                int insert2 = detailContentRepository.insert(content);
                logger.info(content.toString());
                if (insert2 <= 0) {
                    return Result.error("新增内容详情失败");
                }
            }
            return Result.success("新增成功");
        }
        int update1 = typeDetailRepository.updateByPrimaryKey(typeDetail);
        if (update1 <= 0) {
            return Result.error("更新介绍类型内容失败");
        }
        for (DetailContent content : detailContents) {
            content.setUpdateTime(new Date());
            content.setTypeDetailId(typeDetail.getId());
            int insert2 = detailContentRepository.updateByPrimaryKey(content);
            if (insert2 <= 0) {
                return Result.error("修改内容详情失败");
            }
        }
        return Result.success("保存成功");
    }



    @Override
    public ResultMessage getTypeList(Integer typeId) {
        if (typeId == null) {
            return Result.error("参数错误");
        }
        TypeDetailExample typeDetailExample = new TypeDetailExample();
        typeDetailExample.createCriteria()
                .andTypeIdEqualTo(typeId)
                .andDelFlagEqualTo(0);
        List<TypeListDTO> typeListDTOS = BeanMapperUtils.
                                    mapList(typeDetailRepository.selectByExample(typeDetailExample),TypeListDTO.class);
        if (!CollectionUtils.isEmpty(typeListDTOS)) {
            for (TypeListDTO dto : typeListDTOS) {
                dto.setTypeContent(TypeEnum.getDetail(dto.getTypeId()));
                dto.setContentId(dto.getContentTitle());
                dto.setTypeTitle(TypeEnum.getDetail(Integer.valueOf(dto.getTypeTitle())));
                dto.setContentTitle(TypeEnum.getDetail(Integer.valueOf(dto.getContentTitle())));
            }
        }
        return Result.success(typeListDTOS);
    }

    @Override
    public ResultMessage getContentList(Integer typeId) {
        if (typeId == null) {
            return Result.error("参数错误");
        }
        DetailContentExample typeDetailExample = new DetailContentExample();
        typeDetailExample.createCriteria()
                .andTypeDetailIdEqualTo(typeId)
                .andDelFlagEqualTo(0);
        List<DetailContent> contentDTOS = detailContentRepository.selectByExample(typeDetailExample);
        List<TypeDetailContentDTO> detailContentDTOS = new ArrayList<>();
        if (!CollectionUtils.isEmpty(contentDTOS)) {
            for (DetailContent detailContent : contentDTOS) {
                TypeDetailContentDTO dto = new TypeDetailContentDTO();
                dto.setTypeDetailId(detailContent.getTypeDetailId());
                dto.setTypeDetailStr(TypeEnum.getDetail(detailContent.getTypeDetailId()));
                dto.setContent(detailContent.getContent());
                dto.setVideoUrl(detailContent.getVideoUrl());
                detailContentDTOS.add(dto);
            }
        }
        return Result.success(detailContentDTOS);
    }
}
