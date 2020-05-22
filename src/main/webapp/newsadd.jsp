<%--
  Created by IntelliJ IDEA.
  User: cjr
  Date: 2018/11/2 0002
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <title>新闻咨询添加</title>
</head>
<body>
<div style="display: flex">
    <div style="width: 600px;height: 850px;color: green;margin: 30px auto;padding: 10px;border: none;">
        <form action="add.news" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">标题:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="content">简介:</label>
                <input type="text" class="form-control" id="content" name="content">
            </div>
            <div class="form-group">
                <label for="photopath">照片:</label>
                <input type="file" class="form-control" id="photopath" name="photopath" style="color: white;background-color: green">
            </div>
            <button type="submit" class="btn btn-success" style="width: 100px;">提交</button>
        </form>
    </div>
</div>
</body>
</html>
