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
<title>所有商品</title>
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
			<div class="col-md-9 grid-gallery">
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid5.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid7.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid8.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid9.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid10.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid11.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid12.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid13.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="col-md-4 grid-stn simpleCart_shelfItem">
					<!-- normal -->
					<div class="ih-item square effect3 bottom_to_top">
						<div class="bottom-2-top">
							<div class="img">
								<img src="resources/images/grid14.jpg" alt="/"
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
					<!-- end normal -->
					<div class="quick-view">
						<a href="single.jsp">快速浏览</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 grid-details">
				<div class="grid-addon">
					<section class="sky-form">
					<div class="product_right">
						<h4 class="m_2">
							<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>种类
						</h4>
						<div class="tab1">
							<ul class="place">
								<li class="sort">鞋子</li>
								<li class="by"><img src="resources/images/do.png" alt=""></li>
								<div class="clearfix"></div>
							</ul>
							<div class="single-bottom">
								<a href="#"><p>跑步</p></a> <a href="#"><p>足球</p></a> <a href="#"><p>日常</p></a>
								<a href="#"><p>旅游</p></a>
							</div>
						</div>
						<div class="tab2">
							<ul class="place">
								<li class="sort">服装</li>
								<li class="by"><img src="resources/images/do.png" alt=""></li>
								<div class="clearfix"></div>
							</ul>
							<div class="single-bottom">
								<a href="#"><p>Tracks</p></a> <a href="#"><p>T恤</p></a> <a
									href="#"><p>发饰</p></a> <a href="#"><p>手环</p></a>
							</div>
						</div>
						<div class="tab3">
							<ul class="place">
								<li class="sort">Gear</li>
								<li class="by"><img src="resources/images/do.png" alt=""></li>
								<div class="clearfix"></div>
							</ul>
							<div class="single-bottom">
								<a href="#"><p>跑步应用</p></a> <a href="#"><p>健身应用</p></a> <a
									href="#"><p>耐克手环</p></a>
							</div>
						</div>
						<!--script-->
						<script>
							$(document).ready(function() {
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();

								$(".tab1 ul").click(function() {
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function() {
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function() {
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function() {
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab5 ul").click(function() {
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
							});
						</script>
						<!-- script -->
					</section>
					<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>折扣
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>0% - 10% </label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>40% - 50% (5)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>30%
								- 20% (7)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>10% - 5% (2)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>其他(50)</label>
						</div>
					</div>
					</section>
					<!---->
					<link rel="stylesheet" type="text/css"
						href="resources/css/jquery-ui.css" />
					<script type='text/javascript'>
						//<![CDATA[ 
						$(window)
								.load(
										function() {
											$("#slider-range")
													.slider(
															{
																range : true,
																min : 0,
																max : 400000,
																values : [
																		2500,
																		350000 ],
																slide : function(
																		event,
																		ui) {
																	$("#amount")
																			.val(
																					"$"
																							+ ui.values[0]
																							+ " - $"
																							+ ui.values[1]);
																}
															});
											$("#amount")
													.val(
															"$"
																	+ $(
																			"#slider-range")
																			.slider(
																					"values",
																					0)
																	+ " - $"
																	+ $(
																			"#slider-range")
																			.slider(
																					"values",
																					1));

										});//]]>
					</script>
					<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>类型
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Air Max (30)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Armagadon (30)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Helium
								(30)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Kyron (30)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Napolean
								(30)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Foot Rock (30)</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Radiated
								(30)</label> <label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Spiked (30)</label>
						</div>
					</div>
					</section>
					<section class="sky-form">
					<h4>
						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>品牌
					</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox" checked=""><i></i>Roadstar</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Tornado</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Kissan</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Oakley</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Manga</label> <label class="checkbox"><input
								type="checkbox" name="checkbox"><i></i>Wega</label> <label
								class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kings</label>
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i></i>Zumba</label>
						</div>
					</div>
					</section>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>