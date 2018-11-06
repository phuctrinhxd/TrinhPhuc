<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quản lý nhân viên</title>
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
			<li><a href="QLTK.jsp"><em ">&nbsp;</em> Quản lý tài khoản</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1" class aria-expanded="true">
				<em class="fa fa-navicon">&nbsp;</em> Quản lý nhân viên <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="nhomQuyen-admin.jsp">
						<span class="fa fa-arrow-right">&nbsp;</span> Các nhóm quyền
					</a></li>
					<li><a class="active" href="QLNV.jsp">
						<span class="fa fa-arrow-right">&nbsp;</span> Danh sách nhân viên
					</a></li>
					
				</ul>
				
			</li>
			
			<li><a href="QLSP.jsp"><em >&nbsp;</em> Quản lý sản phẩm</a></li>
			<li><a href="QLDH.jsp"><em >&nbsp;</em> Quản lý đơn hàng</a></li>
			<li><a href="QLKH.jsp"><em >&nbsp;</em> Quản lý khách hàng</a></li>
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
				<li class="active">Quản lý nhân viên</li>
			</ol>
			<a href="addNV.jsp"> 
				<button type="button" class="btn btn-primary btn-md" style="margin:15px;">Thêm</button>
			</a>
			
		</div><!--/.row-->
		
		<table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Tên nhân viên</th>
                            <th> Nhóm quyền </th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1001</td>
                            <td>Trịnh Vĩnh Phúc</td>
                            <td>Admin</td>
                            <td>
                            <a href="viewNV.jsp"> 
                            	<button type="button" class="btn btn-info">Xem</button>
                            </a>
                            <a href="fixNV.jsp"> 
                            	<button type="button" class="btn btn-info">Sửa</button>
                            </a>
							<button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Xóa</button>

							  <!-- Modal -->
							  <div class="modal fade" id="myModal" role="dialog">
							    <div class="modal-dialog">
							    
							      <!-- Modal content-->
							      <div class="modal-content">
							        <div class="modal-header" style="text-align: center;">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Bạn chắc chắn xóa Nhân viên</h4>
							        </div>
							        <div class="modal-body">
							          <p>Trịnh Vĩnh Phúc</p>
							        </div>
							        <div class="modal-footer" style="text-align: center;">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Xác nhận</button>
							        </div>
							      </div>
							    </div>
							  </div>
                            </td>
                        </tr>
                        
                      <tr>
                            <td>2</td>
                            <td>1002</td>
                            <td>Trần A</td>
                            <td>Nhóm quản lý tin tức và comment</td>
                            <td>
                             <a href="viewNV.jsp"> 
                            	<button type="button" class="btn btn-info">Xem</button>
                            </a>
                            <a href="fixNV.jsp"> 
                            	<button type="button" class="btn btn-info">Sửa</button>
                            </a>
                            <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Xóa</button>

							  <!-- Modal -->
							  <div class="modal fade" id="myModal" role="dialog">
							    <div class="modal-dialog">
							    
							      <!-- Modal content-->
							      <div class="modal-content">
							        <div class="modal-header" style="text-align: center;">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Bạn chắc chắn xóa Nhân viên</h4>
							        </div>
							        <div class="modal-body">
							          <p>Trịnh Vĩnh Phúc</p>
							        </div>
							        <div class="modal-footer" style="text-align: center;">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Xác nhận</button>
							        </div>
							      </div>
							    </div>
							  </div>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>1003</td>
                            <td>Nguyễn B</td>
                            <td>Nhóm quản lý sản phẩm</td>
                            <td>
                             <a href="viewNV.jsp"> 
                            	<button type="button" class="btn btn-info">Xem</button>
                            </a>
                            <a href="fixNV.jsp"> 
                            	<button type="button" class="btn btn-info">Sửa</button>
                            </a>
                            <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Xóa</button>

							  <!-- Modal -->
							  <div class="modal fade" id="myModal" role="dialog">
							    <div class="modal-dialog">
							    
							      <!-- Modal content-->
							      <div class="modal-content">
							        <div class="modal-header" style="text-align: center;">
							          <button type="button" class="close" data-dismiss="modal">&times;</button>
							          <h4 class="modal-title">Bạn chắc chắn xóa Nhân viên</h4>
							        </div>
							        <div class="modal-body">
							          <p>Trịnh Vĩnh Phúc</p>
							        </div>
							        <div class="modal-footer" style="text-align: center;">
							          <button type="button" class="btn btn-default" data-dismiss="modal">Xác nhận</button>
							        </div>
							      </div>
							    </div>
							  </div>
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