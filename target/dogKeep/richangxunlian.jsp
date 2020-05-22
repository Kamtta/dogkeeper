<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/13
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>日常训练</title>
    <link type="text/css" rel="stylesheet" href="css/gougoujibingjiuzhi.css" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/stylenew.css">
    <script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="firstpage.jsp">DOGKEEP</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="gougourichnaghuli.jsp">狗狗日常护理</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="gougoujibingjiuzhi.jsp">狗狗疾病救治</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="gougourichangxunlian.jsp">狗狗日常训练</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="gougouquwen.jsp">狗狗趣闻</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="hudongshequ.jsp">互动社区</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row bg-light" style="margin-top: 55px;height: 100%">
    <div class="col-2"></div>
    <div class="col-8" style="border: 1px gray solid;height: auto;border-bottom: none;border-top: none" id="data-content">

    </div>
    <div class="col-2"></div>
    <input type="hidden" name="current">
    <input type="hidden" name="pageNum">
</div>

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
            url:"selectall.content",
            data:{"n":n,"id":<%=request.getParameter("id")%>},
            dataType:"json",
            success:function (result) {
                var str = "";
                $(result.content).each(function () {
                    str += "<h1 style=\"text-align:left;display: block;font-size: 2.5em;margin-block-start: 0.67em;font-weight: bold;margin-bottom: 30px;margin-inline-start: 0px;margin-inline-end: 0px;margin-left: 80px\">"+this.title+"</h1>\n" +
                        "        <img src='onload/"+this.photopath+"' height=\"350px\" width=\"650px\" style=\"margin-left: 80px\">\n" +
                        "        <div style=\"margin-left: 80px;width: 650px;font-size: 18px;margin-top: 15px;font-family: SimSun\">\n" +
                        this.content +
                        "        </div>"
                })
                str += "<p style=\"text-align: right;bottom: 50px;right: 100px\">\n" +
                    "    <button type=\"button\" class=\"btn btn-success\" onclick=\"pre()\">上一页</button>&nbsp&nbsp&nbsp&nbsp\n" +
                    "    <button type=\"button\" class=\"btn btn-success\" onclick=\"next()\">下一页</button>\n" +
                    "</p>"
                $("#data-content").html(str);
                $("input[name='current']").val(result.currentPage)
                $("input[name='pageNum']").val(result.pageNum)
            }
        })
    }
</script>
</body>
</html>
