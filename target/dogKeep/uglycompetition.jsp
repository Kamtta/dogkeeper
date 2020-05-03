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
            <img src="img/ugly/1.jpg">
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
<h5 style="font-family: SimSun;line-height: 2em;font-size: 30px;font-weight: bold;">世界最丑狗狗大赛</h5>
<div style="font-size: 20px;font-family: SimSun;line-height: 1.5em">
    &nbsp&nbsp6月23日报道，当地时间6月21日，美国佩塔卢马，世界最丑狗大赛在当地举行。“世界最丑狗大赛”，每年6月的第四个星期在美国加利福尼亚州举行。
    到今年为止，已经举行了31届，参赛的狗狗多是主人从救助站领养回来的，评委会按照狗狗的性格、外貌和观众投票综合评分，但最重要的是，狗狗必须是“天然丑”。今年的冠军叫“流氓小子”，它为自己和主人赢得了奖杯和1500美金。该赛事旨在鼓励大家领养流浪狗。
</div>
</body>
</html>
