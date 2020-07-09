<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.vo.Banner"%>
<%@page import="com.dao.IBannerDao"%>
<%@page import="com.dao.impl.BannerDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.vo.Goods"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.impl.GoodsDao"%>
<%@page import="com.dao.IGoodsDao"%>
<%@page import="com.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
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

ul li:hover {
	background-color: #d9d9d9;
}

.imgSize:hover {
	transform: scale(1.1);
}

del {
	color: #D0D0D0;
	margin-left: 30%;
}

b {
	color: red;
	margin-left: 10px;
}

.imgSize {
	width: 220px;
	height: 150px;
	cursor: pointer;
	transition: all 0.6s;
}
</style>
</head>
<%
User user = (User)request.getSession().getAttribute("user");
IGoodsDao igd = new GoodsDao();
List<Goods> goods = igd.selectAllGoods();
List<String> list = new ArrayList();
if(!goods.isEmpty()){
	for (Goods good : goods) {
		if(!list.contains(good.getCategory1())){
			if(list.size() > 10){
			    break;
			}
			list.add(good.getCategory1());
		}
	}
}
IBannerDao ibd = new BannerDao();
List<Banner> bs = ibd.selectBanner(1);
//搜索数据来源
String search = request.getParameter("search");
Map<Integer,List<Goods>> goodsMap = new HashMap();
if(null != search){
	goodsMap = igd.selectGoodsBySearch(search);
}
%>
<body>
	<div class="container-fluid">
		<div class="col-md-4"></div>
		<div class="col-md-5">
			<img src="img/header.png" />
		</div>
		<div class="col-md-3" style="padding-top: 20px">
			<%if(null != user){ %>
			欢迎:
			<%out.print(user.getName()); %>
			<%}else{ %>
			<ol class="list-inline">
				亲请
				<li><a href="login.jsp">登录</a></li>
				<li><a href="register.jsp">注册</a></li>
			</ol>
			<%} %>
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
		style="width: 100%; background: url('img/regist_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 1px 10px; width: 83%; margin-left: 150px; border: 2px solid #ccc;">
				<div style="padding-left: 50px" background:url('img/regist_bg.jpg');>
					<a href="index.jsp"> <img src="img/logo.png"
						style="width: 100px; margin-left: 100px">
					</a> <input class="search" type="text"
						style="width: 30%; height: 40px; margin-left: 100px;">
					<button class="searchB"
						style="height: 40px; background-color: red; color: white;">search</button>
					<a href="orderList.jsp">
						<button
							style="margin-left: 100px; height: 40px; background-color: red; color: white;">
							<img src="img/cart1.gif">我的购物车
						</button>
					</a>
				</div>
				<hr style="width: 100%">
				<div style="padding-left: 50px" background:url('img/regist_bg.jpg');>
					<!-- <a href="index.jsp">
                        <img src="img/logo.png" style="width: 100px;margin-left: 100px">
                    </a>
                    <input class="search" type="text" style="width: 30%;height: 40px;margin-left: 100px;">
                    <button class="searchB" style="height: 40px;background-color: red;color: white;">search</button>
                    <button style="margin-left: 100px;height: 40px;background-color: red;color: white;">
                        <img src="img/cart1.gif">我的购物车
                    </button> -->
					<div style="width: 100%">
						<table style="width: 97%">
							<tr style="height: 500px;">
								<td style="border: 1px solid black; width: 25%">
									<%if(!list.isEmpty()){
				                        for(String s : list){ %>
									<ul
										style="list-style: none; width: 100%; background-color: pink">
										<a href="index.jsp?search=<%=s%>">
											<li style="width: 100%;">
												<%out.print(s); %>
										</li>
										</a>
									</ul> <%} }%>
								</td>
								<td style="border: 1px solid black; width: 50%; height: 400px">
									<%if(!bs.isEmpty()){
                                    	Banner banner = bs.get(0);
                                    %> <a
									href="goodsInfo.jsp?gid=<%
                                        		out.print(banner.getGid());
                                        %>">
										<img style="height: 4; width: 100%" alt="###"
										src="
                                                <%out.print(banner.getGpic()); %>
                                            ">
								</a> <%
                                    bs.remove(0);
                                    }; %>
								</td>
								<td style="border: 1px solid black; width: 25%; height: 400px">
									<ul style="list-style: none;">
										<%if(!bs.isEmpty()){
	                                    	 for(Banner banner:bs){
	                                    %>
										<a href="goodsInfo.jsp?gid=<%out.print(banner.getGid()); %>">
											<li style="height: 200px"><img
												style="height: 100%; width: 100%" alt="###"
												src="
	                                                <%out.print(banner.getGpic()); %>
	                                            ">
										</li>
										</a>
										<%
	                                    }}; %>
									</ul>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<hr>
				<div class="form-horizontal"
					style="margin-top: 5px; padding-left: 50px">
					<h3>商品列表</h3>
					<hr>
					<%
                    if(!goodsMap.isEmpty()){ 
                    %>
					<table>
						<%
                            for (Integer integer : goodsMap.keySet()) {
                            	List<Goods> goodsList = goodsMap.get(integer);
                            %>
						<tr>
							<%for(Goods goods2:goodsList){ %>
							<td
								style="border: 1px solid black; width: 250px; text-align: center; padding-top: 10px">
								<a href="goodsInfo.jsp?gid=<%=goods2.getId()%>"><img
									class="imgSize" alt="" src="<%=goods2.getPic()%>"></a><br>
							<br> <span><%=goods2.getName()%></span><br> <b>￥<%=goods2.getPrice()%></b>
								<del>
									￥<%=goods2.getLinePrice()%></del>
							</td>
							<%}; %>
						</tr>
						<%}; %>
					</table>
					<%}; %>
				</div>
				<br>
				<br>
				<br>
			</div>
		</div>
		<br>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $(".sq").click(function() {
        alert("提交申请成功！");
    });
})
</script>
</html>