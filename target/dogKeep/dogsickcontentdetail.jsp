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
    <title>狗狗护理添加</title>
</head>
<body>
<div style="display: flex">
    <div style="width: 600px;height: 850px;color: green;margin: 30px auto;padding: 10px;border: none;">
        <form action="addsick.content" method="get">
            <div class="form-group">
                <label for="title">类型标识:</label>
                <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="<%=request.getParameter("id")%>">
            </div>
            <div class="form-group">
                <label for="title">标题:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="mvurl">视频地址:</label>
                <input type="text" class="form-control" id="mvurl" name="mvurl">
            </div>
            <div class="form-group">
                <label for="content">介绍内容:</label>
                <input type="text" class="form-control" id="content" name="content">
            </div>
            <button type="submit" class="btn btn-success" style="width: 100px;">提交</button>
        </form>
    </div>
</div>
</body>
</html>
