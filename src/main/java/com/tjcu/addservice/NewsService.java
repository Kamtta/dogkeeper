package com.tjcu.addservice;

import com.tjcu.addcommon.PageReq;
import com.tjcu.addcommon.ResultMessage;
import com.tjcu.addobj.NewCreateReqDTO;
import com.tjcu.addobj.NewsReq;

/**
 * 新闻资讯
 * @author lt
 * @date 2010/5/12
 */
public interface NewsService {
    /**
     * 新增、修改新闻
     * @param reqDTO
     * @return ResultMessage
     */
    ResultMessage createNews(NewCreateReqDTO reqDTO);

    /**
     * 列表
     * @param newsReq
     * @return ResultMessage
     */
    ResultMessage getNewsList(NewsReq newsReq);
}
