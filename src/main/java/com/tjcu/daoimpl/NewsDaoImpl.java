package com.tjcu.daoimpl;

import com.tjcu.bean.News;
import com.tjcu.dao.NewsDao;
import com.tjcu.utils.ResultObject;
import com.tjcu.utils.UpdateQuery;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDaoImpl implements NewsDao {

    @Override
    public Integer sumCount() {
        String sumSql = "select count(*) from NEWS where del_flag = 0";
        List<Object> objects = UpdateQuery.query(sumSql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        });
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findContent(int i, Integer pageCount) {
        String sql = "select * from NEWS where del_flag = 0 limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                News news = new News();
                news.setId(resultSet.getInt("id"));
                news.setContent(resultSet.getString("content"));
                news.setTitle(resultSet.getString("title"));
                news.setPhotopath(resultSet.getString("photopath"));
                return news;
            }
        },i,pageCount);
        List<News> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((News)objects.get(j));
        }
        return result;
    }

    @Override
    public void insertVo(News news) {
        String insertSql = "insert into NEWS(title,content,photopath) values(?,?,?)";
        UpdateQuery.update(insertSql,news.getTitle(),news.getContent(),news.getPhotopath());
    }

    @Override
    public void delete(String id) {
        String deleteSql = "update NEWS set del_flag = 1 where id = ?";
        UpdateQuery.update(deleteSql,id);
    }

    @Override
    public News selectbyid(String id) {
        String selectSql = "select * from NEWS where id = ? and del_flag = 0";
        List<Object> objects = UpdateQuery.query(selectSql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                News news = new News();
                news.setId(resultSet.getInt("id"));
                news.setContent(resultSet.getString("content"));
                news.setTitle(resultSet.getString("title"));
                news.setPhotopath(resultSet.getString("photopath"));
                return news;
            }
        },id);
        List<News> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((News)objects.get(j));
        }
        return result.get(0);
    }

    @Override
    public void updatebyid(String id, News news) {
        String updateSql = "update NEWS set content = ?,title = ?,photopath = ? where id = ? and del_flag = 0";
        UpdateQuery.update(updateSql,news.getContent(),news.getTitle(),news.getPhotopath(),news.getId());
    }


}
