<%@ page language="java" 
	import="com.lxsh.model.*"
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
				<li><a href="products.jsp">产品</a></li>
				<li class="active">购物车</li>
			</ol>
		</div>
	</div>
	<!-- check-out -->
	<div class="check">
		<div class="container">
			<%
			List<ShopCart> shopCartList = (List<ShopCart>)request.getAttribute("shopCartList");
			Double totalPrice = 0.0;
			Double postPrice = 10.0;
			if(shopCartList.size()!=0){
				for(ShopCart sc: shopCartList){
					totalPrice += sc.getGprice()*sc.getNum();
				}
			}
			%>
			<div class="col-md-3 cart-total">
				
				<a class="continue" href="index_handle.jsp">继续购物</a>
				<div class="price-details">
					<h3>详细价格</h3>
					<span>总价</span> <span class="total1">￥<%=totalPrice %></span> <span>打折</span> <span
						class="total1">无折扣</span> <span>邮费</span> <span
						class="total1">￥<%=postPrice %></span>
					<div class="clearfix"></div>
				</div>
				<hr class="featurette-divider">
				<ul class="total_price">
					<li class="last_price">
						<h4>合计</h4>
					</li>
					<li class="last_price"><span>￥<%=totalPrice+postPrice %></span></li>
					<div class="clearfix"></div>
				</ul>
				<div class="clearfix"></div>
				<a class="order" href="#">下单</a>
			</div>
			<div class="col-md-9 cart-items">
				<h1>我的购物袋</h1>
				<script>
					$(document).ready(function(c) {
						$('.close1').on('click', function(c) {
							$('.cart-header').fadeOut('slow', function(c) {
								$('.cart-header').remove();
							});
						});
					});
				</script>
			<%
			if(shopCartList.size()!=0){
				for(ShopCart sc: shopCartList){%>
				<div class="cart-header">
					<div class="close1">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</div>
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="resources/images/grid8.jpg" class="img-responsive"
								alt="" />
						</div>
						<div class="cart-item-info">
							<ul class="qty">
								<li><p>尺寸: <%=sc.getGsize() %></p></li>
								<li><p>数量 : <%=sc.getNum()%></p></li>
								<li><p>单价 : ￥<%=sc.getGprice()%></p></li>
							</ul>
							<div class="delivery">
								<p>支付费用 : ￥<%=sc.getGprice()*sc.getNum()%>(不包含邮费)</p>
								<span>1-2个工作日内发货</span>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
				<%}
			} else {
				%>
				<p>你还没有添加任何商品，去<a href="index_handle.jsp">首页</a>看看</p>
				<%
			}
			%>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>