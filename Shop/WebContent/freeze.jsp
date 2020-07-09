<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>冻结页面</title>
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
			<!-- Brand and toggle get grouped for better mobile display -->
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
		style="width: 100%; background: url('img/regist_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 1px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>会员解冻</font>USER UNFREEZE
				<form class="form-horizontal" style="margin-top: 5px;" method="post"
					action="unfreezeServlet">
					<input type="hidden" name="method" value="regist">
					<div class="form-group">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group">
						<div class="col-sm-6">
							<strong>您的账号已经被冻结，清点击下方按钮申请解冻，待管理员通过即可解除！</strong>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group opt">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group">
						<div class="col-sm-6"></div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="申请" name="submit"
								border="0" style="height: 35px; width: 100px; color: black;"
								class="sq">
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>

	<div style="margin-top: 30px;">
		<img src="./image/footer.jpg" width="100%" height="78" alt="我们的优势"
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
	<div style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
		Copyright &copy; 2019-2020 版权所有</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $(".sq").click(function() {
        alert("提交申请成功！");
    });
})
</script>
</html>