<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="BEAN.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đặt hàng</title>
</head>
<body>

	
	<jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb-list">
						<h1>Đặt hàng</h1>						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="coupon-area"></div>
	<div class="checkout-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<c:if test="${not empty khachhang }">
					<div class="checkbox-form">						
						<h3>Thông tin khách hàng</h3>
						<form action="#" id="infomation-order-form">
							<div class="form-group">
								<label>Họ tên khách hàng <span class="required">*</span></label>
								<input type="text" placeholder="Họ tên" name=name class="form-control" value="Trần Văn A" />
							</div>
							<div class="form-group">
								<label>Số điện thoại <span class="required">*</span></label>
								<input type="number" placeholder="Số điện thoại" name="numberphone" class="form-control" value="0123456789" />
							</div>
							<div class="form-group">
								<label>Địa chỉ <span class="required">*</span></label>
								<textarea name="addresshome" placeholder="Địa chỉ" class="form-control">1 Võ Văn Ngân, Thủ Đức, TPHCM</textarea>
							</div>
							<input class="login-sub" type="submit" value="Sửa thông tin" />
						</form>
					</div>
					</c:if>
						
					<c:if test="${empty khachhang }">
					<div class="col-lg-12 col-md-12">
					<div class="login-content">
							<h2 class="login-title">ĐĂNG NHẬP</h2>
							<form action="#" method="POST" id="login-form">
								<div class="form-group">
									<label>Tên đăng nhập <span class="required">*</span></label>
									<input type="text" placeholder="Tên đăng nhập" name="username" class="form-control" />
								</div>
								<div class="form-group">
									<label>Mật khẩu <span class="required">*</span></label>
									<input type="password" placeholder="Mật khẩu" name="password" id="password" class="form-control" />
								</div>
								<input class="login-sub" type="submit" value="Đăng nhập" />
							</form>
						</div>
					</div>	
					</c:if>
				</div>																			
				<div class="col-lg-6 col-md-6">
					<div class="your-order">
						<h3>Đơn hàng của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Tên sản phẩm</th>
										<th>Size</th>
										<th class="product-total">Tổng tiền</th>
									</tr>							
								</thead>
								<tbody>
									<c:forEach items="${giohang.getListCTDH()}" var="chitietgiohang">
									<tr class="cart_item">
										<td class="product-name">
											<c:out value="${chitietgiohang.getSanPham().getTenSanPham()}"/> <strong class="product-quantity"> × <c:out value="${chitietgiohang.getSoLuong()}"/>
											</strong>
										</td>
										<td><c:out value="${chitietgiohang.getSize()}"/></td>
										<td class="product-total">
											<span class="amount"><c:out value="${chitietgiohang.getSoLuong() * chitietgiohang.getDonGia()}"/>đ</span>
										</td>
									</tr>
									</c:forEach>
									
									<tr class="cart_item">
										<td class="product-name">
											Giày nike nam <strong class="product-quantity"> × 1</strong>
										</td>
										<td></td>
										<td class="product-total">
											<span class="amount">900.000đ</span>
										</td>
									</tr>
									<tr class="cart_item">
										<td class="product-name">
											Giày adidas nam	<strong class="product-quantity"> × 1</strong>
										</td>
										<td></td>
										<td class="product-total">
											<span class="amount">900.000đ</span>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr class="order-total">
										<th>Tổng tiền đơn hàng</th>
										<td></td>
										<td><strong><span class="amount"><%= ((DonHang)request.getAttribute("giohang"))!=null ? ""+((DonHang)request.getAttribute("giohang")).getTongTien() : "0" %>đ</span></strong>
										</td>
									</tr>								
								</tfoot>
							</table>
						</div>
						<div class="payment-method">							
							<div class="order-button-payment">
								<input type="submit" value="Đặt hàng" onclick="DatHang();"/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	function DatHang(){
		var dangnhap = "${dangnhap}";
		if(dangnhap != "true")
			alert("Vui lòng đăng nhập trước khi đặt hàng");
		else {
			var madh = "${giohang.getMaDonHang()}";
			$.ajax({
				type:'POST',
				data: {
					madh: madh,
				},
				url: 'DatHangController',
				success: function(){
					alert("Đặt hàng thành công");
					window.location.href = 'DatHangController';
				}
			});
		}
	}

	</script>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>