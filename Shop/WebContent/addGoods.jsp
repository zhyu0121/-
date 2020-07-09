<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="./js/jquery-1.11.3.min.js" type="text/javascript"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="box">
		<div id="right">
			<div id="main-bg">
				<div id="add">
					<form method="post" action="addServlet">
						商品名称： <input type="text" name="name" style="width: 700px"
							id="uname" /><br>
						<br> 商品主图： <input type="text" name="pic" style="width: 700px"
							id="english" /><br>
						<br> 商品详情：
						<textarea type="text" name="detail" id="zonghe"
							style="width: 700px; height: 50px;" value="逗号分隔" />
						<br />
						<br> 商品价格： <input type="number" name="price" id="xinbie" /><br>
						<br> 商品划价： <input type="number" name="linePrice" id="banji" />
						<br />
						<br /> 商品品牌： <input type="text" name="brand" id="niannin" /><br>
						<br> 第一类目： <input type="text" name="c1" id="yuwen" /><br>
						<br> 第二类目： <input type="text" name="c2" id="shuxue" /><br>
						<br> 第一规格： <input type="text" name="size1" id="zonghe" /><br />
						<br> 第二规格： <input type="text" name="size2" id="zonghe" /><br />
						<br> <input type="submit" value="提交">
					</form>
				</div>
				<br> <br>
				<hr>
				<br> <br> <strong>所有项必须填写</strong>
			</div>
		</div>
	</div>
</body>
</html>