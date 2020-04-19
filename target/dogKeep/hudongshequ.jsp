<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/19
  Time: 17:36
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
    <title>互动社区</title>
</head>
<body>
    <div>
        <img src="img/dog/狗狗1.jpg" width="100%">
    </div>
    <div style="text-align: right">
        <button type="button" class="btn btn-outline-success" onclick="firstpage()">返回主页面</button>
    </div>
    <form role="form" action="insertQuestion.comment">
        <div class="form-group">
            <label>请输入你的问题：</label>
            <textarea id="content" name="content" class="form-control" rows="3"></textarea>
        </div>
        <div style="text-align: right">
            <button type="submit" class="btn btn-outline-success">提交</button>
        </div>
    </form>
    <table>
        <tbody id="data-content" class="th-style">

        </tbody>
    </table>
    <input type="hidden" name="current">
    <input type="hidden" name="pageNum">

    <p style="text-align: center">
        <button type="button" class="btn btn-success" onclick="pre()">上一页</button>&nbsp&nbsp&nbsp&nbsp
        <button type="button" class="btn btn-success" onclick="next()">下一页</button>
    </p>
    <script>
        $(function () {
            fun(1)
        })
        function pre() {
            var n = $("input[name='current']").val();
            if(n == 1){
                fun(1)
            }else{
                fun(n-1)
            }
        }
        function next() {
            var n = $("input[name='current']").val();
            var pagenum = $("input[name='pageNum']").val();
            if(n == pagenum){
                fun(n);
            }else{
                fun(parseInt(n)+1)
            }
        }
        function fun(n){
            $.ajax({
                url:"show.comment",
                data:{"n":n},
                dataType:"json",
                success:function (result) {
                    var str = "";
                    console.log(result)
                    $(result.content).each(function () {
                        str += "<tr><td><a href=\"commentdetail.jsp?commentid="+this.commentid+"\">" +this.content+
                            "</a></td></tr>"
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
