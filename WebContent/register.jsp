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
		/* $('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		}); */

		$(":text").focusout(function(){
			var username = $(":text").val();
			if(""==username){
				$(".text-null").css('display','inline');
				$(".text-ok").css('display','none');
				$(".text-exist").css('display','none');
			} else {
				$.ajax({
					url:'checkusername',
					data:{'username':username},
					success:function(data){
						if("success"==data){
							$(".text-ok").css('display','inline');
							$(".text-exist").css('display','none');
							$(".text-null").css('display','none');
						} else if ("fail"==data) {
							$(".text-exist").css('display','inline');
							$(".text-ok").css('display','none');
							$(".text-null").css('display','none');
						}
					}
				});
			}
		});

		$(":password:first").focusout(function(){
			var pwd = $(":password:first").val();
			if(""==pwd){
				$(".pwd-null").css('display','inline');
				$(".pwd-ok").css('display','none');
				$(".pwd-error").css('display','none');
			} else {
				$(":password:last").css('display','inline');
				$(".pwd-ok").css('display','inline');
				$(".pwd-error").css('display','none');
				$(".pwd-null").css('display','none');
			}
		});

		$(":password:last").focusout(function(){
			var pwd = $(":password:first").val();
			var confrim = $(":password:last").val();
			if(""==confrim){
				$(".password-null").css('display','inline');
				$(".password-ok").css('display','none');
				$(".password-error").css('display','none');
			} else if(pwd==confrim){
				$(".password-ok").css('display','inline');
				$(".password-error").css('display','none');
				$(".password-null").css('display','none');
			} else if (pwd!=confrim){
				$(".password-error").css('display','inline');
				$(".password-ok").css('display','none');
				$(".password-null").css('display','none');
			}
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
				<li><a href="index.jsp">主页</a></li>
				<li><a href="register.jsp">登录</a></li>
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
				<form action="register" method="post">
					<ul>
						<li class="text-info">用户名:</li>
						<li><input type="text" name="uname">
							<span class="text-ok" style="color:green;display:none">用户名可用</span>
							<span class="text-exist" style="color:red;display:none">用户名已存在</span>
							<span class="text-null" style="color:red;display:none">用户名不能为空</span>
						</li>
					</ul>
					<ul>
						<li class="text-info">密码:</li>
						<li><input type="password" name="upwd">
							<span class="pwd-ok" style="color:green;display:none">密码OK</span>
							<span class="pwd-error" style="color:red;display:none">6-12位数字或字母</span>
							<span class="pwd-null" style="color:red;display:none">密码不能为空</span>
						</li>
					</ul>
					<ul>
						<li class="text-info">确认密码:</li>
						<li><input type="password" style="display: none">
							<span class="password-ok" style="color:green;display:none">密码一致</span>
							<span class="password-error" style="color:red;display:none">密码不一致</span>
							<span class="password-null" style="color:red;display:none">确认密码不能为空</span>
						</li>
					</ul>
					<ul>
						<li class="text-info">地址:</li>
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