<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>LIÊN HỆ</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
		
   
		<!-- google fonts  -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,500,700,300,800' rel='stylesheet' type='text/css'>

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- jquery-ui.min css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- nivo-slider css -->
        <link rel="stylesheet" href="lib/css/nivo-slider.css">
		<!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
		<!-- modernizr js -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script type="text/javascript" language="javascript" src="validation.js"></script>
    </head>
    <body>
    <jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumb-area">
			
	</div>
			 
			
			

		<!-- breadcrumb-area end -->
		<!-- contact-area start -->
		<div class="contact-area pad-60">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="contact-form ">
							<div class="message-title">
								<h1 class="text-center">THÔNG TIN HỔ TRỢ</h1><br>
								
							</div>
							<div class="row">
								<form action="mail.php" method="POST" id="LienHe-form">	

									<div class="input-filed">

										<div class=" form-group col-md-12">

											<input name="name"id="name"type="text" placeholder="Your Name" required=""  class="form-control" />
											
										</div>
										<div class="form-group col-md-12">
											<input name="email" id="email" type="text" placeholder="Address@gmail.com"  required="" class="form-control"/>
										</div>
										<div class="form-group col-md-12">
											<input name="subject" id="subject"type="text" placeholder=" Subject" required="" class="form-control"/>
										</div>
									</div>
									<div class="form-group col-md-12">
										<div class="contact-textarea" required="">
											<textarea name="message" id="Message" cols="30" rows="10" placeholder="Message" required="" class="form-control"></textarea>
											<input class="col-md-4 col-md-offset-4" type="submit" value="submit" />
										</div>								
									</div>
								</form>						
							</div>
						</div>
					</div>
									
				</div>
				

			</div>
		</div>
		<!-- contact-area end -->	
		<!-- footer start -->
		<footer>
		<div class="footer-top-area">
				<div class="container">
					<div class="row">
						<!-- footer-widget start -->
						<div class="col-xs-6 col-md-4">
							<div class="footer-widget">
								<h3 class="text-center">LIÊN HỆ</h3>
								<ul class="footer-contact">
									<li>
										<i class="fa fa-map-marker"> </i>
										Địa chỉ: Trường ĐH SPKT TPHCM
									</li>
									<li>
										<i class="fa fa-envelope"> </i>	
										Email: admin@ThemeBuz.com
									</li>
									<li>
										<i class="fa fa-phone"> </i>
										Phone: +123 455657589
									</li>
								</ul>
							</div>
						</div>
						<!-- footer-widget end -->					
						<!-- footer-widget start -->
						<div class="col-xs-6 col-md-4">
							<div class="footer-widget">
								<h3 class="text-center">THÔNG TIN PTT</h3>
								<ul class="footer-menu">
									<li><a href="#" class="text-center">Giới thiệu</a></li>
									<li><a href="#" class="text-center">Chính sách giao hàng</a></li>
									<li><a href="#" class="text-center">Chính sách bảo hành</a></li>
									<li><a href="#" class="text-center">Chính sách bảo mật</a></li>
									<li><a href="#" class="text-center">Điểu khoản sử dụng</a></li>
								</ul>
							</div>
						</div>
						<!-- footer-widget end -->
						<!-- footer-widget start -->
						<div class="col-xs-6 col-md-4">
							<div class="footer-widget">
								<h3 class="text-center">TÀI KHOẢN</h3>
								<ul class="footer-menu">
									<li><a href="#" class="text-center">Tài khoản</a></li>
									<li><a href="#" class="text-center">Liên hệ PTT</a></li>
									<li><a href="#" class="text-center">Mua hàng</a></li>
									<li><a href="#" class="text-center">Trả lại</a></li>
									
								</ul>
							</div>
						</div>
						<!-- footer-widget end -->
						<!-- footer-widget start -->
						
						<!-- footer-widget end -->						
					</div>
				</div>
			</div>
				
		</footer>

    </body>
</html>
