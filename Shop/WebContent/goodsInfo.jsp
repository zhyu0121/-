<%@page import="com.vo.Goods"%>
<%@page import="com.dao.impl.GoodsDao"%>
<%@page import="com.dao.IGoodsDao"%>
<%@page import="com.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
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
	Integer gid = Integer.valueOf(request.getParameter("gid"));
	IGoodsDao igd = new GoodsDao();
	Goods goods = igd.selectOneGoods(gid);
	String details = goods.getDetails();
	String[] ds = details.split(",");
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
			<a href="orderList.jsp">
				<button style="height: 40px; background-color: red; color: white;">
					<img src="img/cart1.gif">我的购物车
				</button>
			</a>
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
			<div
				style="border: 1px solid #e4e4e4; width: 930px; margin-bottom: 10px; margin: 0 auto; padding: 10px; margin-bottom: 10px;">
				<a href="index.jsp?search=<%=goods.getCategory1()%>"><%=goods.getCategory1()%>&nbsp;&nbsp;&nbsp;&gt;</a>&nbsp;&nbsp;&nbsp;<%=goods.getCategory2()%>
				<strong style="margin-left: 80%">品牌:<b><%=goods.getBrand() %></b></strong>
			</div>

			<div style="margin: 0 auto; width: 950px;">
				<div class="col-md-6">
					<img style="opacity: 1; width: 100%; height: 350px;" title=""
						class="medium" src="<%=goods.getPic()%>">
				</div>

				<div class="col-md-6">
					<div>
						<strong><%=goods.getName()%></strong>
					</div>
					<div
						style="border-bottom: 1px dotted #dddddd; width: 350px; margin: 10px 0 10px 0;">
						<div>库存：9999</div>
					</div>

					<div style="margin: 10px 0 10px 0;">
						商城价: <strong style="color: #ef0101; font-size: 25px">￥：<%=goods.getPrice()%>元
						</strong> 市场 价：
						<del>
							￥<%=goods.getLinePrice()%>元
						</del>
					</div>

					<div style="margin: 10px 0 10px 0;">
						促销: <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)"
							style="background-color: #f07373;">限时抢购</a>
					</div>

					<div
						style="padding: 10px; border: 1px solid #e7dbb1; width: 330px; margin: 15px 0 10px 0;; background-color: #fffee6;">
						<div style="margin: 5px 0 10px 0;">
							规格：<b><%=goods.getSize1()%></b>
						</div>
						<div style="margin: 5px 0 10px 0;"></div>
						<div style="margin: 5px 0 10px 0;">
							规格：<b><%=goods.getSize2()%></b>
						</div>
						<!-- 提交的方法  -->
						<input type="hidden" name="method" value="add2cart">

						<!-- 商品的pid -->
						<input type="hidden" name="pid" value="${bean.pid }">

						<div
							style="border-bottom: 1px solid #faeac7; margin-top: 20px; padding-left: 10px;">
							购买数量: <input id="quantity" name="count" value="1" maxlength="4"
								size="10" type="number" min="1" class="count">
						</div>

						<div style="margin: 20px 0 10px 0;; text-align: center;">
							<a href="javascript:addCart(<%=goods.getId()%>)">
								<button
									style="background: url('img/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0); height: 36px; width: 127px;">
									加入购物车</button>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div style="width: 950px; margin: 0 auto;">
				<div
					style="background-color: #d3d3d3; width: 930px; padding: 10px 10px; margin: 10px 0 10px 0;">
					<strong>商品介绍</strong>
				</div>
				<%for(String detail : ds){ %>
				<div style="width: 900px; margin: 0 auto;">
					<img src="<%=detail%>">
				</div>
				<%}; %>

				<div
					style="background-color: #d3d3d3; width: 930px; padding: 10px 10px; margin: 10px 0 10px 0;">
					<strong> <!-- ${bean.pdesc } -->
					</strong>
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
    function addCart(id){
    	 var gid = id;
         var count = $(".count").val();
         $.ajax({
             type : "post",
             data : {
                 'gid' : gid,
                 'count' : count
             },
             url : "addCart",
             success : function(result) {
                 var i = result;
                 if (i == 1) {
                     alert("添加成功")
                 } else {
                     alert("添加失败")
                 }
             }
         })
    }
</script>
</html>