package com.tjcu.daoimpl;

import com.tjcu.bean.DetailContent;
import com.tjcu.dao.DetailContentDao;
import com.tjcu.utils.UpdateQuery;

import java.util.List;

public class DetailContentDaoImpl implements DetailContentDao {
    @Override
    public void add(List<DetailContent> detailContentList) {
        String insertSql = "insert into DETAIL_CONTENT (title,update_id,type_detail_id,content,video_url) values (?,?,?,?,?)";
        for(DetailContent detailContent:detailContentList){
            UpdateQuery.update(insertSql,detailContent.getTitle(),detailContent.getUpdateId(),detailContent.getTypeDetailId(),detailContent.getContent(),detailContent.getVideoUrl());
        }
    }
}
