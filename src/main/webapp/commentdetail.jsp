<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/19
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.tjcu.daoimpl.UserCommentDaoImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <title>问题解答详情</title>
</head>
<body>
<div>
    <img src="img/dog/狗狗1.jpg" width="100%">
</div>
<div style="text-align: right">
    <button type="button" class="btn btn-outline-success" onclick="firstpage()">返回主页面</button>
</div>
<div id="question-content"><h2><%=(new UserCommentDaoImpl()).findContentById(Integer.valueOf(request.getParameter("commentid")))%></h2></div>
<br>
<table style="border-spacing: 20px;border-collapse: separate;width: 100%;height: auto">
    <tbody id="data-content" class="th-style" style="color: black;font-family: SimSun;
    font-size: 20px;padding: 20px;margin: 20px">

    </tbody>
</table>
<input type="hidden" name="current">
<input type="hidden" name="pageNum">
<input type="hidden" name="commentid">

<p style="text-align: center">
    <button type="button" class="btn btn-success" onclick="pre()">上一页</button>
    <button type="button" class="btn btn-success" onclick="next()">下一页</button>
</p>
<form role="form" action="insertComment.comment">
    <input type="hidden" id="relatedcomment" name="relatedcomment" value="<%=request.getParameter("commentid")%>">
    <div class="form-group">
        <label>请输入你的建议：</label>
        <textarea id="content" name="content" class="form-control" rows="3"></textarea>
    </div>
    <div style="text-align: right" >
        <button type="submit" class="btn btn-outline-success">提交</button>
    </div>
</form>
<script>
    $(function () {
        var commentid = '<%=request.getParameter("commentid").toString()%>';
        $("input[name='commentid']").val(commentid);
        fun(1,commentid)
    })
    function pre() {
        var n = $("input[name='current']").val();
        var commentid = $("input[name='commentid']").val();
        if(n == 1){
            fun(1,commentid)
        }else{
            fun(n-1,commentid)
        }
    }
    function next() {
        var n = $("input[name='current']").val();
        var commentid = $("input[name='commentid']").val();
        var pagenum = $("input[name='pageNum']").val();
        if(n == pagenum){
            fun(n,commentid);
        }else{
            fun(parseInt(n)+1,commentid)
        }
    }
    function fun(n,commentid){
        $.ajax({
            url:"answer.comment",
            data:{"n":n,"commentid":commentid},
            dataType:"json",
            success:function (result) {
                var str = "";
                console.log(result)
                $(result.content).each(function () {
                    str += "<tr><td>"+this.uname+":"+this.content+"</td></tr>"
                })
                $("#data-content").html(str);
                $("input[name='current']").val(result.currentPage)
                $("input[name='pageNum']").val(result.pageNum)
            }
        })
    }
    function firstpage() {
        window.location.href="firstpage.jsp";
    }
</script>
</body>
</html>
