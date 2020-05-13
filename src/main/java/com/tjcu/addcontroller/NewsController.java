package com.tjcu.addcontroller;

import com.tjcu.addcommon.PageReq;
import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addobj.NewCreateReqDTO;
import com.tjcu.addobj.NewsReq;
import com.tjcu.addservice.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * 新闻资讯Controller
 *
 * @author lt
 * @date 2010/5/12
 */
@RestController
@RequestMapping(value = "/news")
public class NewsController {
    @Autowired
    NewsService newsService;

    /**
     * 新增、修改新闻
     *
     * @param reqDTO
     * @return
     */
    @PostMapping(value = "/save")
    public ResultMessage createNews(@RequestBody NewCreateReqDTO reqDTO) {
        return newsService.createNews(reqDTO);
    }

    /**
     * 获取新闻列表/详情
     * @param newsReq
     * @return
     */
    @GetMapping(value = "/getNews")
    public ResultMessage getNewsList(@RequestBody NewsReq newsReq){
        return newsService.getNewsList(newsReq);
    }

}
