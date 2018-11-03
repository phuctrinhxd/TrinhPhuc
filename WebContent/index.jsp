<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang chủ</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="slider-container">
		<!-- Slider Image -->
		<div id="mainSlider" class="nivoSlider slider-image">
			<img src="img/giay1.jpg" alt="main slider" title="#htmlcaption1" style="width: 1920px;height: 912px" />
			<img src="img/giay1.jpg" alt="main slider" title="#htmlcaption2" style="width: 1920px;height: 912px"/>
		</div>
		<!-- Slider Caption 1 -->
		<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
			<div class="slider-progress"></div>	
			<div class="slide1-text">
				
			</div>						
		</div>
		<!-- Slider Caption 2 -->
		<div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
			<div class="slider-progress"></div>	
			<div class="slide1-text">
				<div class="middle-text">
					<div class="cap-dec wow bounceIn" data-wow-duration="0.7s" data-wow-delay="0s">
						<h3>trendy summer collection 2016</h3>
					</div>	
					<div class="cap-title wow bounceIn" data-wow-duration="1s" data-wow-delay="0.2s">
						<h1>Top fashion for women</h1>
					</div>
					<div class="cap-readmore wow bounceIn" data-wow-duration="1.1s" data-wow-delay=".5s">
						
					</div>										
				</div>										
			</div>
		</div>
	</div>
	
	<div class="featured-area pad-60">
		<div class="container">
			<div class="row">
				<div class="section-title">
					<h2>MẪU GIÀY NỔI BẬT</h2>
					<div class="title-icon">
						<span><i class="fa fa-angle-left"></i> <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="product-tab">
						<!-- Nav tabs -->		
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<div class="row">
									<div class="product-curosel">
										<!-- single-product start -->
										<div class="col-md-12">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />
													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-cart">
															<a href="order.jsp"><button><i class="fa fa-usd" aria-hidden="true"></i> đặt hàng</button>
															</a>
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike Nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->
										<!-- single-product start -->
										<div class="col-md-12">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />
													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-cart">
															<a href="order.jsp"><button><i class="fa fa-usd" aria-hidden="true"></i> đặt hàng</button>
															</a>
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike Nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />
													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-cart">
															<a href="order.jsp"><button><i class="fa fa-usd" aria-hidden="true"></i> đặt hàng</button>
															</a>
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike Nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />
													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-cart">
															<a href="order.jsp"><button><i class="fa fa-usd" aria-hidden="true"></i> đặt hàng</button>
															</a>
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike Nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>					
									</div>
								</div>								
							</div>
						</div>
					</div>						
				</div>
			</div>
		</div>
	</div>
	
	<div class="latest-blog-area pad-60">
		<div class="container">
			<div class="row">
				<div class="section-title">
					<h2><a href="blog.jsp">TIN TỨC</a></h2>
					<div class="title-icon">
						<span><i class="fa fa-angle-left"></i> <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
			</div>			
			<div class="row">
				<div class="blog-curosel">
					<div class="col-md-12">
						<div class="blog-wrapper">
							<div class="blog-img">
								<a href="single-blog.jsp">
									<img src="img/blog/bg.jpg" alt="Nike" />
								</a>
							</div>
							<div class="blog-content">
								<h3><a href="single-blog.jsp">
									Những mẫu giày hot		
								</a></h3>					
							</div>
						</div>
					</div>
					<div class="col-md-12">
					<div class="blog-wrapper">
							<div class="blog-img">
								<a href="single-blog.jsp">
									<img src="img/blog/halloween.jpg" alt="" />
								</a>
							</div>
							<div class="blog-content">
								<h3><a href="single-blog.jsp">
									Halloween không sợ ma, chỉ sợ thiếu giày
								</a></h3>												
							</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="blog-wrapper">
						
						<div class="blog-img">
							<a href="single-blog.jsp">
								<img src="img/blog/logoGiayNe.png" alt="Giay3.jpg" />
							</a>
						</div>
						<div class="blog-content">
							<h3>
								<a href="single-blog.jsp">
									Khai trương shop giayne ptt
								</a></h3>
							</div>
					</div>
				</div>	
			</div>
		</div>
	</div>
</div>
		
	
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>