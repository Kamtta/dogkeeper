package com.tjcu.daoimpl;

import com.tjcu.bean.DetailContent;
import com.tjcu.dao.DetailContentDao;
import com.tjcu.utils.ResultObject;
import com.tjcu.utils.UpdateQuery;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DetailContentDaoImpl implements DetailContentDao {
    @Override
    public void add(List<DetailContent> detailContentList) {
        String insertSql = "insert into DETAIL_CONTENT (title,update_id,type_detail_id,content,video_url,photopath) values (?,?,?,?,?,?)";
        for(DetailContent detailContent:detailContentList){
            UpdateQuery.update(insertSql,detailContent.getTitle(),detailContent.getUpdateId(),detailContent.getTypeDetailId(),detailContent.getContent(),detailContent.getVideoUrl(),detailContent.getPhotopath());
        }
    }

    @Override
    public List<DetailContent> selectByTypeId(String id) {
        String sql = "select * from DETAIL_CONTENT where type_detail_id = ? and del_flag = 0";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                DetailContent detailContent = new DetailContent();
                detailContent.setTypeDetailId(resultSet.getInt("type_detail_id"));
                detailContent.setVideoUrl(resultSet.getString("video_url"));
                detailContent.setUpdateId(resultSet.getString("update_id"));
                detailContent.setContent(resultSet.getString("content"));
                detailContent.setTitle(resultSet.getString("title"));
                return detailContent;
            }
        },id);
        List<DetailContent> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((DetailContent)objects.get(j));
        }
        return result;
    }

    @Override
    public List<DetailContent> selectByUpdateId(String id, String typeid) {
        String sql = "select * from DETAIL_CONTENT where type_detail_id = ? and update_id = ? and del_flag = 0";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                DetailContent detailContent = new DetailContent();
                detailContent.setTypeDetailId(resultSet.getInt("type_detail_id"));
                detailContent.setVideoUrl(resultSet.getString("video_url"));
                detailContent.setUpdateId(resultSet.getString("update_id"));
                detailContent.setContent(resultSet.getString("content"));
                detailContent.setTitle(resultSet.getString("title"));
                return detailContent;
            }
        },id,typeid);
        List<DetailContent> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((DetailContent)objects.get(j));
        }
        return result;
    }

    @Override
    public Integer sumCount(String id) {
        String sumSql = "select count(*) from DETAIL_CONTENT where TYPE_DETAIL_ID = ? and del_flag = 0";
        List<Object> objects = UpdateQuery.query(sumSql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        },id);
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findContent(String id,int i, Integer pageCount) {
        String sql = "select * from DETAIL_CONTENT where TYPE_DETAIL_ID = ? and del_flag = 0 limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                DetailContent detailContent = new DetailContent();
                detailContent.setTypeDetailId(resultSet.getInt("type_detail_id"));
                detailContent.setVideoUrl(resultSet.getString("video_url"));
                detailContent.setUpdateId(resultSet.getString("update_id"));
                detailContent.setContent(resultSet.getString("content"));
                detailContent.setTitle(resultSet.getString("title"));
                detailContent.setPhotopath(resultSet.getString("photopath"));
                return detailContent;
            }
        },id,i,pageCount);
        List<DetailContent> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((DetailContent)objects.get(j));
        }
        return result;
    }
}
