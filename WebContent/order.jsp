<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<!-- breadcrumb-area end -->
	<!-- coupon-area start -->
	<div class="coupon-area"></div>
	<!-- coupon-area end -->		
	<!-- checkout-area start -->
	<div class="checkout-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
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
					<div class="hide col-lg-12 col-md-12"><!--form login ở đây --></div>	
				</div>																			
				<div class="col-lg-6 col-md-6">
					<div class="your-order">
						<h3>Đơn hàng của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Tên sản phẩm</th>
										<th class="product-total">Tổng tiền</th>
									</tr>							
								</thead>
								<tbody>
									<tr class="cart_item">
										<td class="product-name">
											Giày nike nam <strong class="product-quantity"> × 1</strong>
										</td>
										<td class="product-total">
											<span class="amount">900.000đ</span>
										</td>
									</tr>
									<tr class="cart_item">
										<td class="product-name">
											Giày adidas nam	<strong class="product-quantity"> × 1</strong>
										</td>
										<td class="product-total">
											<span class="amount">900.000đ</span>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr class="order-total">
										<th>Tổng tiền đơn hàng</th>
										<td><strong><span class="amount">1.800.000đ</span></strong>
										</td>
									</tr>								
								</tfoot>
							</table>
						</div>
						<div class="payment-method">							
							<div class="order-button-payment">
								<input type="submit" value="Đặt hàng" />
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