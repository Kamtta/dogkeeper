package com.tjcu.daoimpl;

import com.tjcu.bean.TypeDetail;
import com.tjcu.dao.TypeDetailDao;
import com.tjcu.utils.ResultObject;
import com.tjcu.utils.UpdateQuery;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeDetailDaoImpl implements TypeDetailDao {
    @Override
    public void insertVo(TypeDetail vo) {
        String insertSql = "insert into TYPE_DETAIL(type_title,content_title,photopath,type_id) values(?,?,?,?)";
        UpdateQuery.update(insertSql,vo.getTypeTitle(),vo.getContentTitle(),vo.getPhotopath(),vo.getTypeId());
    }

    @Override
    public Integer sumCount(int typeid) {
        String sumSql = "select count(*) from TYPE_DETAIL where TYPE_ID = ? and del_flag = 0";
        List<Object> objects = UpdateQuery.query(sumSql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        },typeid);
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findContent(int i, int i1, Integer pageCount) {
        String sql = "select * from TYPE_DETAIL where type_id = ? and del_flag = 0 limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                TypeDetail typeDetail = new TypeDetail();
                typeDetail.setTypeTitle(resultSet.getString("type_title"));
                typeDetail.setContentTitle(resultSet.getString("content_title"));
                typeDetail.setPhotopath(resultSet.getString("photopath"));
                typeDetail.setTypeId(resultSet.getInt("type_id"));
                typeDetail.setId(resultSet.getInt("id"));
                return typeDetail;
            }
        },i,i1,pageCount);
        List<TypeDetail> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((TypeDetail)objects.get(j));
        }
        return result;
    }

    @Override
    public void delete(String id) {
        String deleteSql = "update TYPE_DETAIL set del_flag = 1 where id = ?";
        UpdateQuery.update(deleteSql,id);
    }
}
