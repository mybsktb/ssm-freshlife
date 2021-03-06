<%@ page language="java" 
	import="com.lxsh.util.*"
	import="java.util.*"
	import="com.lxsh.model.*"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="header">
	<div class="container">
		<div class="header-top">
			<div class="logo">
				<a href="index_handle.jsp">FRESH-LIFE</a>
			</div>
			<div class="login-bars">
				<%
					User user = (User)session.getAttribute("user");
					if(user != null && !StringUtil.isEmpty(user.getUname())){
						%>
						<a class="btn btn-default log-bar" href="personal_jsp">${sessionScope.user.uname }</a>&nbsp;
						<a class="btn btn-default log-bar" href="logout" role="button">退出登录</a>
						<%
					} else {
						%>
						<a class="btn btn-default log-bar" href="register.jsp" role="button">注册</a> 
						<a class="btn btn-default log-bar" href="signup.jsp" role="button">登录</a>
						<%
					}
				%>
				<%
				List<ShopCart> shopCartList = (List<ShopCart>)request.getAttribute("shopCartList");
				Double totalPrice = 0.0;
				Integer count = 0;
				if(shopCartList!=null && shopCartList.size()!=0){
					count = shopCartList.size();
					for(ShopCart sc: shopCartList){
						totalPrice += sc.getGprice()*sc.getNum();
					}
				}
				%>
				<div class="cart box_1">
					<a href="shopcart">
						<h3>
							<div class="total">
								<span>￥<%=totalPrice %></span>&nbsp;(<span><%=count %></span>)
							</div>
						</h3>
					</a>
					<p>
						<a href="shopcart" class="simpleCart_empty">购物车</a>
					</p>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!---menu-----bar--->
		<div class="header-botom">
			<div class="content white">
				<nav class="navbar navbar-default nav-menu" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="clearfix"></div>
					<!--/.navbar-header-->

					<div class="collapse navbar-collapse collapse-pdng"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav nav-font">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">商店<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="products_man">男鞋</a></li>
									<li><a href="products_woman">女鞋</a></li>
									<li><a href="products_child">童鞋</a></li>
									<li class="divider"></li>
									<li><a href="products_jsp">全部商品</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">男士<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4 menu-img-pad">
											<ul class="multi-column-dropdown">
												<li><a href="products.jsp">跑鞋</a></li>
												<li><a href="products.jsp">板鞋</a></li>
												<li><a href="products.jsp">凉鞋</a></li>
												<li class="divider"></li>
												<li><a href="products.jsp">运动</a></li>
												<li class="divider"></li>
												<li><a href="products.jsp">休闲</a></li>
											</ul>
										</div>
										<div class="col-sm-4 menu-img-pad">
											<a href="#"><img src="resources/images/menu1.jpg" alt="/"
												class="img-rsponsive men-img-wid" /></a>
										</div>
										<div class="col-sm-4 menu-img-pad">
											<a href="#"><img src="resources/images/menu2.jpg" alt="/"
												class="img-rsponsive men-img-wid" /></a>
										</div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">女士<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-2">
									<div class="row">
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
												<li><a href="products.jsp">跑鞋</a></li>
												<li><a href="products.jsp">凉鞋</a></li>
												<li><a href="products.jsp">高跟鞋</a></li>
												<li class="divider"></li>
												<li><a href="products.jsp">运动</a></li>
												<li class="divider"></li>
												<li><a href="products.jsp">休闲</a></li>
											</ul>
										</div>
										<div class="col-sm-6">
											<a href="#"><img src="resources/images/menu3.jpg" alt="/"
												class="img-rsponsive men-img-wid" /></a>
										</div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">儿童<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="products.jsp">凉鞋</a></li>
									<li><a href="products.jsp">跑鞋</a></li>
									<li class="divider"></li>
									<li><a href="products.jsp">运动</a></li>
									<li class="divider"></li>
									<li><a href="products.jsp">休闲</a></li>
								</ul></li>
							<li><a href="contact.jsp">留言</a></li>
							<div class="clearfix"></div>
						</ul>
						<div class="clearfix"></div>
					</div>
					<!--/.navbar-collapse-->
					<div class="clearfix"></div>
				</nav>
				<!--/.navbar-->
				<div class="clearfix"></div>
			</div>
			<!--/.content--->
		</div>
		<!--header-bottom-->
	</div>
</div>