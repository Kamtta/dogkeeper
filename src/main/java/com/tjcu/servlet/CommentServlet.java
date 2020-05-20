package com.tjcu.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tjcu.bean.Page;
import com.tjcu.bean.User;
import com.tjcu.bean.UserComment;
import com.tjcu.dao.UserCommentDao;
import com.tjcu.daoimpl.UserCommentDaoImpl;
import com.tjcu.utils.DispatcherServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("*.comment")
public class CommentServlet extends HttpServlet {
//    创建dao层对象
    UserCommentDao userCommentDao = new UserCommentDaoImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        DispatcherServiceUtils.serviceDispat(uri,this,req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    /**
     * 插入评论
     * @param req
     * @param resp
     */
    public void insertComment(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//        获取当前用户
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        Integer uid = user.getUid();
        String uname = user.getUname();
//        获取评论
        String content = req.getParameter("content");
//        获取关联的问题
        String relatedcomment = req.getParameter("relatedcomment");
        UserComment userComment = new UserComment();
//        设置评论类别，0为提问，1为回答
        userComment.setCommentrole(1);
//        设置提问用户
        userComment.setUid(uid);
//        设置问题内容
        userComment.setContent(content);
        userComment.setUname(uname);
        userComment.setRelatedcomment(Integer.parseInt(relatedcomment));
        userCommentDao.insertComment(userComment);
        String relatedcontent = userCommentDao.findContentById(userComment.getRelatedcomment());
        resp.sendRedirect("commentdetail.jsp?commentid="+relatedcomment);
    }

    /**
     * 插入问题
     * @param req
     * @param resp
     */
    public void insertQuestion(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//        获取当前用户
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        Integer uid = user.getUid();
        String uname = user.getUname();
//        获取问题
        String content = req.getParameter("content");
        UserComment userComment = new UserComment();
//        设置评论类别，0为提问，1为回答
        userComment.setCommentrole(0);
//        设置提问用户
        userComment.setUid(uid);
//        设置问题内容
        userComment.setContent(content);
        userComment.setUname(uname);
        userCommentDao.insertComment(userComment);
        resp.sendRedirect("hudongshequ.jsp");
    }

    public void show(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String n = req.getParameter("n");
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(userCommentDao.sumCount(0));
        page.setCurrentPage(pagen);
        page.setContent(userCommentDao.findContent(0,(pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }

    public void answer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String n = req.getParameter("n");
        String commentid = req.getParameter("commentid");
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(userCommentDao.sumAnswer(1,Integer.valueOf(commentid)));
        page.setCurrentPage(pagen);
        page.setContent(userCommentDao.findAnswerContent(1,Integer.valueOf(commentid),(pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }

    public void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String commentid = req.getParameter("commentid");
        userCommentDao.delete(Integer.valueOf(commentid));
    }

    public void commentall(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String n = req.getParameter("n");
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(userCommentDao.sumCount(1));
        page.setCurrentPage(pagen);
        page.setContent(userCommentDao.findAnswerContentAll(1,(pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }
}
