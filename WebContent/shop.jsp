<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sản phẩm</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<script type="text/javascript">
	var Msg = "<%=request.getAttribute("msgChiTietSP")%>";
    if (Msg != "null") {
 	alert("Sản phẩm đã hết hoặc không tồn tại");
 	}
 	</script> 
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
		<div class="shop-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
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
					<div class="col-md-9 col-sm-12 col-xs-12">
						<div class="shop-content">					
							<div class="shop-breadcrumb">
								<ul>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
							</div>
							<div class="short-by">
							<form name="SapXepForm" action="SanPhamController" method="GET">
								<input type="hidden">
								<span class="sorting-show"> Hiển thị:</span>
									<select name="sapxep" onchange="javascript:document.SapXepForm.submit();">
										<option value="new" ${sapxep=="new"?'selected' : '' }>Mới nhất</option>
										<option value="low" ${sapxep=="low"?'selected' : '' }>Giá thấp đến cao</option>
										<option value="high" ${sapxep=="high"?'selected' : '' }>Giá cao đến thấp</option>
									</select>
								
							</form>
							</div>
							<div class="clear"></div>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="row">
									<c:forEach items="${list}" var="sanpham">
										<div class="col-md-4 col-sm-4">
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
													<h3><a href="ChiTietSPController?masp=<c:out value="${sanpham.getMaSanPham()}"/>"><c:out value="${sanpham.getTenSanPham()}"/></a></h3>
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