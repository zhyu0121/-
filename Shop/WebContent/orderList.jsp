<%@page import="java.util.ArrayList"%>
<%@page import="com.vo.Order"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.impl.OrderDao"%>
<%@page import="com.dao.IOrderDao"%>
<%@page import="com.enums.OrderStatusEnum"%>
<%@page import="com.dao.impl.GoodsDao"%>
<%@page import="com.vo.Goods"%>
<%@page import="com.dao.IGoodsDao"%>
<%@page import="com.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单列表</title>
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
</style>
</head>
<%
	User user = (User) request.getSession().getAttribute("user");
    IGoodsDao igd = new GoodsDao();
    IOrderDao iod = new OrderDao();
    List<Order> os = new ArrayList();
    if(null != user){
        os = iod.selectOrders(user.getId());
    }
%>
<body>
	<div class="container-fluid">
		<div class="col-md-4"></div>
		<div class="col-md-5">
			<img src="img/header.png" />
		</div>
		<div class="col-md-3" style="padding-top: 20px">
			<%
				if (null != user) {
			%>
			欢迎:
			<%
				out.print(user.getName());
			%>
			<%
				} else {
			%>
			<ol class="list-inline">
				亲请
				<li><a href="login.jsp">登录</a></li>
				<li><a href="register.jsp">注册</a></li>
			</ol>
			<%
				}
			%>
			<button style="height: 40px; background-color: red; color: white;">
				<img src="img/cart1.gif">我的购物车
			</button>
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
	<div class="container">
		<div class="row">

			<div style="margin: 0 auto; margin-top: 10px; width: 950px;">
				<h3>我的订单</h3>
				<table class="table table-bordered">
					<%
					   if(!os.isEmpty()){
						for(Order order : os){
							Goods goods = igd.selectOneGoods(order.getGid());
					%>
					<tr class="success">
						<th colspan="2">订单编号:&nbsp&nbsp&nbsp<%=order.getOrderCode() %></th>
						<th colspan="3" style="text-align: center;">
							<%if(order.getStatus().equals(OrderStatusEnum.O100.getCode())){ %>
							<a href="pay?orderId=<%=order.getId()%>"> <%=OrderStatusEnum.get(order.getStatus()).getDesc()%>
						</a> <%}else if(order.getStatus().equals(OrderStatusEnum.O102.getCode())){%>
							<a href="pay?orderId=<%=order.getId()%>&ooo=1"> 确认收货 </a> <%}else{%>
							<p>
								<%=OrderStatusEnum.get(order.getStatus()).getDesc()%>
							</p> <%} %>
						</th>
					</tr>
					<tr class="warning">
						<th>图片</th>
						<th>商品</th>
						<th>价格</th>
						<th>数量</th>
						<th>小计</th>
					</tr>
					<tr class="active">
						<th width="20%" width="40%"><input type="hidden" name="id"
							value="22"> <img
							style="width: 70px; height: 60px; margin-left: 50px"
							src="<%=goods.getPic() %>"></th>
						<td width="40%"><a
							href="goodsInfo.jsp?gid=<%=goods.getId()%>"><%=goods.getName() %></a></td>
						<td width="20%">￥<%=goods.getPrice() %></td>
						<td width="10%"><%=order.getSum() %></td>
						<td width="15%"><span class="subtotal">￥<%=goods.getPrice()*order.getSum() %></span></td>
					</tr>
					<%
						}
							}else{
						%>
					<br>
					<br>
					<h4 style="color: red">暂无订单，快去购物吧</h4>
					<%} %>
				</table>
			</div>
		</div>
	</div>

	<div style="margin-top: 30px;">
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
	<div style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
		Copyright &copy; 2019-2020 版权所有</div>
</body>
<script type="text/javascript">
	function subForm() {
		//让指定的表单提交
		document.getElementById("form1").submit();
	}
</script>
</html>