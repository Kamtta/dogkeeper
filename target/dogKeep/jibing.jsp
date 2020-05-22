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

</p>
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