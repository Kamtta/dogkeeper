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
    <title>飞球表演</title>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
        .nav{
            width:1350px;
            height:50px;
            background-color:deepskyblue;

        }
        .nav ul{width:100%;
            list-style:none;
            padding:0;
            margin:0;
            text-align: center;
        }
        .nav ul li{
            float:left;

        }
        .nav ul li a{
            display:inline-block;width:150px;height:50px;
            text-align:center;line-height:50px;color:#ffffff;text-decoration:none;
        }
        .nav ul li a:hover{background-color:slateblue;
        }
    </style>
</head>
<body>
<div class="nav">
    <ul style="text-align: center;">
        <li><a href="firstpage.jsp">首页</a></li>
        <li><a href="gougourichangxunlian.jsp">狗狗日常训练</a></li>
        <li><a href="gougourichnaghuli.jsp">狗狗日常护理</a></li>
        <li><a href="gougoujibingjiuzhi.jsp">狗狗疾病救治</a></li>
        <li><a href="gougouquwen.jsp">狗狗趣闻</a></li>
        <li><a href="gougouyongpinjieshao.jsp">狗狗用品介绍</a></li>
        <li><a href="gougoumengzhao.jsp">狗狗萌照</a></li>
        <li><a href="xinshouxuzhi.jsp">新手需知</a></li>
        <li><a href="hudongshequ.jsp">互动社区</a></li>
    </ul>
</div>

<div id="demo" class="carousel slide" data-ride="carousel" style="width: 55%;height: 350px;margin-left: 280px;margin-top: 20px">

    <!-- 指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/feiqiu/1.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/feiqiu/2.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/feiqiu/3.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/feiqiu/4.jpg">
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
<h5 style="font-family: SimSun;line-height: 2em;font-size: 30px;font-weight: bold;">狗狗的团队竞技比赛，飞球运动你听说过吗？看看哪家的狗狗更厉害</h5>
<div style="font-size: 20px;font-family: SimSun;line-height: 1.5em">
    &nbsp&nbsp飞球运动是一项犬类竞技团体运动，它最初作为一项“平民”运动在美国流行，并于1990年在英国克鲁夫茨的正式比赛中首次亮相。飞球是一种有趣的和充满活力的运动，总是充满活力的狗狗一定喜欢。
    每队分别有四只狗狗参加这项比赛，每队使用一条直线赛道，狗狗们以接力的形式，一个接着一个出发。狗狗需要在赛道跨过四个栏杆，最终触发开关，把弹出的网球带回主人的身边，然后下一只狗狗就可以出发了。
    当最后一只狗狗穿过终点线，包括狗狗身体的任何部分，就算完成比赛了，最快达成的队伍获胜。每只狗狗都必须越过终点线，下一只狗狗才能出出发。如果流程出现了失误，狗狗就必须在终点重新开跑（例如丢球、错过跨栏或出发太早、在比赛过程中主人越过规定的线、狗狗得到任何形式的帮助）。
    比赛通常采取三局两胜，但有时候也会有五局三胜的赛制。每个团队由四只狗狗及其主人，和一些后备人员组成。当然，在比赛期间，每个团队通常都会得到主办方派遣的工作人员的帮助。
</div>
</body>
</html>
