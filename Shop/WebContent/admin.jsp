<%@page import="com.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="./js/jquery-1.11.3.min.js" type="text/javascript"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员界面</title>
<script type="text/javascript">
    $(function() {
        $("#b0").click(function() {
            $("#tableDiv").load("addGoods.jsp");
        });
        $("#b1").click(function() {
            $("#tableDiv").load("userAllMovie.jsp");
        });
        $("#b2").click(function() {
            $("#tableDiv").load("orderLists.jsp");
        });
        $("#b3").click(function() {
            $("#tableDiv").load("scrap.jsp");
        });
    })
</script>
<style type="text/css">
button {
	border-radius: 6px;
	background-color: #34AA92;
	width: 150px;
	height: 25px;
	font-size: 15px;
}

body {
	background-color: #B4E4E4;
}

#left {
	width: 190px;
	background-color: #28A7C7;
	height: 595px;
	text-align: center;
	margin: -6px -6px;
}

#tableDiv {
	margin: 5px 190px;
	margin-top: -580px;
	background-color: #B4E4E4;
	width: 1110px;
}

#tableDiv table {
	margin: auto;
}

#tableDiv h2 {
	text-align: center;
}

table {
	width: 1100px;
}

td {
	width: 100px;
	border: 1px solid black;
}

span {
	color: red;
}

span1 {
	color: lightblue;
}

a {
	text-decoration: none;
	color: black;
}

strong {
	font-family: cursive;
}
</style>
</head>
<body>
	<%
        User user = (User) request.getSession().getAttribute("user");
%>
	<div>
		<div id="left">
			<br>
			<h2>管理员界面</h2>
			当前用户：<% out.print(user.getName());%>
			<br>
			<hr>
			<br>
			<button id="b0">添加商品</button>
			<br> <br>
			<button id="b2">订单管理</button>
			<br> <br> <a href="login.jsp"><button>退出当前登录</button></a>
		</div>
		<div id="tableDiv">
			<hr>
			<h2>欢迎商品后台管理平台</h2>
			<hr>
			<br> <strong> ——商品后台 </strong> <br>

		</div>
	</div>

</body>
</html>