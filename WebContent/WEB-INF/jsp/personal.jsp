<%@ page language="java" 
	import="com.lxsh.model.*"
	import="com.lxsh.util.*"
	import="java.util.*"
	contentType="text/html; charset=UTF-8"
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
<jsp:include page="../../include/head.jsp"></jsp:include>
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
	<jsp:include page="../../include/header.jsp"></jsp:include>
	<div class="head-bread">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index_handle.jsp">首页</a></li>
				<li class="active">个人信息</li>
			</ol>
		</div>
	</div>
	<%
	User user = (User)session.getAttribute("user");
	if(user != null && !StringUtil.isEmpty(user.getUname())){
		
	}
	%>
	<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>