package com.tjcu.servlet;

import com.tjcu.bean.DetailContent;
import com.tjcu.dao.DetailContentDao;
import com.tjcu.daoimpl.DetailContentDaoImpl;
import com.tjcu.utils.DispatcherServiceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("*.content")
@MultipartConfig
public class DetailContentServlet  extends HttpServlet {
    private static DetailContentDao detailContentDao = new DetailContentDaoImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        从*.user中获取相应的方法名，从而调用相关的方法
        String uri = req.getRequestURI();
        DispatcherServiceUtils.serviceDispat(uri,this,req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    public void add(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String id  = req.getParameter("id");
        String title  = req.getParameter("title");
        List<String> params = new ArrayList<>();
        String eyecontent = req.getParameter("eyecontent");
        String teethcontent = req.getParameter("teethcontent");
        String earcontent = req.getParameter("earcontent");
        String fingurecontent = req.getParameter("fingurecontent");
        String haircontent = req.getParameter("haircontent");
        String bathcontent = req.getParameter("bathcontent");
        params.add(eyecontent);
        params.add(teethcontent);
        params.add(earcontent);
        params.add(fingurecontent);
        params.add(haircontent);
        params.add(bathcontent);
        List<DetailContent> detailContentList = new ArrayList<>();
        for(int i = 0;i < 6;i++){
            DetailContent detailContent = new DetailContent();
            detailContent.setTitle(title);
            detailContent.setContent(params.get(i));
            detailContent.setTypeDetailId(Integer.valueOf(id));
            detailContent.setUpdateId(String.valueOf(i));
            detailContentList.add(detailContent);
        }
        detailContentDao.add(detailContentList);
    }

    public void dispatch(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String id = req.getParameter("id");
        resp.sendRedirect("dogcarecontentdetail.jsp?id="+id);
    }

    public void addsick(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String id  = req.getParameter("id");
        String title  = req.getParameter("title");
        List<String> params = new ArrayList<>();
        String mvurl = req.getParameter("mvurl");
        String content = req.getParameter("content");
        List<DetailContent> detailContentList = new ArrayList<>();
        DetailContent detailContent = new DetailContent();
        detailContent.setTitle(title);
        detailContent.setContent(content);
        detailContent.setTypeDetailId(Integer.valueOf(id));
        detailContent.setVideoUrl(mvurl);
        detailContentList.add(detailContent);
        detailContentDao.add(detailContentList);
    }

    public void addexercise(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String id  = req.getParameter("id");
        String title  = req.getParameter("title");
        List<String> params = new ArrayList<>();
        String content = req.getParameter("content");
        List<DetailContent> detailContentList = new ArrayList<>();
        DetailContent detailContent = new DetailContent();
        detailContent.setTitle(title);
        detailContent.setContent(content);
        detailContent.setTypeDetailId(Integer.valueOf(id));
        detailContentList.add(detailContent);
        detailContentDao.add(detailContentList);
    }

}
