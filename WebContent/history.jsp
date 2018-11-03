<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lịch sử mua hàng</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumb-list">
							<h1>lịch sử mua hàng</h1>							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-area end -->
		<!-- cart-main-area start -->
		<div class="cart-main-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<form action="#">				
							<div class="table-content table-responsive">
								<table>
									<thead>
										<tr>
											<th class="ngay">Ngày đặt hàng</th>
											<th class="ma">Mã đơn hàng</th>
											<th class="so-luong">Số lượng</th>
											<th class="tong-gia">Tổng giá</th>
											<th class="tinh-trang">Tình trạng</th>
											<th class="chi-tiet">Chi tiết</th>
											<th class="xoa">Xóa</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span>11/1/2018</span></td>
											<td class="ma"><span>123</span></td>
											<td class="so-luong"><span>2</span></td>
											<td class="tong-gia"><span class="amount">1.800.000đ</span></td>
											<td class="tinh-trang"><span>Chưa duyệt</span></td>
											<td class="chi-tiet"><a href="details-order.jsp"><i class="fa fa-list"></i></a></td>
											<td class="xoa"><a href="#"><i class="fa fa-times"></i></a></td>
										</tr>
										<tr>
											<td><span>3/20/2018</span></td>
											<td class="ma"><span>456</span></td>
											<td class="so-luong"><span>2</span></td>
											<td class="tong-gia"><span class="amount">1.800.000đ</span></td>
											<td class="tinh-trang"><span>Đã giao</span></td>
											<td class="chi-tiet"><a href="details-order.jsp"><i class="fa fa-list"></i></a></td>
											<td class="xoa"><a href="#"></a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-md-5 hidden-sm hidden-xs"></div>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="buttons-cart">
										<a href="cart.jsp">Giỏ hàng</a>
										<a href="shop.jsp">Tiếp tục mua sắm</a>
									</div>
								</div>
							</div>
						</form>	
					</div>
				</div>
			</div>
		</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>