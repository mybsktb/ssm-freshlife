<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="col-md-3 grid-details">
	<div class="grid-addon">
		<section class="sky-form">
			<div class="product_right">
				<h4 class="m_2">
					<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>种类
				</h4>
				<div class="tab1">
					<ul class="place">
						<li class="sort">男鞋</li>
						<li class="by"><img src="resources/images/do.png" alt=""></li>
						<div class="clearfix"></div>
					</ul>
					<div class="single-bottom">
						<a href="#"><p>跑鞋</p></a> 
						<a href="#"><p>运动鞋</p></a> 
						<a href="#"><p>板鞋</p></a>
					</div>
				</div>
				<div class="tab2">
					<ul class="place">
						<li class="sort">女鞋</li>
						<li class="by"><img src="resources/images/do.png" alt=""></li>
						<div class="clearfix"></div>
					</ul>
					<div class="single-bottom">
						<a href="#"><p>跑鞋</p></a> 
						<a href="#"><p>运动鞋</p></a> 
						<a href="#"><p>板鞋</p></a> <a
							href="#"><p>高跟鞋</p></a> 
							<a href="#"><p>靴子</p></a>
					</div>
				</div>
				<div class="tab3">
					<ul class="place">
						<li class="sort">童鞋</li>
						<li class="by"><img src="resources/images/do.png" alt=""></li>
						<div class="clearfix"></div>
					</ul>
					<div class="single-bottom">
						<a href="#"><p>运动鞋</p></a> 
						<a href="#"><p>板鞋</p></a> 
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
		<link rel="stylesheet" type="text/css"
			href="resources/css/jquery-ui.css" />
		<script type='text/javascript'>
			//<![CDATA[ 
			$(window).load(
					function() {
						$("#slider-range").slider(
								{
									range : true,
									min : 0,
									max : 400000,
									values : [ 2500, 350000 ],
									slide : function(event, ui) {
										$("#amount").val(
												"$" + ui.values[0] + " - $"
														+ ui.values[1]);
									}
								});
						$("#amount").val(
								"$"
										+ $("#slider-range")
												.slider("values", 0)
										+ " - $"
										+ $("#slider-range")
												.slider("values", 1));

					});//]]>
		</script>
		<section class="sky-form">
			<h4>
				<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>类型
			</h4>
			<div class="single-bottom">
				<a href="#"><p>跑鞋</p></a> 
				<a href="#"><p>运动鞋</p></a> 
				<a href="#"><p>板鞋</p></a>
			</div>
		</section>
		<section class="sky-form">
			<h4>
				<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>品牌
			</h4>
			<div class="row row1 scroll-pane">
				<div class="col col-4">
					<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>美邦</label>
					<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>李宁</label> 
					<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>唐狮</label>
				</div>
			</div>
		</section>
	</div>
</div>