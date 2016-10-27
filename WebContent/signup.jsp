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
		<title>登录</title>
		<jsp:include page="include/head.jsp"></jsp:include>
        <script>
            // Can also be used with $(document).ready()
            $(window).load(function() {
              $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
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
                    <li class="active">登录</li>
                </ol>
            </div>
        </div>
        <!--signup-->
        <!-- login-page -->
        <div class="login">
            <div class="container">
                <div class="login-grids">
                    <div class="col-md-6 log">
                             <h3>登录</h3>
                             <div class="strip"></div>
                             <p>欢迎，请跟随提示继续操作</p>
                             <p>如果您已登录，请 <a href="#">点击这里</a></p>
                             <form action="login" method="post">
                                 <h5>用户名:</h5>	
                                 <input type="text" name="username">
                                 <h5>密码:</h5>
                                 <input type="password" name="password"><br>					
                                 <input type="submit" value="登录">

                             </form>
                            <a href="#">忘记密码 ?</a>
                    </div>
                    <div class="col-md-6 login-right">
                            <h3>注册新账号</h3>
                            <div class="strip"></div>
                            <p>通过在我们的商店创建帐户，您将能够更快地通过结帐流程，存储多个送货地址，查看和跟踪您的帐户中的订单和更多。</p>
                            <a href="register.jsp" class="button">创建一个账户</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</body>
</html>