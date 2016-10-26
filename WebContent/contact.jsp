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
<title>首页</title>
<jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="head-bread">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.html">首页</a></li>
				<li class="active">留言</li>
			</ol>
		</div>
	</div>
	<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>联系我们</h3>
			<div class="contact-content">
				<form>
					<input type="text" class="textbox" value=" Your Name"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = '姓名';}"><br>
					<input type="text" class="textbox" value="Your E-Mail"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = '邮箱';}"><br>
					<div class="clear"></div>
					<div>
						<textarea value="Message:" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '留言板 ';}">Your Message</textarea>
						<br>
					</div>
					<div class="submit">
						<input class="btn btn-default cont-btn" type="submit" value="提交 " />
					</div>
				</form>
				<div class="map">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1578265.0941403757!2d-98.9828708842255!3d39.41170802696131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1407515822047">
					</iframe>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>