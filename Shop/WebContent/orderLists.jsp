<%@page import="com.enums.OrderStatusEnum"%>
<%@page import="com.dao.impl.OrderDao"%>
<%@page import="com.dao.IOrderDao"%>
<%@page import="com.vo.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="./js/jquery-1.11.3.min.js" type="text/javascript"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 98%;
	padding: 0;
	border-collapse: collapse;
	border: solid black 1px;
}

table tr {
	border-top: 1px solid #cccccc;
	background-color: white;
	margin: 0;
	padding: 0;
}

table tr:nth-child(2n) {
	background-color: #f8f8f8;
}

table tr th {
	font-weight: bold;
	border: 1px solid #cccccc;
	margin: 0;
	padding: 6px 13px;
}

table tr td {
	border: 1px solid #cccccc;
	margin: 0;
	padding: 6px 13px;
}

table tr th :first-child, table tr td :first-child {
	margin-top: 0;
}

table tr th :last-child, table tr td :last-child {
	margin-bottom: 0;
}

td {
	width: 100px;
	border: 1px solid black;
}
</style>
</head>
<body>
	<%
    IOrderDao iod = new OrderDao();
       List<Order> os = iod.selectOrders(0);
    %>
	<div>
		<hr>
		<h3>订单管理</h3>
		<hr>
		<br> <br>
		<table>
			<tr>
				<th><h4>订单编号</h4></th>
				<th><h4>用户姓名</h4></th>
				<th><h4>下单时间</h4></th>
				<th><h4>订单状态</h4></th>
				<th><h4>操作</h4></th>
			</tr>
			<%
                        int i = 1;
                        for (Order good : os) {
                    %>
			<tr>
				<th>
					<%
                                out.print(good.getOrderCode());
                            %>
				</th>
				<th>
					<%
                                out.print(good.getUid());
                            %>
				</th>
				<th>
					<%
                                out.print(good.getCreateTime());
                            %>
				</th>
				<th>
					<%
                                out.print(OrderStatusEnum.get(good.getStatus()).getDesc());
                            %>
				</th>
				<th>
					<%if(!good.getStatus().equals(OrderStatusEnum.O101.getCode())){ %>
					<button disabled="true">
						<%}else{ %>
						<a href="javascript:updateOrderStatus(<%=good.getId()%>)">
							<button id="bu">
								<%}; %>
								<%=OrderStatusEnum.get(good.getStatus()).getTdString() %>
							</button>
						</a>
				</th>
			</tr>
			<%
                        i++;
                        }
                    %>
		</table>
		<br> <br> <br> <br>
	</div>
</body>
<script type="text/javascript">
function updateOrderStatus(id){
    var orderCode = id;
    $.ajax({
        type : "post",
        data : {
            'orderCode' : orderCode
        },
        url : "updateOrderStatus",
        success : function(result) {
            var i = result;
            if (i == 1) {
                alert("修改成功")
            } else {
                alert("修改失败")
            }
        }
    })
}
</script>
</html>