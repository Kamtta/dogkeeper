<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>狗狗趣闻</title>
	<link type="text/css" rel="stylesheet" href="css/gougoujibingjiuzhi.css" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" media="screen" />
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/stylenew.css">
	<script type="text/javascript" language="JavaScript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link type="text/css" rel="stylesheet" href="css/style1.css"/>
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
<p style="text-align:center;">
	<img src="img/dog/狗狗21.jpg" height="400px" width="900px" >
</p>
<h1 style="text-align:center;display: block;font-size: 2.5em;margin-block-start: 0.67em;font-weight: bold;margin-bottom: 30px;margin-inline-start: 0px;margin-inline-end: 0px;">让我们一起走进狗狗的开心世界！</h1>

<div class="wrap chongwu_list" id="data-content">

</div>
<div class="i_t mar_10">
</div>
<p style="height: 58px;line-height: 26px; padding: 16px 0 0;text-align: center"><a href="http://www.12377.cn/" target="_blank">中国互联网举报中心</a> 举报邮箱：7-8-382168@qq.com 违法和不良信息举报电话：12377<br>Copyrights  2020 狗狗护理  All rights reserved.</p>
<input type="hidden" name="current">
<input type="hidden" name="pageNum">
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
			data:{"n":n,"typerole":3},
			dataType:"json",
			success:function (result) {
				var str = "";
				$(result.content).each(function () {
					str += "<div class=\"list_item\">\n" +
							"\t\t<a href=\"quwen.jsp?photopath="+this.photopath+"&id="+this.id+"&title="+this.typeTitle+"\" class=\"list_img\"><img src='onload/"+this.photopath+"'></a>\n" +
							"\t\t<div>\n" +
							"\t\t\t<h3><a href=\"quwen.jsp?photopath="+this.photopath+"&id="+this.id+"&title="+this.typeTitle+"\">"+this.typeTitle+"</a></h3>\n" +
							"\t\t\t<p class=\"cnt\">\n" +
							this.contentTitle +
							"\t\t\t</p>\n" +
							"\t\t</div>\n" +
							"\t\t<p class=\"view\">\n" +
							"\t\t\t<a href=\"quwen.jsp?photopath="+this.photopath+"&id="+this.id+"&title="+this.typeTitle+"\"><span class=\"f_right\">更多>></span></a>\n" +
							"\t\t</p>\n" +
							"\t</div>"
				})
				str += "<p style=\"text-align: right;bottom: 50px;right: 100px\">\n" +
						"    <button type=\"button\" class=\"btn btn-success\" onclick=\"pre()\">上一页</button>&nbsp&nbsp&nbsp&nbsp\n" +
						"    <button type=\"button\" class=\"btn btn-success\" onclick=\"next()\">下一页</button>\n" +
						"</p>"
				$("#data-content").html(str);
				$("input[name='current']").val(result.currentPage)
				$("input[name='pageNum']").val(result.pageNum)
			}
		})
	}
</script>
</body>
</html>