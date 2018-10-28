<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập - Đăng ký</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="breadcrumb-area">
			
		</div>
		<!-- breadcrumb-area end -->
		<!-- login-area start -->
		<div class="login-area">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="login-content">
							<h2 class="login-title">ĐĂNG NHẬP</h2>
							
							<form action="#">
								<label>Tên đăng nhập</label>
								<input type="text" />
								<label>Mật khẩu</label>
								<input type="password" />
								<div class="login-lost">
									<span class="log-rem">
										<input type="checkbox" />
										<label>Remember me!</label>
									</span>
									<span class="forgot-login">
										<a href="forgot-password.jsp">Quên mật khẩu</a>
									</span>
								</div>
								<input class="login-sub" type="submit" value="Login" />
							</form>
						</div>
					</div>
					<div class="col-md-6">
						<div class="login-content login-margin">
							<h2 class="login-title">ĐĂNG KÍ</h2>
							<p>Tạo tài khoản mới</p>
							<form action="#" id="register-form">
								<div class="form-group">
									<label>Tên người dùng</label>
									<input type="text" placeholder="Họ tên" name=name class="form-control"/>
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
									<label>Địa chỉ</label>
									<textarea name="addresshome" placeholder="Địa chỉ" class="form-control"></textarea>
								</div>						
								<div class="form-group">
									<label>Tên đăng nhập</label>
									<input type="text" placeholder="Tên đăng nhập" name=username class="form-control"/>
								</div>
								<div class="form-group">
									<label>Mật khẩu</label>
									<input type="password" placeholder="Mật khẩu" name="password" id="password" class="form-control"/>
								</div>
								<div class="form-group">
									<label>Xác nhận mật khẩu</label>
									<input type="password" placeholder="Nhập lại mật khẩu" name="password2" class="form-control"/>
								</div>	

								<input class="login-sub" type="submit" value="Đăng ký" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- login-area end -->	
		
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>