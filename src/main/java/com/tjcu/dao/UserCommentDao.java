package com.tjcu.dao;

import com.tjcu.bean.UserComment;

import java.util.List;

public interface UserCommentDao {
    /**
     * 新增一条comment
     */
    void insertComment(UserComment userComment);

//    计算问题的总数
    int sumCount(int commentrole);
//    寻找相应的问题内容
    List findContent(int commentrole, int offset, int num);
//    计算评论的总数
    int sumAnswer(int commentrole,int relatedcomment);
//    寻找评论内容
    List findAnswerContent(int commentrole, int relatedcomment,int offset, int num);
//    根据问题主键查找问题内容
    String findContentById(int relatedcomment);
}
