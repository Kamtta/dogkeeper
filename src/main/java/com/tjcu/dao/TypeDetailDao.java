package com.tjcu.dao;

import com.tjcu.bean.TypeDetail;

import java.util.List;

public interface TypeDetailDao {
    public void insertVo(TypeDetail vo);

    Integer sumCount(int i);

    List findContent(int i, int i1, Integer pageCount);

    void delete(String id);
}
