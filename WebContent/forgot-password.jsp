<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quên mật khẩu</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumb-area">
			
	</div>
	<div class="login-area">
	<div class="container">
		<div class="rows">
			<div class="col-md-3 hidden-sm hidden-xs"></div>
			<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="login-content">
				<div class="message-title">
					<h2>Bạn quên mật khẩu?</h2>
					<p>Hãy điền thông tin ứng với tài khoản của bạn và mật khẩu mới.</p>
				</div>	
				<div class="rows">
					<form action="#" id="forgot-form">
						<div class="form-group">
							<label>Tên đăng nhập</label>
							<input type="text" placeholder="Tên đăng nhập" name=username class="form-control"/>
						</div>
						<div class="form-group">
							<label>Email</label>
							<input type="text" placeholder="Địa chỉ email" name="email" class="form-control"/>
						</div>
						<div class="form-group">
							<label>Số điện thoại</label>
							<input type="number" placeholder="Số điện thoại" name="numberphone" class="form-control"/>
						</div>
						<div class="form-group">
							<label>Mật khẩu mới</label>
							<input type="password" placeholder="Mật khẩu" name="password" id="password" class="form-control"/>
						</div>
						<div class="form-group">
							<label>Xác nhận mật khẩu</label>
							<input type="password" placeholder="Nhập lại mật khẩu" name="password2" class="form-control"/>
						</div>
						<input type="submit" value="Lấy lại mật khẩu" class="login-sub">
					</form>
				</div>			
			</div>
			</div>
			<div class="col-md-3 hidden-sm hidden-xs"></div>
		</div>
	</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>