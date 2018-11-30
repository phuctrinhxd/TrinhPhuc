<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 		<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GIAY NE</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
		
		<!-- google fonts  -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,500,700,300,800' rel='stylesheet' type='text/css'>

		<!-- all css here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="lib/css/nivo-slider.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
 

       <header class="header-pos">
			<!-- header-bottom-area start -->
			 
			<div class="header-bottom-area">
				<div class="container">
					<div class="inner-container">
						<div class="row">
							<div class="col-md-2 col-sm-4 col-xs-5">
								<div class="logo">
									<a href="Home" ><img src="img/logoGiayNe.png" alt="" style="width: 90px; height: 70px;" /></a>
								</div>
							</div>
							<div class="col-md-8 hidden-xs hidden-sm">
								<div class="main-menu">
									<nav>
										<ul>
											<li><a href="Home">TRANG CHỦ</a>
											</li>
											<li><a href="about.jsp">GIỚI THIỆU</a></li>
											<li><a href="shop.jsp">GIÀY NAM</a>
												<ul>
													<li><a href="#">ADIDAS</a></li>
													<li><a href="#">NIKE</a></li>
													<li><a href="#">BITIS</a></li>
												
												</ul>												
											</li>	
											<li><a href="shop.jsp">GIÀY NỮ</a>
												<ul>
													<li><a href="#">ADIDAS</a></li>
													<li><a href="#">NIKE</a></li>
													<li><a href="#">BITIS</a></li>
												</ul>												
											</li>	
											<li><a href="TinTucController">TIN TỨC</a></li>										
											<li><a href="LienHe.jsp">LIÊN HỆ</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-2 col-sm-8 col-xs-7 header-right">
								<div class="my-cart">
									<div class="total-cart">
										<a href="#">
											<i class="fa fa-shopping-cart"></i>
											<span>2</span>
										</a>								
									</div>
								</div>
								<div class="user-meta">
									<a href="#"><i class="fa fa-cog"></i></a>
									<ul>
										<li><a href="login.jsp">Đăng nhập</a></li>
										<li><a href="login.jsp">Đăng kí</a></li>
										
									</ul>								
								</div>
								<div class="header-search">
									<i class="fa fa-search"></i>
									<div class="header-form">
										<form action="#">
											<input type="text" placeholder="search" />
											<button><i class="fa fa-search"></i></button>
										</form>
									</div>
								</div>							
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mobile-menu-area visible-xs visible-sm">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="mobile-menu">
								<nav id="dropdown">
									<ul>
										<li><a href="Home">Trang chủ</a></li>
										<li><a href="about.jsp">Giới thiệu</a></li>										
										<li><a href="shop.jsp">Adidas</a>
											<ul>
												<li><a href="shop.jsp">Giày nam</a></li>
												<li><a href="shop.jsp">Giày nữ</a></li>
											</ul>
										</li>
										<li><a href="shop.jsp">Nike</a>
											<ul>
												<li><a href="shop.jsp">Giày nam</a></li>
												<li><a href="shop.jsp">Giày nữ</a></li>
											</ul>
										</li>
										<li><a href="shop.jsp">Bitis</a>
											<ul>
												<li><a href="shop.jsp">Giày nam</a></li>
												<li><a href="shop.jsp">Giày nữ</a></li>
											</ul>
										</li>
										<li><a href="TinTucController">Tin tức</a></li>
										<li><a href="LienHe.jsp">Liên hệ</a></li>
									</ul>
								</nav>
							</div>					
						</div>
					</div>
				</div>
			</div>
		</header>
		

</body>
</html>