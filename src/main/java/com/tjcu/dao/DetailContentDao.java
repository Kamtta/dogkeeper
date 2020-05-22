package com.tjcu.dao;

import com.tjcu.bean.DetailContent;

import java.util.List;

public interface DetailContentDao {

    void add (List<DetailContent> detailContentList);

    List<DetailContent> selectByTypeId(String id);

    List<DetailContent> selectByUpdateId(String id, String typeid);

    Integer sumCount(String id);

    List findContent(String id,int i, Integer pageCount);
}
