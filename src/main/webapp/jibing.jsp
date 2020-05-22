<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <meta charset="utf-8">
  <title>腹泻</title>
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

<p style="margin-top: 100px;margin-left: 100px;width: 170px;height: 130px;font-size: 30px;text-align: center;" >
  <img src="onload/<%=request.getParameter("photopath")%>" align="left" style="border-radius: 50%;box-shadow: 2px 4px 4px;width: 170px;height: 130px;margin-bottom: 10px" />
  <%=request.getParameter("title")%>
</p><br><br><br>

<span id="str-content">

</span>
<p style="width: 800px;margin-left: 200px;font-size: 15px;margin-bottom: 50px;margin-top: 30px" id="str1-content">
  &nbsp&nbsp原因：
  1：感冒。
  2：吃的过饱。
  3：食物中毒。
  4：吃人吃的饭菜。
  5：不干净的饮水。
  6：细小病毒。
  7：狗瘟。https://player.youku.com/embed/XMTgyOTg2OTI5Ng==
  8：肠炎。<br>
  &nbsp&nbsp基本处理原则：一般的尤其食物．感冒．着凉．轻度肠炎等引起的拉肚子呕吐．不必过于紧张．可以喂狗狗吃土霉素或者庆大霉素．但是量一定要掌握好．狗的用量不可跟人比．差不多4分之1片就可以了．<br>
  &nbsp&nbsp注意：狗爸狗妈们主要就是做到，狗狗的饮食要营养均衡，不乱喂东西．饮用干净的水．不让狗狗睡地板．洗完澡及时吹干．当狗狗有拉肚子或呕吐的情况时．首先要回想一下有没有什么异常情况发生．如果不是频繁的拉肚子呕吐．
  而狗狗的精神状态和进食情况都还好．那么就不用那么草木皆兵，不过要注意观察．如果发现有跟狗瘟和细小的病状类似．应该及时去医院化验．早发现早治疗。<br></p>
<script>
  $(function (){
    $.ajax({
      url:"select.content",
      data:{"id":<%=request.getParameter("id")%>},
      dataType:"json",
      success:function (result) {
        var str = "";
        var str1 = "";
        $(result).each(function () {
          str += "<iframe height=400 width=800 src='"+this.videoUrl+"' frameborder=0 allowfullscreen style=\"margin-left: 200px\"></iframe>"
          str1 += this.content;
        })
        $("#str-content").html(str);
        $("#str1-content").html(str1);
      }
    })
  })
</script>
</body>

</html>