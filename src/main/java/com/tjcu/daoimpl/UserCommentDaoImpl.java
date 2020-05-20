package com.tjcu.daoimpl;

import com.tjcu.bean.UserComment;
import com.tjcu.dao.UserCommentDao;
import com.tjcu.utils.ResultObject;
import com.tjcu.utils.UpdateQuery;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserCommentDaoImpl implements UserCommentDao {

    @Override
    public void insertComment(UserComment userComment) {
        String sql = "insert into usercomment(uid,commentrole,content,relatedcomment,uname) values(?,?,?,?,?)";
        UpdateQuery.update(sql, userComment.getUid(),userComment.getCommentrole(),userComment.getContent(),userComment.getRelatedcomment(),userComment.getUname());
    }

    @Override
    public int sumCount(int commentrole) {
        String sql = "select count(*) from usercomment where commentrole = ?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        },commentrole);
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findContent(int commentrole, int offset, int num) {
        String sql = "select * from usercomment where commentrole = ? limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                UserComment userComment = new UserComment();
                userComment.setUid(resultSet.getInt("uid"));
                userComment.setCommentid(resultSet.getInt("commentid"));
                userComment.setContent(resultSet.getString("content"));
                userComment.setUname(resultSet.getString("uname"));
                return userComment;
            }
        },commentrole,offset,num);
        List<UserComment> result = new ArrayList<>();
        for (int i = 0;i < objects.size();i++) {
            result.add((UserComment)objects.get(i));
        }
        return result;
    }

    @Override
    public int sumAnswer(int commentrole, int relatedcomment) {
        String sql = "select count(*) from usercomment where commentrole = ? and relatedcomment = ?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getInt(1);
            }
        },commentrole,relatedcomment);
        return Integer.valueOf((Integer)objects.get(0));
    }

    @Override
    public List findAnswerContent(int commentrole, int relatedcomment, int offset, int num) {
        String sql = "select * from usercomment where commentrole = ? and relatedcomment = ? limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                UserComment userComment = new UserComment();
                userComment.setUid(resultSet.getInt("uid"));
                userComment.setCommentid(resultSet.getInt("commentid"));
                userComment.setContent(resultSet.getString("content"));
                userComment.setUname(resultSet.getString("uname"));
                return userComment;
            }
        },commentrole,relatedcomment,offset,num);
        List<UserComment> result = new ArrayList<>();
        for (int i = 0;i < objects.size();i++) {
            result.add((UserComment)objects.get(i));
        }
        return result;
    }

    @Override
    public String findContentById(int relatedcomment) {
        String sql = "select content from usercomment where commentid = ?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                return resultSet.getString("content");
            }
        },relatedcomment);
        return String.valueOf(objects.get(0));
    }

    @Override
    public List findAnswerContentAll(int i, int offset, int num) {
        String sql = "select * from usercomment where commentrole = ? limit ?,?";
        List<Object> objects = UpdateQuery.query(sql, new ResultObject() {
            @Override
            public Object getByResultSet(ResultSet resultSet) throws SQLException {
                UserComment userComment = new UserComment();
                userComment.setUid(resultSet.getInt("uid"));
                userComment.setCommentid(resultSet.getInt("commentid"));
                userComment.setContent(resultSet.getString("content"));
                userComment.setUname(resultSet.getString("uname"));
                return userComment;
            }
        },i,offset,num);
        List<UserComment> result = new ArrayList<>();
        for (int j = 0;j < objects.size();j++) {
            result.add((UserComment)objects.get(j));
        }
        return result;
    }

    @Override
    public int delete(int commentid) {
        String deleteSql = "delete from usercomment where commentid = ?";
        int i = UpdateQuery.update(deleteSql,commentid);
        return i;
    }


}
