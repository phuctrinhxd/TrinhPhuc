<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Trang chủ</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="slider-container">
		<div id="mainSlider" class="nivoSlider slider-image">
			<img src="img/blog/logoGiayNe.png" alt="main slider" title="#htmlcaption1" />
			<img src="img/blog/bg.jpg" alt="main slider" title="#htmlcaption2" />
		</div>
	</div>
	
	<div class="featured-area pad-60">
		<div class="container">
			<div class="row">
				<div class="section-title">
					<h2>MẪU GIÀY MỚI NHẤT</h2>
					<div class="title-icon">
						<span><i class="fa fa-angle-left"></i> <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="product-tab">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<div class="row">
									<div class="product-curosel">
									<c:forEach items="${listSP}" var="sanpham">
										<div class="col-md-12">
											<div class="single-product">
												<div class="product-img">
													<a href="ChiTietSPController?masp=<c:out value="${sanpham.getMaSanPham()}"/>">
														<img src="<c:out value="${sanpham.getHinhAnh()}"/>" alt="" />
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
													<h3><a href="ChiTietSPController?masp=<c:out value="${sanpham.getMaSanPham()}"/>">
													<c:out value="${sanpham.getTenSanPham()}"/>
													</a></h3>
													<div class="price">
														<span><c:out value="${sanpham.getGiaBan()}"/>đ</span>
														<c:if test="${sanpham.getKhuyenMai() > 0 }">
														<span class="old"><c:out value="${sanpham.getGia()}"/>đ</span>
														</c:if>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
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
					<h2><a href="TinTucController">TIN TỨC</a></h2>
					<div class="title-icon">
						<span><i class="fa fa-angle-left"></i> <i class="fa fa-angle-right"></i></span>
					</div>
				</div>
			</div>			
			<div class="row">
				<div class="blog-curosel">
				<c:forEach var="blog" items="${ListTT}">
					<div class="col-md-12">
						<div class="blog-wrapper">
							<div class="blog-img">
								<a href="ChiTietTTController?matt=<c:out value="${blog.getMaTinTuc()}"/>">
									<img src="<c:out value="${blog.getHinhAnh()}"/>" alt="" />
								</a>
							</div>
							<div class="blog-content">
								<h3><a href="ChiTietTTController?matt=<c:out value="${blog.getMaTinTuc()}"/>">
									<c:out value="${blog.getTieuDe()}"/>		
								</a></h3>					
							</div>
						</div>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
		
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>