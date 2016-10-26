<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<jsp:include page="include/head.jsp"></jsp:include>
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
</head>
<body>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="head-bread">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">主页</a></li>
				<li><a href="register.html">登录</a></li>
				<li class="active">注册</li>
			</ol>
		</div>
	</div>
	<!-- reg-form -->
	<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>现在注册</h3>
				<p>欢迎，请跟随提示继续操作</p>
				<p>
					如果您已经注册 <a href="#">点击这里</a>
				</p>
				<form>
					<ul>
						<li class="text-info">姓:</li>
						<li><input type="text" value=""></li>
					</ul>
					<ul>
						<li class="text-info">名:</li>
						<li><input type="text" value=""></li>
					</ul>
					<ul>
						<li class="text-info">Email:</li>
						<li><input type="text" value=""></li>
					</ul>
					<ul>
						<li class="text-info">密码:</li>
						<li><input type="password" value=""></li>
					</ul>
					<ul>
						<li class="text-info">确认密码:</li>
						<li><input type="password" value=""></li>
					</ul>
					<ul>
						<li class="text-info">手机号:</li>
						<li><input type="text" value=""></li>
					</ul>
					<input type="submit" value="注册">
					<p class="click">
						点击按钮，表示您已同意 <a href="#">条款</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>