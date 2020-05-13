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
    <div style="text-align: right;margin: 20px">
        <button type="button" class="btn btn-outline-success" onclick="firstpage()">返回主页面</button>
    </div>
    <form role="form" action="insertQuestion.comment">
        <div class="form-group">
            <label>请输入你的问题：</label>
            <textarea id="content" name="content" class="form-control" rows="3"></textarea>
        </div>
        <div style="text-align: right;margin: 20px">
            <button type="submit" class="btn btn-outline-success">提交</button>
        </div>
    </form>
    <table style="border-spacing: 20px;border-collapse: separate;width: 100%;height: auto">
        <tbody id="data-content" class="th-style">

        </tbody>
    </table>
    <input type="hidden" name="current">
    <input type="hidden" name="pageNum">

    <p style="text-align: center">
        <button type="button" class="btn btn-success" onclick="pre()">上一页</button>&nbsp&nbsp&nbsp&nbsp
        <button type="button" class="btn btn-success" onclick="next()">下一页</button>
    </p>
    <div style="background-color: #2c2c2c;">
        <table  style='font-size: 20px;font-family: SimSun;line-height:0.5em;width: 100%;height: auto;border-spacing: 20px;border-collapse: separate'>
            <tr>
                <td><a href="feiqiu.jsp" style="text-decoration: none;color: #aaa">狗狗的团队竞技比赛，飞球运动你听说过吗？看看哪家的狗狗更厉害</a></td>
            </tr>
            <tr>
                <td><a href="modelcompetition.jsp" style="text-decoration: none;color: #aaa">各种狗狗争奇斗艳：2020广州第一届宠物模特大赛</a></td>
            </tr>
            <tr>
                <td><a href="uglycompetition.jsp" style="text-decoration: none;color: #aaa">世界最丑狗狗大赛</a></td>
            </tr>
        </table>
    </div>
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
                        str += "<tr><td><a style='font-size: 20px;font-family: SimSun;line-height: 0.5em;text-decoration: none;color: #1b1e21;' href=\"commentdetail.jsp?commentid="+this.commentid+"\">" +this.content+
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
