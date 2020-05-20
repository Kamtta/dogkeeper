<%--
  Created by IntelliJ IDEA.
  User: cjr
  Date: 2018/10/31 0031
  Time: 15:03
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
    <script type="text/javascript" src="/js/popper.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>

    <title>用户管理</title>
</head>
<body>

    <table class="table back">
        <thead>
        <tr style="font-family: 方正舒体;font-size: 25px;">
            <th>账号</th>
            <th>密码</th>
            <th>邮箱</th>
            <th>电话</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="data-content">

        </tbody>
    </table>
    <input type="hidden" name="current">
    <input type="hidden" name="pageNum">
    <p style="text-align: right;position: fixed;bottom: 50px;right: 0px">
        <button type="button" class="btn btn-success" onclick="pre()">上一页</button>&nbsp&nbsp&nbsp&nbsp
        <button type="button" class="btn btn-success" onclick="next()">下一页</button>
    </p>
    <script>
        $(function () {
            fun(1)
        })
        function pre() {
            var n = $("input[name='current']").val();
            if(n == 1){
                fun(1)
            }else{
                fun(n-1)
            }
        }
        function next() {
            var n = $("input[name='current']").val();
            var pagenum = $("input[name='pageNum']").val();
            if(n == pagenum){
                fun(n);
            }else{
                fun(parseInt(n)+1)
            }
        }
        function fun(n){
            $.ajax({
                url:"vip.user",
                data:{"n":n},
                dataType:"json",
                success:function (result) {
                    var str = "";
                    $(result.content).each(function () {
                        str += "<tr>\n" +
                            "            <td>"+this.uname+"</td>\n" +
                            "            <td>"+this.upwd+"</td>\n" +
                            "            <td>"+this.email+"</td>\n" +
                            "            <td>"+this.phone+"</td>\n" +
                            "            <td>\n" +
                            "                <div class=\"dropdown\">\n" +
                            "                    <button type=\"button\" class=\"btn btn-success dropdown-toggle\" data-toggle=\"dropdown\">\n" +
                            "                        <i class=\"fa fa-cogs\"></i>\n" +
                            "                    </button>\n" +
                            "                    <div class=\"dropdown-menu\">\n" +
                            "                        <a class=\"dropdown-item\" href=\""+"delete.user?uname="+this.uname+"\" style='color: green'>封号</a>\n" +
                            "                        <a class=\"dropdown-item\" href=\""+"update.jsp?uname="+this.uname+"\" style='color: green'>修改</a>\n" +
                            "                    </div>\n" +
                            "                </div>\n" +
                            "            </td>\n" +
                            "        </tr>"
                    })
                    $("#data-content").html(str);
                    $("input[name='current']").val(result.currentPage)
                    $("input[name='pageNum']").val(result.pageNum)
                }
            })
        }
    </script>
</body>
</html>
