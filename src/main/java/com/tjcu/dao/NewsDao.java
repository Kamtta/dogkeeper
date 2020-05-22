package com.tjcu.dao;

import com.tjcu.bean.News;

import java.util.List;

public interface NewsDao {
    Integer sumCount();

    List findContent(int i, Integer pageCount);

    void insertVo(News news);

    void delete(String id);

    News selectbyid(String id);

    void updatebyid(String id);
}
