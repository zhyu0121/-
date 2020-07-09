<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
<script src="./js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="./css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color: #666;
	font-size: 22px;
	font-weight: normal;
	padding-right: 17px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="col-md-4"></div>
		<div class="col-md-5">
			<img src="img/header.png" />
		</div>
		<div class="col-md-3" style="padding-top: 20px">
			<ol class="list-inline">
				<li><a href="login.jsp">登录</a></li>
				<li><a href="register.jsp">注册</a></li>
			</ol>
		</div>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp">首页</a>
			</div>
		</div>
	</div>
	<div class="container"
		style="width: 100%; height: 460px; background: #FF2C4C url('img/loginbg.jpg') no-repeat;">
		<div class="row">
			<div class="col-md-7">
				<!--<img src="./image/login.jpg" width="500" height="330" alt="会员登录" title="会员登录">-->
			</div>

			<div class="col-md-5">
				<div
					style="width: 440px; border: 1px solid #E7E7E7; padding: 20px 0 20px 30px; border-radius: 5px; margin-top: 60px; background: #fff;">
					<font>会员登录</font>USER LOGIN
					<!-- ${msg } -->

					<div>&nbsp;</div>
					<form class="form-horizontal" action="loginServlet" method="post">
						<input type="hidden" name="method" value="login">
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="username"
									placeholder="请输入用户名" name="username">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="请输入密码" name="password">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">校验</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="inputPassword3"
									placeholder="随机数">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" width="100" value="登录" name="submit"
									border="0"
									style="background: url('img/login.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
							</div>
							<%
                            String mes = (String)request.getSession().getAttribute("message1");
							if(mes!=null){
							%>
							<strong class="mes" style="color: red;">
								<%out.print(mes); %>
							</strong>
							<%} %>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div style="margin-top: 25px;">
		<img src="./img/footer.jpg" width="100%" height="78" alt="我们的优势"
			title="我们的优势" />
	</div>

	<div style="text-align: center; margin-top: 5px;">
		<ul class="list-inline">
			<li><a>关于我们</a></li>
			<li><a>联系我们</a></li>
			<li><a>招贤纳士</a></li>
			<li><a>法律声明</a></li>
			<li><a>友情链接</a></li>
			<li><a target="_blank">支付方式</a></li>
			<li><a target="_blank">配送方式</a></li>
			<li><a>服务声明</a></li>
			<li><a>广告声明</a></li>
		</ul>
	</div>
</body>
<script type="text/javascript">
$(function() {
    $("#username").focus(function() {
        $(".mes").html("");
    });
})
</script>
</html>