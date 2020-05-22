<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/3
  Time: 20:58
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
    <title>世界最丑狗狗大赛</title>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }

    </style>
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
<div style="margin-top: 70px;margin-bottom: 60px">
<h5 style="font-family: SimSun;line-height: 2em;font-size: 30px;font-weight: bold;text-align:center;">世界最丑狗狗大赛:参赛竟然还要有“自然丑”证明!</h5>
<div id="demo" class="carousel slide" data-ride="carousel" style="width: 55%;height:400px;margin-left: 280px;margin-top: 40px">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"class="active"></li>
        <li data-target="#demo" data-slide-to="2"class="active"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/ugly/1.jpg"  width="1000px" height="400px">
        </div>
        <div class="carousel-item ">
            <img src="img/ugly/2.jpg" width="1000px" height="400px" >
        </div>
        <div class="carousel-item ">
            <img src="img/ugly/3.jpg" width="1000px" height="400px">
        </div>
        <div class="carousel-item ">
            <img src="img/ugly/4.jpg" width="1000px" height="400px">
        </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>

</div>

<div style="font-size: 20px;font-family: SimSun;line-height: 1.5em;width:800px;margin-left:230px;margin-top:10px;">
    &nbsp&nbsp比赛时间：美国6月23日，当地时间6月21日<br>
    &nbsp&nbsp美国佩塔卢马，世界最丑狗大赛在当地举行。“世界最丑狗大赛”，每年6月的第四个星期在美国加利福尼亚州举行。<br>
    &nbsp&nbsp到2019年为止，已经举行了31届，参赛的狗狗多是主人从救助站领养回来的，评委会按照狗狗的性格、外貌和观众投票综合评分，但最重要的是，狗狗必须是“天然丑”。而且参赛者必须有兽医开具的“自然丑”证明，没有证明是不允许参赛的。
    2019年的冠军叫“流氓小子”，它为自己和主人赢得了奖杯和1500美金。该赛事旨在鼓励大家领养流浪狗。<br>
    &nbsp&nbsp“世界最丑犬大赛”相当于是一种幽默的调剂，为世界增添正能量，这些不嫌弃自家狗狗样子丑陋的主人们，使这个比赛充满了温馨的气氛。
</div>
</div>

</body>
</html>
