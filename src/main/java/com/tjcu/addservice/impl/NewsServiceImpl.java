package com.tjcu.addservice.impl;

import com.tjcu.addcommon.*;
import com.tjcu.adddao.NewsRepository;
import com.tjcu.addobj.NewCreateReqDTO;
import com.tjcu.addobj.NewsListDTO;
import com.tjcu.addobj.NewsReq;
import com.tjcu.addservice.NewsService;
import com.tjcu.bean.News;
import com.tjcu.bean.NewsExample;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * 新闻资讯
 *
 * @author lt
 * @date 2010/5/12
 */
@Service
public class NewsServiceImpl implements NewsService {

    protected static final Logger logger = LoggerFactory.getLogger(NewsServiceImpl.class);

    @Autowired
    NewsRepository newsRepository;

    @Override
    public ResultMessage createNews(NewCreateReqDTO reqDTO) {
        if (Objects.isNull(reqDTO)) {
            return Result.error("参数错误");
        }
        if (StringUtils.isEmpty(reqDTO.getTitle()) || StringUtils.isEmpty(reqDTO.getContent())) {
            return Result.error("录入参数错误");
        }
        News news = BeanMapperUtils.map(reqDTO, News.class);

        if (reqDTO.getId() == null) {
            news.setCreateTime(new Date());
            news.setUpdateTime(new Date());
            news.setDelFlag(0);
            int result = newsRepository.insert(news);
            if (result <= 0) {
                return Result.error(SysConstant.FAIL_MESSAGE);
            }
            return Result.success("新增新闻成功");
        }
        int result = newsRepository.updateByPrimaryKey(news);
        if (result <= 0) {
            return Result.error(SysConstant.FAIL_MESSAGE);
        }
        return Result.success("修改新闻成功");

    }

    @Override
    public ResultMessage getNewsList(NewsReq newsReq) {
        //id不为空，查详情
        if (newsReq.getId() != null) {
            News news = newsRepository.selectByPrimaryKey(newsReq.getId());
            if (news == null) {
                return Result.error("参数错误，数据不存在");
            }
            NewsListDTO newsListDTO = BeanMapperUtils.map(news,NewsListDTO.class);
            return Result.success(newsListDTO);
        }
        //否则查列表
        Integer limit = newsReq.getPageSize();
        if (limit == null) {
            limit = 10;
        }
        Integer currentPage = newsReq.getPageNum();
        //未设置默认从第一页查询
        if (currentPage == null) {
            currentPage = 1;
        }
        Integer offset = (currentPage - 1) * limit;
        NewsExample newsExample = new NewsExample();
        newsExample.setLimit(limit);
        newsExample.setOffset(offset);
        List<News> newsList = newsRepository.selectByExample(newsExample);
        Long count = newsRepository.countByExample(newsExample);
        PageModel pageModel= new PageModel();
        if (newsList != null && !newsList.isEmpty()) {
            List<NewsListDTO> newsListDTOS = new ArrayList<>();
            try {
                newsListDTOS = BeanMapperUtils.mapList(newsList,NewsListDTO.class);
            } catch (Exception e) {
                logger.error("对象转换失败");
                return null;
            }
            pageModel.setPageNum(currentPage);
            pageModel.setData(newsListDTOS);
            pageModel.setTotal(count);
            return Result.success("成功",pageModel);
        }
        return Result.error("获取列表失败");
    }
}
