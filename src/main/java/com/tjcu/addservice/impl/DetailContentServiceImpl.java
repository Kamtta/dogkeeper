package com.tjcu.addservice.impl;

import com.tjcu.addcommon.BeanMapperUtils;
import com.tjcu.addcommon.Result;
import com.tjcu.addcommon.ResultMessage;
import com.tjcu.adddao.DetailContentRepository;
import com.tjcu.adddao.TypeDetailRepository;
import com.tjcu.addobj.TypeDetailReqDTO;
import com.tjcu.addservice.DetailContentService;
import com.tjcu.bean.DetailContent;
import com.tjcu.bean.TypeDetail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

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
        List<DetailContent> detailContent = typeDetailReqDTO.getDetailContents();
        //当前id为空，添加
        if (typeDetailReqDTO.getId() == null) {
            typeDetail.setCreateTime(new Date());
            typeDetail.setUpdateTime(new Date());
            typeDetail.setDelFlag(0);
            int insert = typeDetailRepository.insert(typeDetail);
            if (insert <= 0) {
                return Result.error("新增介绍类型内容失败");
            }
//            detailContent.setDelFlag(typeDetail.getId());
//            int insert2 = detailContentRepository.insert(detailContent);
//            if (insert2 <= 0) {
//                return Result.error("新增内容详情失败");
//            }
            return Result.success("新增成功");
        }
        int update1 = typeDetailRepository.updateByPrimaryKey(typeDetail);
        if (update1 <= 0) {
            return Result.error("更新介绍类型内容失败");
        }
//        int update2 = detailContentRepository.updateByPrimaryKey(detailContent);
//        if (update2 <= 0) {
//            return Result.error("更新介绍类型内容失败");
//        }
        return Result.success("更新成功");
    }
}
