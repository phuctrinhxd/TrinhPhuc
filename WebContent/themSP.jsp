<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Admin</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/font-awesome.min.css" rel="stylesheet">
      <link href="css/datepicker3.css" rel="stylesheet">
    <link href="css/admin.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
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
         </div>
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
			
			<li class="active"><a href="QLSP.jsp"><em >&nbsp;</em> Quản lý sản phẩm</a></li>
			<li><a href="QLDH.jsp"><em >&nbsp;</em> Quản lý đơn hàng</a></li>
			<li><a href="QLKH.jsp"><em >&nbsp;</em> Quản lý khách hàng</a></li>
			<li><a href="QLTT.jsp"><em >&nbsp;</em> Quản lý tin tức</a></li>
			
			<li><a href="login-admin.jsp"><em >&nbsp;</em> Đăng xuất</a></li>
		</ul>
      </div>
      <!--/.sidebar-->
      <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
      <div class="row">
         <H4>
            <ol class="breadcrumb">
               <li><a href="#">
                  <em class="fa fa-home"></em>
                  </a>
               </li>
               <li class="active  " style="color: red">Quản lý sản phẩm</li>
            </ol>
         </H4>
      </div>
      <!--/.row-->
      <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
      <div class="col-md-12">
         <div class="row">
            <h4 style="text-align: center;color: blue">Thêm sản phẩm</h4>
         </div>
         <div class="row" style="width: 102%; height: 10px; background-color: #85e0e0;"></div>
         <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
         </div>
         <form class="panel" style="background-color: white">
            <div  class="row"style="margin-top: 10px">
               <div  class="row" style="margin-top: 5px">
                  <div class="col-md-1"></div>
                  <div class="col-md-4" style="margin-top: 5px">
                     <div class="col-md-9"  style="margin-top: 5px">
                        <p style="margin-left: 61px">Danh mục sản phẩm :</p>
                     </div>
                     <div class="col-md-3" style="margin-top: 5px"><input  type="radio" name="gender" value="Nike" > Nike</div>
                  </div>
                  <div class="col-md-3">
                     <div class="col-md-7" style="margin-top: 10px"><input type="radio" name="gender" value="Adidas" > Adidas</div>
                     <div class="col-md-5" style="margin-top: 10px"><input type="radio" name="gender" value="BiTit" > Bitit</div>
                  </div>
                  <div class="col-md-3">
                     <div class="col-md-5" style="margin-top: 10px"><input type="radio" name="gender" value="Trẻ em"> Trẻ em</div>
                     <div class="col-md-7" style="margin-top: 10px"><input  type="radio" name="gender" value="Khác"> Khác</div>
                  </div>
                  <div class="col-md-1"></div>
               </div>
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Tên sản phẩm :</p>
               </div>
               <div class=" form-group col-md-7" style="width: 500px">
                  <input name="TenSanPham"id="name"type="text" placeholder="Tên sản phẩm" required=""  class="form-control" />
               </div>
               <div class="col-md-1"></div>
            </div>
            <div  class="row"style="margin-top: 10px">
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Mã sản phẩm :</p>
               </div>
               <div class=" form-group col-md-7" style="width: 500px">
                  <input name="MaSanPham"id="name"type="text" placeholder="Mã sản phẩm" required=""  class="form-control" />
               </div>
               <div class="col-md-1"></div>
            </div>
            <div  class="row"style="margin-top: 10px">
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Màu :</p>
               </div>
               <div class=" form-group col-md-7" >
                  <select style="height: 40px;width: 250px">
                     <option value="volvo">Đỏ trắng</option>
                     <option value="saab">Vàng đen</option>
                     <option value="opel">blue trắng</option>
                     <option value="audi">Nâu đen trắng</option>
                  </select>
               </div>
            </div>
            <div  class="row" style="margin-top: 5px">
               <div class="col-md-1"></div>
               <div class="col-md-4" style="margin-top: 5px">
                  <div class="col-md-9"  style="margin-top: 5px">
                     <p style="margin-left: 50px">Giới tính :</p>
                  </div>
                  <div class="col-md-3" style="margin-top: 5px"><input  type="radio" name="gender" value="Nam" > Nam</div>
               </div>
               <div class="col-md-3">
                  <div class="col-md-7" style="margin-top: 10px"><input type="radio" name="gender" value="Nữ" > Nữ</div>
                  <div class="col-md-5" style="margin-top: 10px"><input type="radio" name="gender" value="Cả 2" > Cả 2</div>
               </div>
            </div>
            <div  class="row"style="margin-top: 10px">
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Khuyến mãi :</p>
               </div>
               <div class=" form-group col-md-7" style="width: 150px">
                  <input name="khuyenmai"id="name"type="text" placeholder="%" required=""  class="form-control" />
               </div>
               <div class="col-md-1"></div>
            </div>
            <div  class="row"style="margin-top: 10px">
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Giá bán :</p>
               </div>
               <div class=" form-group col-md-7" style="width: 300px">
                  <input name="GiaBan"id="name"type="text" placeholder="đ" required=""  class="form-control" />
               </div>
               <div class="col-md-1"></div>
            </div>
            <div  class="row"style="margin-top: 10px">
               <div class="col-md-1"></div>
               <div class="col-md-3">
                  <p style="margin-left: 65px;margin-top: 10px">Ảnh :</p>
               </div>
               <div class=" form-group col-md-3">
                  <img  alt="NIKE" style="width: 200px;height: 200px" src="img/nike.jpg">
               </div>
               <div class="col-md-2">
                  <input type="file" name="têp" value="tep" style="height: 20px">
               </div>
            </div>
            <div  class="row"style="margin-top: 10px">
         <div class="col-md-6" >
              <form action="QLSP.jsp" method="POST">
                  <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 150px">Hoàn thành</button>
               </form>
         </div>
         <div class="col-md-6">
            <form action="QLSP.jsp">
            <button id="input-hover"   type="submit" value=""  style="height:30px ;width: 100px">Quay lại</button>
            </form>
         </div> 

         </form>
         </div>
      </div>

     
   </body>
</html>