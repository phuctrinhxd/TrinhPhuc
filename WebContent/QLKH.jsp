<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quản lý khách hàng</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/style-admin.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					</button>
				<a class="navbar-brand" href="#">Admin</a>
				<div class="row">
					<ul class="nav navbar-top-links navbar-right">
				 	
				 		<div class="col-md-12 text-right">
				 			<a class="navbar-brand fa fa-user" href="#">Thông tin cá nhân</a>
					
				 		</div>
				</div>
			
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			
			<div class="profile-usertitle">
				<div class="profile-usertitle-name text-center">Trần Minh Tùng</div>
				<div class="profile-usertitle-status text-center"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		
		<ul class="nav menu">
			<li><a href="admin.jsp"><em ">&nbsp;</em> Quản lý tài khoản</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-navicon">&nbsp;</em> Quản lý nhân viên <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="nhomQuyen-admin.jsp">
						<span class="fa fa-arrow-right">&nbsp;</span> Các nhóm quản trị viên
					</a></li>
					<li><a class="" href="QLNV.jsp">
						<span class="fa fa-arrow-right">&nbsp;</span> Danh sách nhân viên
					</a></li>
					
				</ul>
				
			</li>
			
			<li><a href="QLSP.jsp"><em >&nbsp;</em> Quản lý sản phẩm</a></li>
			<li><a href="QLDH.jsp"><em >&nbsp;</em> Quản lý đơn hàng</a></li>
			<li class="active"><a href="QLKH.jsp"><em >&nbsp;</em> Quản lý khách hàng</a></li>
			<li><a href="QLTT.jsp"><em >&nbsp;</em> Quản lý tin tức</a></li>
			
			<li><a href="login.jsp"><em >&nbsp;</em> Đăng xuất</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Quản lý khách hàng</li>
			</ol>
			
		</div><!--/.row-->

            <form action="#" style="padding:15px;">
		      <input type="text" placeholder="Search.." name="search">
		      <button type="submit"><i class="fa fa-search"></i></button>
		    </form>

		
		<table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Họ tên</th>
                            <th> Email </th>
                            <th> Số điện thoại </th>
                            <th> Địa chỉ </th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1101</td>
                            <td>Trịnh Vĩnh Phúc</td>
                            <td>phuc12323@gmail.com</td>
                            <td> 0894251232 </td>
                            <td> Quận thủ đức, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                         <tr>
                            <td>2</td>
                            <td>1102</td>
                            <td>Hoàng Huy</td>
                            <td>huyhoang23@gmail.com</td>
                            <td> 0989465232 </td>
                            <td> 18A phường bình thọ, Quận 9, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                      	<tr>
                            <td>3</td>
                            <td>1103</td>
                            <td>Hoàng Huy</td>
                            <td>huyhoang23@gmail.com</td>
                            <td> 0989465232 </td>
                            <td> 18A phường bình thọ, Quận 9, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>1104</td>
                            <td>Hoàng Huy</td>
                            <td>huyhoang23@gmail.com</td>
                            <td> 0989465232 </td>
                            <td> 18A phường bình thọ, Quận 9, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>1105</td>
                            <td>Hoàng Huy</td>
                            <td>huyhoang23@gmail.com</td>
                            <td> 0989465232 </td>
                            <td> 18A phường bình thọ, Quận 9, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>1106</td>
                            <td>Hoàng Huy</td>
                            <td>huyhoang23@gmail.com</td>
                            <td> 0989465232 </td>
                            <td> 18A phường bình thọ, Quận 9, Tp.HCM </td>
                            <td>
                            <button type="button" class="btn btn-info">Xem</button>
                            <button type="button" class="btn btn-info">Xóa</button>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
		
	
	</div>	<!--/.main-->
	
	<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
			
		
</body>
</html>