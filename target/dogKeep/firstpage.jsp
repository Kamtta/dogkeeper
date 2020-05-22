<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <title>狗狗护理</title>
<%--  <link type="text/css" rel="stylesheet" href="css/shouye.css" />--%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen" />
  <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="css/stylenew.css">
  <script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
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
<br/><br/>
<div class="row" style="margin-top: 5px">
    <div class="col-3">
        <div class="container" style="padding: 15px;margin-top: 20px;height: 350px;border:1px solid #d9d9d9;margin-left: 15px;margin-right: 15px">
            <h3 style="text-align: center">狗狗分类</h3>
            <br/>
            <div class="list-group" style="size: 30px">
                <a href="duanmaoxiaoxingquan.jsp" class="list-group-item list-group-item-action">短毛小型犬</a>
                <a href="duanmaodaxingquan.jsp" class="list-group-item list-group-item-action">短毛大型犬</a>
                <a href="changmaoxiaoxingquan.jsp" class="list-group-item list-group-item-action">长毛小型犬</a>
                <a href="changmaodaxingquan.jsp" class="list-group-item list-group-item-action">长毛大型犬</a>
            </div>
        </div>
    </div>
    <div class="col-6" style="height: 350px">

        <div id="demo" class="carousel slide" data-ride="carousel" style="margin-top: 20px">

            <!-- 指示符 -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- 轮播图片 -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/dog/狗狗21.jpg">
                </div>
                <div class="carousel-item">
                    <img src="img/dog/狗狗5.jpg">
                </div>
                <div class="carousel-item">
                    <img src="img/dog/狗狗20.jpg">
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

    </div>
    <div class="col-3">
        <div class="inews" style="margin-top: 20px;margin-right: 15px;height: 350px">
            <div class="news_t">
                <span class="fr"><a href="newsmore.jsp">更多</a></span>新闻资讯
            </div>
            <ul>
                <li><span><a href="feiqiu.jsp">[ 飞球比赛] </a></span>看看哪家狗狗更厉害</li>
                <li><span><a href="modelcompetition.jsp">[ 模特大赛 ]</a></span>各种狗狗的争奇斗艳</li>
                <li><span><a href="uglycompetition.jsp">[ 比丑大赛 ]</a></span>"天然丑”的狗狗</li>

            </ul>
            <div class="news_t">
                <span class="fr"><a href="hudongshequ.jsp">更多 </a></span>互动社区
            </div>
            <ul>
                <li>留下你的问题</li>
                <li>带走大家的建议</li>
            </ul>
        </div>
    </div></div>
   <div class="i_t mar_10">

    </div>
    <div style="display: flex;justify-content: space-around;">
        <a href="gougoujibingjiuzhi.jsp"><div style="border:1px solid;box-shadow: 2px 4px 4px;height: 360px;width: 300px;float: left;margin-top: 30px;text-align: center;font-size: 30px;"><img src="img/dog/狗狗疾病1.jpg" style="border-radius: 50%;box-shadow: 2px 4px 4px;height: 300px;width: 300px;margin-bottom: 10px" title="狗狗疾病救治"/>狗狗疾病救治</div></a>
        <a href="gougourichangxunlian.jsp"><div style="border:1px solid;box-shadow: 2px 4px 4px;height: 360px;width: 300px;float: left;margin-top: 30px;text-align: center;font-size: 30px;"><img src="img/dog/训练7.jpg" style="border-radius: 50%;box-shadow: 2px 4px 4px;height: 300px;width: 300px;margin-bottom: 10px" title="狗狗日常训练"/>狗狗日常训练</div></a>
        <a href="gougouquwen.jsp"><div style="border:1px solid;box-shadow: 2px 4px 4px;height: 360px;width: 300px;float: left;margin-top: 30px;text-align: center;font-size: 30px;"><img src="img/dog/训练8.jpg" style="border-radius: 50%;box-shadow: 2px 4px 4px;height: 300px;width: 300px;margin-bottom: 10px" title="狗狗趣闻"/>狗狗趣闻</div></a>
    </div>


    <div class="i_t mar_10">
    </div>
	<p style="height: 58px;line-height: 26px; padding: 16px 0 0;text-align: center"><a href="http://www.12377.cn/" target="_blank">中国互联网举报中心</a> 举报邮箱：7-8-382168@qq.com 违法和不良信息举报电话：12377<br>Copyrights  2020 狗狗护理  All rights reserved.</p>

</body>
</html>