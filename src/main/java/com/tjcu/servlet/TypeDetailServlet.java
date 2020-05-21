package com.tjcu.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tjcu.bean.Page;
import com.tjcu.bean.TypeDetail;
import com.tjcu.dao.TypeDetailDao;
import com.tjcu.daoimpl.TypeDetailDaoImpl;
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

@WebServlet("*.type")
@MultipartConfig
public class TypeDetailServlet extends HttpServlet {
    private static TypeDetailDao typeDetailDao = new TypeDetailDaoImpl();
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
        //        获取servlet服务器的路径
        String servletPath = req.getServletContext().getRealPath("/")+"onload\\";
//        获取图片对象
        Part part = req.getPart("photopath");
        String path = ImgUtil.imgControl(part,servletPath);
        TypeDetail typeDetail = new TypeDetail();
        typeDetail.setPhotopath(path);
        typeDetail.setContentTitle(req.getParameter("contentTitle"));
        typeDetail.setTypeTitle(req.getParameter("typeTitle"));
        typeDetail.setTypeId(Integer.valueOf(req.getParameter("typeid")));
        typeDetailDao.insertVo(typeDetail);
    }

    public void select(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        String n = req.getParameter("n");
        int typerole = Integer.valueOf(req.getParameter("typerole"));
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(typeDetailDao.sumCount(typerole));
        page.setCurrentPage(pagen);
        page.setContent(typeDetailDao.findContent(typerole,(pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }

    public void delete(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        String id = req.getParameter("id");
        typeDetailDao.delete(id);
    }

}
