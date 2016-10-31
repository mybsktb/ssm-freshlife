<%@ page language="java" import="com.lxsh.model.GoodDetail"
	import="java.util.*" contentType="text/html; charset=UTF-8"
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
<title>商品详情</title>
<jsp:include page="include/head.jsp"></jsp:include>
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		/* $('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
 */
		$("#addToShopCart").click(function(){
			var gid = $("#gid").text();
			var num = $("#num").val();
			var gsize = $("#gsize").val();
			var cid = $("#cid").val();
			var gprice = $("#gprice").text();
			$.ajax({
				url:'addToShopCart',
				data:{'gid':gid,'num':num,'gsize':gsize,'cid':cid,'gprice':gprice},
				type:'post',
				success:function(data){
						if(data){
							alert("添加成功！");
							location.reload();
						}else{
							alert("添加失败！！");
						}
					}
				});
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
				<li><a href="#">Home</a></li>
				<li><a href="#">Men</a></li>
				<li class="active">Shop</li>
			</ol>
		</div>
	</div>
	<div class="showcase-grid">
		<div class="container">
			<%
				List<GoodDetail> detail = (List<GoodDetail>) request.getAttribute("detail");
				if (detail == null) {

				} else {
			%>
			<div class="col-md-8 showcase">
				<div class="flexslider">
					<ul class="slides">
						<li data-thumb="resources/images/show.jpg">
							<div class="thumb-image">
								<img src="resources/images/show.jpg" data-imagezoom="true"
									class="img-responsive">
							</div>
						</li>
						<li data-thumb="resources/images/show1.jpg">
							<div class="thumb-image">
								<img src="resources/images/show1.jpg" data-imagezoom="true"
									class="img-responsive">
							</div>
						</li>
						<li data-thumb="resources/images/show2.jpg">
							<div class="thumb-image">
								<img src="resources/images/show2.jpg" data-imagezoom="true"
									class="img-responsive">
							</div>
						</li>
						<li data-thumb="resources/images/show3.jpg">
							<div class="thumb-image">
								<img src="resources/images/show3.jpg" data-imagezoom="true"
									class="img-responsive">
							</div>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-4 showcase">
				<div class="showcase-rt-top">
					<div class="pull-left shoe-name">
						<p style="display: none;" id="gid"><%=detail.get(0).getGid()%></p>
						<h3><%=detail.get(0).getGname()%></h3>
						<p><%=detail.get(0).getGsexname()%><%=detail.get(0).getGtypename()%></p>
						<h4>
							￥<span id="gprice"><%=detail.get(0).getGprice()%></span>
						</h4>
					</div>
					<div class="clearfix"></div>
				</div>
				<hr class="featurette-divider">
				<div class="shocase-rt-bot">
					<div class="float-qty-chart">
						<ul>
							<li class="qty">
								<h4>颜色</h4> <select class="form-control qnty-chrt" id="cid">
									<%
										for (GoodDetail detl : detail) {
									%>
									<option value="<%=detl.getCid()%>"><%=detl.getCname()%></option>
									<%
										}
									%>
							</select>
							</li>
							<li class="qty">
								<h3>选择尺寸</h3> <select class="form-control siz-chrt" id="gsize">
									<%
										for (GoodDetail detl : detail) {
									%>
									<option><%=detl.getGsize()%></option>
									<%
										}
									%>
							</select>
							</li>
							<li class="qty">
								<h3>数量</h3>
								<select class="form-control siz-chrt" id="num">
									<%
										for (int i=1; i<=detail.get(0).getGnum();i++) {
									%>
									<option value="<%=i%>"><%=i%></option>
									<%
										}
									%>
								</select>
								<span>库存 </span><%=detail.get(0).getGnum()%><span> 件 </span>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<ul>
						<li class="ad-2-crt simpleCart_shelfItem"><a
							class="btn item_add" role="button" id="addToShopCart">加入购物车</a> <a
							class="btn" href="#" role="button">立即购买</a></li>
					</ul>
				</div>
				<div class="showcase-last">
					<h3>产品详情</h3>
					<ul>
						<li><%=detail.get(0).getGcontext()%></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<%
		}
	%>

	<div class="specifications">
		<div class="container">
			<h3>产品详情</h3>
			<div class="detai-tabs">
				<!-- Nav tabs -->
				<ul class="nav nav-pills tab-nike" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						aria-controls="home" role="tab" data-toggle="tab">最突出的</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">描述</a></li>
					<li role="presentation"><a href="#messages"
						aria-controls="messages" role="tab" data-toggle="tab">条款</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">
						<p>全长Max Air单元提供出色的缓冲，增强了灵活性，通过脚踏打击实现更平滑的过渡。</p>
						<p>Dynamic Flywire cables integrate with the laces and wrap
							your midfoot for a truly adaptive, supportive fit.</p>
					</div>
					<div role="tabpanel" class="tab-pane" id="profile">
						<p>耐克是运动器材，鞋类和服装的领先制造商和供应商之一。耐克是一个全球性品牌，它不断创造使用高科技和设计创新的产品。耐克在Snapdeal有大量的男士运动鞋。您可以探索我们的篮球鞋，足球鞋，板球鞋，网球鞋，跑步鞋，每日鞋或生活鞋。从红色，黄色，绿色，蓝色，棕色，黑色，灰色，橄榄色，粉红色，米色和白色的鲜艳的颜色选择一系列的运动鞋。专为高性能设计，这些鞋子符合你玩或跑的方式。这些鞋子有皮革，帆布，麂皮革，人造皮革，网眼等材料，轻巧，舒适，坚固，极具运动性。所有耐克鞋的鞋底设计为提供增加的舒适度，并且材料足够好以提供改善的贴合性。这些鞋易于维护，并持续一段很长时间给予他们的耐用性。购买耐克鞋男士在线与我们在一些令人难以置信的折扣和伟大的价格。所以得到更快，运行更​​远的你的耐克鞋，跟踪你有多难玩。</p>
					</div>
					<div role="tabpanel" class="tab-pane" id="messages">
						图像与产品的实际颜色可能略有差异，一切以实物为准。</div>
				</div>
			</div>
		</div>
	</div>

<!-- 	<div class="you-might-like">
		<div class="container">
			<h3 class="you-might">猜你喜欢</h3>
			<div class="col-md-4 grid-stn simpleCart_shelfItem">
				normal
				<div class="ih-item square effect3 bottom_to_top">
					<div class="bottom-2-top">
						<div class="img">
							<img src="resources/images/grid4.jpg" alt="/"
								class="img-responsive gri-wid">
						</div>
						<div class="info">
							<div class="pull-left styl-hdn">
								<h3>风格 01</h3>
							</div>
							<div class="pull-right styl-price">
								<p>
									<a href="#" class="item_add"><span
										class="glyphicon glyphicon-shopping-cart grid-cart"
										aria-hidden="true"></span> <span class=" item_price">$190</span></a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				end normal
				<div class="quick-view">
					<a href="single.jsp">快速浏览</a>
				</div>
			</div>
			<div class="col-md-4 grid-stn simpleCart_shelfItem">
				normal
				<div class="ih-item square effect3 bottom_to_top">
					<div class="bottom-2-top">
						<div class="img">
							<img src="resources/images/grid6.jpg" alt="/"
								class="img-responsive gri-wid">
						</div>
						<div class="info">
							<div class="pull-left styl-hdn">
								<h3>风格 01</h3>
							</div>
							<div class="pull-right styl-price">
								<p>
									<a href="#" class="item_add"><span
										class="glyphicon glyphicon-shopping-cart grid-cart"
										aria-hidden="true"></span> <span class=" item_price">$190</span></a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				end normal
				<div class="quick-view">
					<a href="single.jsp">快速浏览</a>
				</div>
			</div>
			<div class="col-md-4 grid-stn simpleCart_shelfItem">
				normal
				<div class="ih-item square effect3 bottom_to_top">
					<div class="bottom-2-top">
						<div class="img">
							<img src="resources/images/grid3.jpg" alt="/"
								class="img-responsive gri-wid">
						</div>
						<div class="info">
							<div class="pull-left styl-hdn">
								<h3>风格 01</h3>
							</div>
							<div class="pull-right styl-price">
								<p>
									<a href="#" class="item_add"><span
										class="glyphicon glyphicon-shopping-cart grid-cart"
										aria-hidden="true"></span> <span class=" item_price">$190</span></a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				end normal
				<div class="quick-view">
					<a href="single.jsp">快速浏览</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div> -->
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>