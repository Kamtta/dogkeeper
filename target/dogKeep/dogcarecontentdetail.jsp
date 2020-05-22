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
        <form action="add.content" method="post">
            <div class="form-group">
                <label for="title">类型标识:</label>
                <input type="text" class="form-control" id="id" name="id" readonly="readonly" value="<%=request.getParameter("id")%>">
            </div>
            <div class="form-group">
                <label for="title">标题:</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="eyecontent">眼部护理:</label>
                <input type="text" class="form-control" id="eyecontent" name="eyecontent">
            </div>
            <div class="form-group">
                <label for="teethcontent">牙齿护理:</label>
                <input type="text" class="form-control" id="teethcontent" name="teethcontent">
            </div>
            <div class="form-group">
                <label for="earcontent">耳道护理:</label>
                <input type="text" class="form-control" id="earcontent" name="earcontent">
            </div>
            <div class="form-group">
                <label for="fingurecontent">指甲护理:</label>
                <input type="text" class="form-control" id="fingurecontent" name="fingurecontent">
            </div>
            <div class="form-group">
                <label for="haircontent">毛发护理:</label>
                <input type="text" class="form-control" id="haircontent" name="haircontent">
            </div>
            <div class="form-group">
                <label for="bathcontent">洗澡方法:</label>
                <input type="text" class="form-control" id="bathcontent" name="bathcontent">
            </div>
            <button type="submit" class="btn btn-success" style="width: 100px;">提交</button>
        </form>
    </div>
</div>
</body>
</html>
