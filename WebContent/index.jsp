<%@page import="com.lxsh.service.impl.GoodsServiceImpl"%>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
	import="com.lxsh.service.*"
	import="java.util.*"
	import="com.lxsh.model.*"
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
<style type="text/css">
	table{
		width:90%;
		padding:0px;
		margin:0px auto;
	}
</style>
</head>
<body>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/" title="网店">网店链接</a>
	</div>
	<div class="header-end">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="./resources/images/shoe3.jpg" alt="...">
						<div class="carousel-caption car-re-posn">
							<h3>AirMax</h3>
							<h4>You feel to fall</h4>
							<span class="color-bar"></span>
						</div>
					</div>
					<div class="item">
						<img src="./resources/images/shoe1.jpg" alt="...">
						<div class="carousel-caption car-re-posn">
							<h3>AirMax</h3>
							<h4>You feel to fall</h4>
							<span class="color-bar"></span>
						</div>
					</div>
					<div class="item">
						<img src="./resources/images/shoe2.jpg" alt="...">
						<div class="carousel-caption car-re-posn">
							<h3>AirMax</h3>
							<h4>You feel to fall</h4>
							<span class="color-bar"></span>
						</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left car-icn" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right car-icn"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="feel-fall">
		<div class="container">
			<div class="pull-left fal-box">
				<div class=" fall-left">
					<h3>Fall</h3>
					<img src="resources/images/f-l.png" alt="/"
						class="img-responsive fl-img-wid">
					<p>
						灵感和创新<br>针对每一个运动员
					</p>
					<span class="fel-fal-bar"></span>
				</div>
			</div>
			<div class="pull-right fel-box">
				<div class="feel-right">
					<h3>Feel</h3>
					<img src="resources/images/f-r.png" alt="/"
						class="img-responsive fl-img-wid">
					<p>
						灵感和创新<br> 针对每一个运动员
					</p>
					<span class="fel-fal-bar2"></span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="shop-grid">
		<div class="container">
		<table>
    	<%
    	/* IGoodsService goodsService = new GoodsServiceImpl();
		List<Goods> list = goodsService.getRecentGoods(); */
						List<Goods> list = (List<Goods>)request.getAttribute("list");
		if(list==null){
			out.print("噩噩噩噩噩。。。。。");
		}else{
			int index = 0;
	    	for(int k=0;k<2;k++){
				%><tr height="300px"><%
	   			int count = 0;
	    		for(int i=0;i<3;i++){
	    			Goods good = list.get(index);
	    			%><td width="500px">
						<div class="grid-stn">
							<!-- normal -->
							<div class="ih-item square effect3 bottom_to_top">
								<div class="bottom-2-top">
									<div class="img">
										<img src="resources/images/grid4.jpg" alt="/"
											class="img-responsive gri-wid">
									</div>
									<div class="info">
										<div class="pull-left styl-hdn">
											<h3><%=good.getGname() %></h3>
										</div>
										<div class="pull-right styl-price">
											<p>
												<a href="#" class="item_add"><span
													class="glyphicon glyphicon-shopping-cart grid-cart"
													aria-hidden="true"></span> <span class=" item_price">￥<%=good.getGprice() %></span></a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- end normal -->
							<div class="quick-view">
								<a href="single.jsp">详细浏览</a>
							</div>
						</div>
						<div class="clearfix"></div>
	    			</td>
					<%
		    		count++;
					index++;
		    		if(count==3){
		    			break;
		    		}
	    		}
	   			%></tr>
			<%}
	    	}
    	%>
		</table>
		</div>
	</div>
	<div class="sub-news">
		<div class="container">
			<form>
				<h3>NewsLetter</h3>
				<input type="text" class="sub-email" value="Email"
					onFocus="this.value = '';"
					onBlur="if (this.value == '') {this.value = 'Email';}"> <a
					class="btn btn-default subs-btn" href="#" role="button">SUBSCRIBE</a>
			</form>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>