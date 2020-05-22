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
        <tr>
            <td>眼部护理</td>
            <td>&nbsp&nbsp长时间不清理，狗狗的眼睛也会变得脏脏的，情况严重的话，会影响 狗狗正常的视力和眼睛健康，诱发结膜炎等疾病的情况。<br>
                &nbsp&nbsp对其眼部最好能进行针对性的护理。如使用2%硼酸棉球由眼内角向外轻轻擦拭，不能在眼睛上来回擦拭，一个棉球不够，可再换一个，直到将眼睛擦洗干净为止。</td>
        </tr>
        <tr>
            <td>牙齿护理</td>
            <td>&nbsp&nbsp大型犬平时可以啃点儿大骨头，既能磨练牙齿，还能补钙。不要随意给狗狗喂食粘性强的柔软食物，这类食物容易粘到狗狗的牙齿上，不宜清理掉，长时间后就会腐烂变质，让狗狗出现口臭，牙龈发炎等症状。<br>
                &nbsp&nbsp刷牙时，先用纱布沾一点生理盐水，涂抹到狗狗的饿牙齿、牙龈上，然后用牙刷顺次擦拭够过的牙龈、牙缝。在清洁的时候，动作一定要轻柔，避免伤害到狗狗的牙龈。</td>
        </tr>
        <tr>
            <td>耳道护理</td>
            <td>&nbsp&nbsp狗狗的耳朵会慢慢分泌污物，这些从耳朵分泌出来的污物也比较坚固，清洁时不太方便。当主人发现狗狗的耳朵有污物时，可以准备婴儿油，以及棉花球，一把小镊子。<br>
                &nbsp&nbsp如果耳部饰毛较长的话，可以先修剪下饰毛，以免影响到清理。垂耳型的狗狗毛发覆盖的比较多，为了保留狗狗的颜值，不建议修剪掉，可以使用发胶将耳部饰毛打理一下，不要挡住耳朵就行。</td>
        </tr>
        <tr>
            <td>指甲护理</td>
            <td>&nbsp&nbsp由于大型犬经常在粗糙的地面上运动，能自动磨平长出的指甲。但是我们也要定期检查指甲是否长处太长。<br>
                &nbsp&nbsp我们抓住他们的一只腿并向前拉伸，用拇指和食指捏住要修剪的指甲。修剪时要注意看狗狗的血缐，避免剪到肉，或剪太短，然后用指甲剪略向下倾斜剪掉多余的指甲。</td>
        </tr>
        <tr>
            <td>毛发护理</td>
            <td>&nbsp&nbsp顺着狗狗毛发生长的方向给狗狗梳理毛发，梳理时不可太用力，梳理的同时可以用手轻轻抚摸狗狗，以安慰狗狗的情绪。<br>
                &nbsp&nbsp由于大型犬经常外出运动，所以即使的小型犬也应该经常的梳理毛发可以先用齿密的梳子将狗狗全身的毛发疏通顺，也将狗狗身上的跳蚤、虱子带着一部分，然后用齿疏的梳子，将狗狗全身再次梳理一遍。</td>
        </tr>
        <tr>
            <td>洗澡方法</td>
            <td>&nbsp&nbsp准备：毛巾、浴液等。检查耳朵看是否需要清理，然后用脱脂棉堵住耳朵，以免进水。<br>
                &nbsp&nbsp洗澡：使用定量的，常规的全能浴液，使泡沫进入每个部分，冲洗后如需要应使用护发素，并再次冲洗。<br>
                &nbsp&nbsp吹干：尽量用毛巾擦干，让毛发在温暖的天气中自然晒干或使用吹风机吹干。把人类使用的吹风机调制为低档或中档，不要让吹风机只对着一个部位吹。</td>
        </tr>
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
