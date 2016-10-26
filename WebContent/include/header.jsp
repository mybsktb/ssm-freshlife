<%@ page language="java" contentType="text/html; charset=UTF-8"
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
				<a href="index.html">N-AIR</a>
			</div>
			<div class="login-bars">
				<a class="btn btn-default log-bar" href="register.html"
					role="button">退出登录</a> <a class="btn btn-default log-bar"
					href="signup.html" role="button">登录</a>
				<div class="cart box_1">
					<a href="checkout.html">
						<h3>
							<div class="total">
								<span class="simpleCart_total"></span>(<span
									id="simpleCart_quantity" class="simpleCart_quantity"></span>)
							</div>
						</h3>
					</a>
					<p>
						<a href="javascript:;" class="simpleCart_empty">购物车</a>
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
									<li><a href="products.html">鞋</a></li>
									<li><a href="products.html">T恤</a></li>
									<li><a href="products.html">上衣</a></li>
									<li class="divider"></li>
									<li><a href="products.html">潮流</a></li>
									<li class="divider"></li>
									<li><a href="products.html">装备</a></li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">男士<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4 menu-img-pad">
											<ul class="multi-column-dropdown">
												<li><a href="products.html">跑步</a></li>
												<li><a href="products.html">足球</a></li>
												<li><a href="products.html">板球</a></li>
												<li class="divider"></li>
												<li><a href="products.html">网球</a></li>
												<li class="divider"></li>
												<li><a href="products.html">休闲</a></li>
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
												<li><a href="products.html">上衣</a></li>
												<li><a href="products.html">下衣</a></li>
												<li><a href="products.html">瑜伽裤</a></li>
												<li class="divider"></li>
												<li><a href="products.html">运动</a></li>
												<li class="divider"></li>
												<li><a href="products.html">体操</a></li>
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
									<li><a href="products.html">T恤</a></li>
									<li><a href="products.html">短裤</a></li>
									<li><a href="products.html">装备</a></li>
									<li class="divider"></li>
									<li><a href="products.html">手表</a></li>
									<li class="divider"></li>
									<li><a href="products.html">鞋</a></li>
								</ul></li>
							<li><a href="contact.html">留言</a></li>
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