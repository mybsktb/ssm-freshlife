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
<title>商品</title>
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
<style type="text/css">
	table{
		padding:0px;
		float: left;
	}
</style>
</head>
<body>
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="head-bread">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="index.jsp">主页</a></li>
				<li class="active">产品</li>
			</ol>
		</div>
	</div>
	<div class="products-gallery">
		<div class="container">
		<table>
    	<%
// 		List<Goods> list = (List<Goods>)request.getAttribute("list");
// 		if(list==null){
// 			out.print("噩噩噩噩噩。。。。。");
// 		}else{
			int index = 0;
	    	for(int k=0;k<4;k++){
				%><tr height="300px"><%
	   			int count = 0;
	    		for(int i=0;i<3;i++){
// 	    			Goods good = list.get(index);
	    			%><td width="280px">
						<div class="grid-stn">
							<!-- normal -->
							<div class="ih-item square effect3 bottom_to_top">
								<div class="bottom-2-top">
									<div class="img">
										<img src="http://localhost:8080/ssm-freshlife/resources/images/grid3.jpg" alt="/"
											class="img-responsive gri-wid">
									</div>
									<div class="info">
										<div class="pull-left styl-hdn">
											<h3>商品名</h3>
										</div>
										<div class="pull-right styl-price">
											<p>
												<a href="#" class="item_add"><span
													class="glyphicon glyphicon-shopping-cart grid-cart"
													aria-hidden="true"></span> <span class=" item_price">￥299</span></a>
											</p>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
							<!-- end normal -->
							<div class="quick-view">
								<a href="single.jsp?id=">详细浏览</a>
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
			<% }
	    	/*} */
    	%>
		</table>
			<jsp:include page="include/products_right.jsp"></jsp:include>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>