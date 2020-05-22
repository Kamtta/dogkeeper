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
    <title>模特大赛</title>
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
    <h5 style="font-family: SimSun;line-height: 2em;font-size: 30px;font-weight: bold;text-align:center;">各种狗狗争奇斗艳：2020广州第一届宠物模特大赛</h5>
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
                <img src="img/model/1.jpg"  width="1000px" height="400px">
            </div>
            <div class="carousel-item ">
                <img src="img/model/2.jpg" width="1000px" height="400px" >
            </div>
            <div class="carousel-item ">
                <img src="img/model/3.jpg" width="1000px" height="400px">
            </div>
            <div class="carousel-item ">
                <img src="img/model/4.jpg" width="1000px" height="400px">
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
        &nbsp&nbsp比赛时间：5月1日<br>
        &nbsp&nbsp从现场的毛孩子可以看到，参与这次活动的狗狗品种是非常丰富的，比如有常见的贵宾犬、雪纳瑞、金毛犬，还有平时相对较少看到的古代牧羊犬。<br>
        &nbsp&nbsp训犬师先是故意演示了错误的狗狗社交引导方式，然后用正确的方式再演示了一遍，让两只见面就要打架的狗狗，关系得到了飞速的缓和。<br>
        &nbsp&nbsp统一宣讲过后，接下来就是家长们分组实践，各自带着自己的狗狗在场内练习随行，过程中现场训练师也非常热情对家长和狗狗们进行针对性的指导帮助。<br>
        &nbsp&nbsp最后就是大家都非常期待的狗狗模特走秀，你肯定没想过狗狗也能走T台吧!
    </div>
</div>

</body>
</html>
