package com.tjcu.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tjcu.bean.News;
import com.tjcu.bean.Page;
import com.tjcu.dao.NewsDao;
import com.tjcu.daoimpl.NewsDaoImpl;
import com.tjcu.utils.DispatcherServiceUtils;
import com.tjcu.utils.ImgUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("*.news")
@MultipartConfig
public class NewsServlet extends HttpServlet {
    private static NewsDao newsDao = new NewsDaoImpl();
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

    public void select(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String n = req.getParameter("n");
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(newsDao.sumCount());
        page.setCurrentPage(pagen);
        page.setContent(newsDao.findContent((pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }


    public void add(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        //        获取servlet服务器的路径
        String servletPath = req.getServletContext().getRealPath("/")+"onload\\";
//        获取图片对象
        Part part = req.getPart("photopath");
        String path = ImgUtil.imgControl(part,servletPath);
        News news = new News();
        news.setPhotopath(path);
        news.setTitle(req.getParameter("title"));
        news.setContent(req.getParameter("content"));
        newsDao.insertVo(news);
    }

    public void delete(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String id = req.getParameter("id");
        newsDao.delete(id);
    }

    public void selectbyid(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String id = req.getParameter("id");
        News news =  newsDao.selectbyid(id);
        //        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(news);
        resp.getWriter().write(json);
    }

    public void update(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String id = req.getParameter("id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        //        获取servlet服务器的路径
        String servletPath = req.getServletContext().getRealPath("/")+"onload\\";
//        获取图片对象
        Part part = req.getPart("photopath");
        String path = ImgUtil.imgControl(part,servletPath);
        News news =  newsDao.selectbyid(id);
        if(path != null && !"".equals(path)){
            news.setPhotopath(path);
        }
        news.setTitle(title);
        news.setContent(content);
        newsDao.updatebyid(id,news);
    }

}
