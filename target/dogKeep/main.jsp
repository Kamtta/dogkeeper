<%@ page import="java.util.Date" %>
<%@ page import="com.tjcu.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: cjr
  Date: 2018/10/30 0030
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" type="/image/x-icon" href="favicon.ico" media="screen" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/style.css">
    <script type="text/javascript" language="JavaScript" src="/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <title>管理主界面</title>
</head>
<body>
<div class="col-12" style="border-bottom: solid 1px darkgreen;">
    <h1 style="color: darkgreen;font-family: 方正舒体;font-size: 50px">WELCOME DOGKEEP</h1>
</div>
    <div class="page-content" style="margin: 0px">
        <div id="left" class="col-2" style="height: auto;">
            <div class="container" style="margin-top:60px">
                <div class="list-group">
                    <a href="user.jsp" class="list-group-item list-group-item-action" target="content">用户管理</a>
                    <a href="newsmanage.jsp" class="list-group-item list-group-item-action" target="content">新闻资讯管理</a>
                    <a href="hudongshequmanage.jsp" class="list-group-item list-group-item-action" target="content">互动社区管理</a>
                    <a href="dogcaremanage.jsp" class="list-group-item list-group-item-action" target="content">狗狗护理管理</a>
                    <a href="dogsickmanage.jsp" class="list-group-item list-group-item-action" target="content">狗狗疾病救治</a>
                    <a href="dogexercisemanage.jsp" class="list-group-item list-group-item-action" target="content">狗狗日常训练</a>
                    <a href="dogfunmanage.jsp" class="list-group-item list-group-item-action" target="content">狗狗趣闻管理</a>
                </div>

            </div>
        </div>
        <div class="col-10" style="width: 100%;padding: 0;">

            <div id="ifr-style" style="padding: 0px;margin: 0px;width: 100%">
                <iframe name="content" class="framestyle" src="user.jsp"></iframe>
            </div>

        </div>
    </div>
<div class="foot" >
    <p>@CopyRight; 张玉衫制作，公司：天津商业大学
        电话：15327627822</p>
</div>
</body>
</html>
