package com.tjcu.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tjcu.bean.Page;
import com.tjcu.bean.User;
import com.tjcu.dao.UserDao;
import com.tjcu.daoimpl.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

@WebServlet("*.user")
public class UserServlet extends HttpServlet {
    private static UserDao userDao = new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        从*.user中获取相应的方法名，从而调用相关的方法
        String uri = req.getRequestURI();
        String path = null;
        if(uri.lastIndexOf("/") > -1 && uri.indexOf(".") >-1){
            path = uri.substring(uri.lastIndexOf("/")+1,uri.indexOf("."));
        }
        try {
            Method method = this.getClass().getMethod(path, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    public void vip(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String n = req.getParameter("n");
        int pagen = -1;
        if(n == null){
            pagen = 1;
        }else {
            pagen = Integer.parseInt(n);
        }
        Page page = new Page();
        page.setCount(userDao.sumCount(1));
        page.setCurrentPage(pagen);
        page.setContent(userDao.findContent(1,(pagen-1)*page.getPageCount(),page.getPageCount()));
//        使用json进行传输数据
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(page);
        resp.getWriter().write(json);
    }
    public void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");
        int i = userDao.deleteAdmin(uname);
        if(i == 1){
            req.getRequestDispatcher("user.jsp").forward(req,resp);
        }
    }
    public void select(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");
        List<User> list = userDao.selectByUname(uname,1);
        User user = list.get(0);
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(user);
        resp.getWriter().write(json);
    }
    public void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ParseException {
        String uname = req.getParameter("uname");
        List<User> list = userDao.selectByUname(uname,1);
        User user = list.get(0);
        user.setUpwd(req.getParameter("upwd"));
        userDao.updateAdmin(user);
    }
    public void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ParseException {
        String uname = req.getParameter("uname");
        String upwd = req.getParameter("upwd");
        String usex = req.getParameter("usex");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        User user = new User();
        user.setUname(uname);
        user.setUpwd(upwd);
        user.setUsex(Integer.valueOf(usex));
        user.setCreate_time(new Date());
        user.setEmail(email);
        user.setPhone(phone);
//        0代表普通用户
        user.setRole(0);
        userDao.insertUser(user);
        resp.sendRedirect("index.jsp");
    }
    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("telephone");
        String password = req.getParameter("password");
        User user = userDao.selectByName(username);
        if(user == null){
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else {
            if(user.getUpwd().equals(password)){
                resp.sendRedirect("firstpage.jsp");
            }else{
                req.getRequestDispatcher("index.jsp").forward(req,resp);
            }
        }
    }
    public void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");
        List<User> list = userDao.selectByUname(uname,1);
        ObjectMapper objectMapper = new ObjectMapper();
        String json = objectMapper.writeValueAsString(list);
        resp.getWriter().write(json);
    }
}
