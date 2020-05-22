<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>狗狗日常护理</title>
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
<h1 style="text-align:center;display: block;font-size: 2.5em;margin-block-start: 0.67em;font-weight: bold;margin-bottom: 30px;margin-inline-start: 0px;margin-inline-end: 0px;">让我们一起走进狗狗的护理世界！</h1>
<div class="wrap chongwu_list" id="data-content">
	<div class="list_item">
		<a href="duanmaoxiaoxingquan.jsp" class="list_img"><img src="img/dogintroduction/柯基犬.jpg" alt="短毛小型犬的护理方法"></a>
		<div>
			<h3><a href="duanmaoxiaoxingquan.jsp">短毛小型犬的护理方法</a></h3>
			<p class="cnt">
				眼部护理<br>
				短毛小型犬眼部没有毛发的遮挡，眼部容易受伤，所以坚持每天用湿布擦洗面部，...
			</p>
		</div>
		<p class="view">
			<a href="duanmaoxiaoxingquan.jsp"><span class="f_right">更多>></span></a>
		</p>
	</div>
	<div class="list_item">
	<a href="duanmaodaxingquan.jsp" class="list_img"><img src="img/dogintroduction/杜宾犬.jpg" alt="短毛大型犬的护理方法"></a>
	<div>
		<h3><a href="duanmaodaxingquan.jsp">短毛大型犬的护理方法</a></h3>
		<p class="cnt">
			牙齿护理<br>
			大型犬平时可以啃点儿大骨头，既能磨练牙齿，还能补钙。不要随意给狗狗喂食...
		</p>
	</div>
	<p class="view">
		<a href="duanmaodaxingquan.jsp"><span class="f_right">更多>></span></a>
	</p>
</div><div class="list_item">
	<a href="changmaoxiaoxingquan.jsp" class="list_img"><img src="img/dogintroduction/博美犬.jpg" alt="长毛小型犬的护理方法"></a>
	<div>
		<h3><a href="changmaoxiaoxingquan.jsp">长毛小型犬的护理方法</a></h3>
		<p class="cnt">
			耳道护理<br>
			狗狗的耳朵会慢慢分泌污物，这些从耳朵分泌出来的污物也比较坚固，清洁时...

		</p>
	</div>
	<p class="view">
		<a href="changmaoxiaoxingquan.jsp"><span class="f_right">更多>></span></a>
	</p>
</div><div class="list_item">
	<a href="changmaodaxingquan.jsp" class="list_img"><img src="img/dogintroduction/金毛犬.jpg" alt="长毛大型犬的护理方法"></a>
	<div>
		<h3><a href="changmaodaxingquan.jsp" >长毛大型犬的护理方法</a></h3>
		<p class="cnt">
			指甲护理<br>
			由于大型犬经常在粗糙的地面上运动，能自动磨平长出的指甲。但是我们也要...
		</p>
	</div>
	<p class="view">
		<a href="changmaodaxingquan.jsp"><span class="f_right">更多>></span></a>
	</p>
</div>
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
			data:{"n":n,"typerole":0},
			dataType:"json",
			success:function (result) {
				var str = "";
				$(result.content).each(function () {
					str += "<div class=\"list_item\">\n" +
							"\t\t<a href=\"quan.jsp?photopath="+this.photopath+"&id="+this.id+"\" class=\"list_img\"><img src='onload/"+this.photopath+"' alt=\"长毛小型犬的护理方法\"></a>\n" +
							"\t\t<div>\n" +
							"\t\t\t<h3><a href=\"quan.jsp?photopath="+this.photopath+"&id="+this.id+"\">"+this.typeTitle+"</a></h3>\n" +
							"\t\t\t<p class=\"cnt\">\n" +
							this.contentTitle +
							"\t\t\t</p>\n" +
							"\t\t</div>\n" +
							"\t\t<p class=\"view\">\n" +
							"\t\t\t<a href=\"quan.jsp?photopath="+this.photopath+"&id="+this.id+"\"><span class=\"f_right\">更多>></span></a>\n" +
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