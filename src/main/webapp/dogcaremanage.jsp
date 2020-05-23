<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/19
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" type="/image/x-icon" href="favicon.ico" media="screen" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" language="JavaScript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/popper.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <title>狗狗护理管理</title>
</head>
<body>

<table class="table back">
    <thead>
    <tr style="font-family: 方正舒体;font-size: 25px;">
        <th>简介图片</th>
        <th>标题</th>
        <th>简介</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="data-content">

    </tbody>
</table>
<input type="hidden" name="current">
<input type="hidden" name="pageNum">
<p style="text-align: left;bottom: 50px;left: 50px">
    <button type="button" class="btn btn-success" onclick="doclick()">添加子项</button>&nbsp&nbsp&nbsp&nbsp
</p>
<p style="text-align: right;bottom: 50px;right: 0px">
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
            url:"select.type",
            data:{"n":n,"typerole":0},
            dataType:"json",
            success:function (result) {
                var str = "";
                $(result.content).each(function () {
                    str += "<tr>\n" +
                        "            <td><img src= 'onload/"+this.photopath+"' style='width: 200px;height: 150px'/></td>\n" +
                        "            <td>"+this.typeTitle+"</td>\n" +
                        "            <td>"+this.contentTitle+"</td>\n" +
                        "            <td>\n" +
                        "                <div class=\"dropdown\">\n" +
                        "                    <button type=\"button\" class=\"btn btn-success dropdown-toggle\" data-toggle=\"dropdown\">\n" +
                        "                        <i class=\"fa fa-cogs\"></i>\n" +
                        "                    </button>\n" +
                        "                    <div class=\"dropdown-menu\">\n" +
                        "                        <a class=\"dropdown-item\" href=\""+"dispatch.content?id="+this.id+"\" style='color: green'>添加具体内容</a>\n" +
                        "                        <a class=\"dropdown-item\" href=\""+"delete.type?id="+this.id+"\" style='color: green'>删除</a>\n" +
                        "                    </div>\n" +
                        "                </div>\n" +
                        "            </td>\n" +
                        "        </tr>"
                })
                $("#data-content").html(str);
                $("input[name='current']").val(result.currentPage)
                $("input[name='pageNum']").val(result.pageNum)
            }
        })
    }
    function doclick() {
        window.location.href = "dogcareadd.jsp?typeid=0";
    }
</script>
</body>
</html>
