<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sản phẩm</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumb-list">
							<h1>Sản phẩm</h1>							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area end -->
		<!-- shop-area start -->
		<div class="shop-area">
			<div class="container">
				<div class="row">
					<!-- left-sidebar start -->
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<!-- widget-categories start -->
						<aside class="widget">
							<h3 class="sidebar-title">Thương hiệu</h3>																	
							<ul class="sidebar-menu">
								<li><label>
									<input type="checkbox"> Adidas
								</label></li>
								<li><label>
									<input type="checkbox"> Nike
								</label></li>
								<li><label>
									<input type="checkbox"> Bitis
								</label></li>
								<li><label>
									<input type="checkbox"> Khác
								</label></li>
							</ul>
						</aside>
						<!-- widget-categories end -->
						<!-- filter-by start -->
						<aside class="widget">
							<h3 class="sidebar-title">Giới tính</h3>
							<ul class="sidebar-menu">
								<li><label>
									<input type="checkbox"> Nam
								</label></li>
								<li><label>
									<input type="checkbox"> Nữ
								</label></li>
							</ul>						
						</aside>
						<!-- filter-by end -->
						<!-- widget start -->
						<aside class="widget">
							<h3 class="sidebar-title">Màu sắc</h3>
							<ul class="sidebar-menu">
								<li><label>
									<input type="checkbox"> Đen
								</label></li>
								<li><label>
									<input type="checkbox"> Trắng
								</label></li>
								<li><label>
									<input type="checkbox"> Xám
								</label></li>
								<li><label>
									<input type="checkbox"> Đỏ
								</label></li>
								<li><label>
									<input type="checkbox"> Khác
								</label></li>
							</ul>						
						</aside>
						<!-- widget end -->
						<aside class="widget">
							<h3 class="sidebar-title">Size</h3>
							<ul class="sidebar-menu">
								<li><label>
									<input type="checkbox"> 39
								</label></li>
								<li><label>
									<input type="checkbox"> 40
								</label></li>
								<li><label>
									<input type="checkbox"> 41
								</label></li>
								<li><label>
									<input type="checkbox"> 42
								</label></li>
							</ul>						
						</aside>	
						<aside class="widget">
							<h3 class="sidebar-title">Giá</h3>
							<ul class="sidebar-menu">
								<li><label>
									<input type="radio" name="gia" value="thap"> Dưới 1 triệu
								</label></li>
								<li><label>
									<input type="radio" name="gia" value="tb"> 1 triệu - 2 triệu
								</label></li>
								<li><label>
									<input type="radio" name="gia" value="cao"> Trên 2 triệu
								</label></li>
							</ul>						
						</aside>						
					</div>
					<!-- left-sidebar end -->
					<div class="col-md-9 col-sm-12 col-xs-12">
						<div class="shop-content">					
							<!-- Nav tabs -->
							<div class="shop-breadcrumb">
								<ul>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
							</div>
							<div class="short-by">
								<span class="sorting-show"> Hiển thị:</span>
								<select name="sapxephienthi">
									<option value="new">Mới nhất</option>
									<option value="low-high">Giá thấp đến cao</option>
									<option value="high-low">Giá cao đến thấp</option>
								</select>							
							</div>
							<div class="clear"></div>
							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="row">
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->	
										<!-- single-product start -->
										<div class="col-md-4 col-sm-4">
											<div class="single-product">
												<div class="product-img">
													<a href="single-product.jsp">
														<img src="img/giay1.jpg" alt="" />

													</a>
													<span class="tag-line">new</span>
													<div class="product-action">
														<div class="button-top">
															<a href="#" data-toggle="modal" data-target="#productModal"><i class="fa fa-search"></i></a>
															<a href="#" ><i class="fa fa-heart"></i></a>
														</div>
														<div class="button-cart">
															<button><i class="fa fa-shopping-cart"></i> Giỏ hàng</button>
														</div>
													</div>
												</div>
												<div class="product-content">
													<h3><a href="single-product.jsp">Nike nam</a></h3>
													<div class="price">
														<span>900.000đ</span>
														<span class="old">950.000đ</span>
													</div>
												</div>
											</div>
										</div>
										<!-- single-product end -->																	
									</div>
								</div>								
							</div>
							<br>
							<div class="clear"></div>
							<div class="shop-breadcrumb">
								<ul>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>