<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css" />
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />

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
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
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
				<font>会员注册</font>USER REGISTER
				<form class="form-horizontal" style="margin-top: 5px;">
					<input type="hidden" name="method" value="regist">
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username"
								placeholder="请输入用户名" name="username">
							<p class="isHas"></p>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="inputPassword"
								placeholder="请输入密码" name="password">
						</div>
					</div>
					<div class="form-group">
						<label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="confirmpwd"
								placeholder="请输入确认密码">
						</div>
					</div>
					<div class="form-group">
						<label for="usercaption" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="usercaption"
								placeholder="请输入姓名" name="name">
						</div>
					</div>
					<div class="form-group opt">
						<label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-6">
							<label class="radio-inline"> <input type="radio"
								name="sex" id="inlineRadio1" value="1"> 男
							</label> <label class="radio-inline"> <input type="radio"
								name="sex" id="inlineRadio2" value="0"> 女
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="date" class="col-sm-2 control-label">手机号</label>
						<div class="col-sm-6">
							<input maxlength="11" type="phone" class="form-control"
								id="phone" name="phone">
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<a> <input type="button" width="100" class="sumbitB"
								value="注册" name="submit" border="0"
								style="background: url('img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0); height: 35px; width: 100px; color: white;">
							</a>
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>

	<div style="margin-top: 5px;">
		<img src="./img/footer.jpg" width="100%" height="78" alt="我们的优势"
			title="我们的优势" />
	</div>

	<div style="text-align: center; margin-top: 0px;">
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
	<div style="text-align: center; margin-top: 0px; margin-bottom: 20px;">
		Copyright &copy; 2019-2020 版权所有</div>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#username").blur(function() {
			var username = $("#username").val();
			if (username.length > 0) {
				$.ajax({
					type : "get",
					data : {
						'username' : username,
						'isHas' : 0,
					},
					url : "registerServlet",
					success : function(result) {
						var i = result;
						if (i == 1) {
							$(".isHas").html("账号已经存在！");
							$("#username").val("");
						} else {
							$(".isHas").html("账号可以使用！")
						}
					}
				})
			} else {
				$(".isHas").html("");
			}
		});

		$(".sumbitB").click(function() {
			var sex = $("#inlineRadio1").is(":checked");
			if (sex == true) {
				sex = "男"
			} else {
				sex = "女"
			}
			var username = $("#username").val();
			var inputPassword = $("#inputPassword").val();
			var usercaption = $("#usercaption").val();
			var phone = $("#phone").val();
			if (username.length > 0 && inputPassword.length > 0 && inputPassword.length > 0 && phone.length > 0) {
				$.ajax({
					type : "get",
					data : {
						'username' : username,
						'inputPassword' : inputPassword,
						'usercaption' : usercaption,
						'sex' : sex,
						'phone' : phone,
					},
					url : "registerServlet",
					success : function(result) {
						var i = result;
						if (i == 2) {
							alert("注册成功，立即去登录！")
							window.location.href = 'login.jsp';
						} else {
							alert("注册失败！")
						}
					}
				})
			}else{
                alert("信息不完整无法完成注册！")	
			}
		});
	})
</script>
</html>