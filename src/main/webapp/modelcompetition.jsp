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
    <title>宠物模特大赛</title>
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
            <img src="img/model/1.jpg">
        </div>
        <div class="carousel-item">
            <img src="img/model/2.jpg">
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
<h5 style="font-family: SimSun;line-height: 2em;font-size: 30px;font-weight: bold;">各种狗狗争奇斗艳：2020广州第一届宠物模特大赛</h5>
<div style="font-size: 20px;font-family: SimSun;line-height: 1.5em">
    &nbsp&nbsp从现场的毛孩子可以看到，参与这次活动的狗狗品种是非常丰富的，比如有常见的贵宾犬、雪纳瑞、金毛犬，还有平时相对较少看到的古代牧羊犬。<br>
    &nbsp&nbsp训犬师先是故意演示了错误的狗狗社交引导方式，然后用正确的方式再演示了一遍，让两只见面就要打架的狗狗，关系得到了飞速的缓和。<br>
    &nbsp&nbsp统一宣讲过后，接下来就是家长们分组实践，各自带着自己的狗狗在场内练习随行，过程中现场训练师也非常热情对家长和狗狗们进行针对性的指导帮助。
</div>
</body>
</html>
