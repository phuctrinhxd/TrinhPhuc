<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thông tin cá nhân</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumb-list">
							<h1>Thông tin cá nhân</h1>							
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="login-area">
	<div class="container">
		<div class="rows">
			<div class="col-md-3 hidden-sm hidden-xs"></div>
			<div class="col-md-6 col-sm-12 col-xs-12">
			<div class="login-content">
				<div class="message-title">
					<h2>Sửa thông tin cá nhân</h2>
					<p>Hãy điền thông tin cá nhân của bạn</p>
				</div>	
				<div class="rows">
					<form action="#" id="ttcn-fomr">
						<div class="form-group">
							<label>Họ và tên <span class="required">*</span></label>
							<input type="text" placeholder="Họ và tên" name=name class="form-control" value="Nguyễn Văn A" />
						</div>
						<div class="form-group">
							<label>Email <span class="required">*</span></label>
							<input type="text" placeholder="Địa chỉ email" name="email" class="form-control" value="dhspkt@gmail.com" />
						</div>
						<div class="form-group">
							<label>Số điện thoại <span class="required">*</span></label>
							<input type="number" placeholder="Số điện thoại" name="numberphone" class="form-control" value="0123456789" />
						</div>
						<div class="form-group">
							<label>Địa chỉ <span class="required">*</span></label>
							<textarea name="addresshome" placeholder="Địa chỉ" class="form-control">1 Võ Văn Ngân, Thủ Đức, TPHCM</textarea>
						</div>	
						<input type="submit" value="Lưu thay đổi" class="login-sub">
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