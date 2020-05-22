<%@ page import="com.tjcu.commons.CareTypeEnum" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/12
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>短毛大型犬</title>
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
<div class="container">
    <table class="table table-hover">
        <thead class="thead-dark">
        <tr>
            <th class="w-25">护理方式</th>
            <th>护理方法</th>
        </tr>
        </thead>
        <tbody id="data-content">

        </tbody>
    </table>
</div>

<script>
    $(function (){
        $.ajax({
            url:"select.content",
            data:{"id":<%=request.getParameter("id")%>},
            dataType:"json",
            success:function (result) {
                var str = "";
                $(result).each(function () {
                    str += "<tr>\n" +
                        "            <td>"+this.updateId+"</td>\n" +
                        "            <td>"+this.content+"</td>\n" +
                        "        </tr>"
                })
                $("#data-content").html(str);
            }
        })
    })
</script>
</body>
</html>
