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
    <link rel="shortcut icon" type="/image/x-icon" href="../../favicon.ico" media="screen" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/style.css">
    <script type="text/javascript" language="JavaScript" src="/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <title>更新</title>
</head>
<body>
    <form action="update.user" method="post" style="margin-top: 30px;margin-left: 30px;width: 500px">
        <input type="hidden" name="uname" id="uname">
        <div class="form-group">
            <label for="upwd">密码:</label>
            <input type="password" class="form-control" id="upwd" name="upwd">
        </div>
        <div class="form-group">
            <label for="email">邮箱:</label>
            <input type="text" class="form-control" id="email" name="email">
        </div>
        <div class="form-group">
            <label for="phone">电话:</label>
            <input type="text" class="form-control" id="phone" name="phone">
        </div>
        <input type="hidden" id="usex" name="usex">
        <button type="submit" class="btn btn-success">提交</button>
    </form>
    <script>
        $(function() {
            var uname = '<%= request.getParameter("uname")%>'
                console.log(uname)
            fun(uname)
        })
        function fun(uname) {
            $.ajax({
                url:"select.user",
                data:{"uname":uname},
                dataType:"json",
                success:function (result) {
                    $("input[id='uname']").val(result.uname)
                    $("input[id='upwd']").val(result.upwd)
                    $("input[id='email']").val(result.email)
                    $("input[id='phone']").val(result.phone)
                    $("input[id='usex']").val(result.usex)
                }
            })
        }
    </script>
</body>
</html>
