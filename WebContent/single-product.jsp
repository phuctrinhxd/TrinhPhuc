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
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-5 col-sm-5 col-xs-12">
								<div class="single-pro-tab-content">
									<!-- Tab panes -->
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane active" id="home"><a href="#"><img class="zoom" src="img/giay1.jpg" data-zoom-image="img/giay1.jpg" alt="" /></a></div>
										<div role="tabpanel" class="tab-pane" id="profile"><a href="#"><img class="zoom" src="img/giay1.jpg" data-zoom-image="img/giay1.jpg" alt="" /></a></div>
										<div role="tabpanel" class="tab-pane" id="messages"><a href="#"><img class="zoom" src="img/giay1.jpg" data-zoom-image="img/giay1.jpg" alt="" /></a></div>
										<div role="tabpanel" class="tab-pane" id="settings"><a href="#"><img class="zoom" src="img/giay1.jpg" data-zoom-image="img/giay1.jpg" alt="" /></a></div>
										<div role="tabpanel" class="tab-pane" id="settingss"><a href="#"><img class="zoom" src="img/giay1.jpg" data-zoom-image="img/giay1.jpg" alt="" /></a></div>
									</div>
									<!-- Nav tabs -->
									<ul class="single-product-tab" role="tablist">
										<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><img src="img/giay1.jpg" alt="" /></a></li>
										<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"><img src="img/giay1.jpg" alt="" /></a></li>
										<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><img src="img/giay1.jpg" alt="" /></a></li>
										<li role="presentation"><a href="#settingss" aria-controls="settings" role="tab" data-toggle="tab"><img src="img/giay1.jpg" alt="" /></a></li>
									</ul>							
								</div>								
							</div>
							<div class="col-md-7 col-sm-7 col-xs-12 shop-list shop-details">								
								<div class="product-content">
									<h3><a href="single-product.html">Giày nike nam</a></h3>
									<div class="price">
										<span>900.000đ</span>
										<span class="old">950.000đ</span>
									</div>

									<p>Sản phẩm giày nike nam màu đen. Phù hợp với cả nam và nữ. Thích hợp khi hoạt động thể thao, đi dạo phố.</p>
									<div class="pro-size">
										<label>size <span>*</span></label>
										<select>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="41">41</option>
											<option value="42">42</option>
										</select>
									</div>
									<div class="gach-ngang-xuong-dong"></div>
									<div class="pro-size">
										<label>số lượng <span>*</span></label><br>
										<div class="cart-plus">
											<form action="#">
												<div><input type="number" value="1" min="1" /></div>
											</form>
										</div>
									</div>
									<div class="gach-ngang-xuong-dong"></div>
									<div class="product-action">
										<div class="button-cart">
											<a href="order.jsp"><button><i class="fa fa-usd" aria-hidden="true"></i> đặt hàng</button></a>
											<button><i class="fa fa-shopping-cart"></i> giỏ hàng</button>
										</div>
									</div>	
								</div>							
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<div class="product-tabs">
										<div>
										  <!-- Nav tabs -->
										  <ul class="pro-details-tab" role="tablist">
											<li role="presentation" class="active"><a href="#tab-desc" aria-controls="tab-desc" role="tab" data-toggle="tab">Miêu tả</a></li>
											<li role="presentation"><a href="#page-info" aria-controls="page-info" role="tab" data-toggle="tab">Thông tin sản phẩm </a></li>
											<li role="presentation"><a href="#page-comments" aria-controls="page-comments" role="tab" data-toggle="tab">Bình luận</a></li>
										  </ul>
										  <!-- Tab panes -->
										  <div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="tab-desc">
												<div class="product-tab-desc">
													<p>Giày nike nam là sản phẩm chính hãng thuộc hãng nike.</p>
													<ul id="product-desc-t">
														<li>Size: 38, 39, 40, 41, 42</li>
														<li>Màu: đen</li>
														<li>Giới tính: Nam, nữ</li>
													</ul>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="page-info">
												<div class="product-tab-desc">
													<p>Sản phẩm giày nike nam là sản phẩm chính hãng thuộc hãng nike. Giày màu đen, đế giày màu đỏ. Sản phẩm mang cực êm chân, phù hợp khi vận động thể thao, đi dạo.</p>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="page-comments">
												<div class="product-tab-desc">
													<div class="product-page-comments">
														<ul>
															<li>
																<div class="product-comments">
																
																	<div class="product-comments-content">
																		<p><strong>trần anh đức</strong>
																		<a href="#"><span class="delete-comment"><i class="fa fa-times"></i></span></a>
																		</p>
																		<div class="desc">
																			Sản phẩm cực đẹp. Mang vào cảm thấy thích vô cùng
																		</div>
																	</div>
																</div>
															</li>
														</ul>
														<div class="review-form-wrapper">
															<h3>Thêm bình luận</h3>
															<form action="#">
																<textarea id="product-message" cols="30" rows="10" placeholder="Bình luận của bạn"></textarea>
																<input type="submit" value="Bình luận" />
															</form>
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

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>