<%--
  Created by IntelliJ IDEA.
  User: cjr
  Date: 2018/11/2 0002
  Time: 08:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <title>更新</title>
</head>
<body>
    <form action="update.news" method="post" enctype="multipart/form-data" style="margin-top: 30px;margin-left: 30px;width: 500px">
        <input type="hidden" name="id" id="id">
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
        <button type="submit" class="btn btn-success">提交</button>
    </form>
    <script>
        $(function() {
            var id = '<%= request.getParameter("id")%>'
                console.log(id)
            fun(id)
        })
        function fun(id) {
            $.ajax({
                url:"selectbyid.news",
                data:{"id":id},
                dataType:"json",
                success:function (result) {
                    $("input[id='id']").val(result.id)
                    $("input[id='title']").val(result.title)
                    $("input[id='content']").val(result.content)
                }
            })
        }
    </script>
</body>
</html>
