<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<li><a href="QLTK.jsp"><em">&nbsp;</em> Quản lý tài khoản</a></li>
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
				<li><a href="QLKH.jsp"><em >&nbsp;</em> Quản lý khách hàng</a></li>
				<li class="active"><a href="QLTTController"><em >&nbsp;</em> Quản lý tin tức</a></li>
				
				<li><a href="login-admin.jsp"><em >&nbsp;</em> Đăng xuất</a></li>
			</ul>
        </div>
        <!--/.sidebar-->
        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="row">
               <H4> <ol class="breadcrumb">
                    <li><a href="#">
                        <em class="fa fa-home"></em>
                        </a>
                    </li>
                    <li class="active  " style="color: red">Quản lý tin tức</li>
                </ol>
            </H4>
            </div>
            <!--/.row-->
        
            <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                <div class="col-md-12">
                    <div class="row">
                        <h4 style="text-align: center;color: blue">Sửa tin tức</h4>
                    </div>
                    <div class="row" style="width: 102%; height: 10px; background-color: #85e0e0;"></div>
                    <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                        
                    </div>
                    <form action="SuaTinTucController?action=Update"  method="post"  class="panel" style="background-color: white">
                        <div  class="row"style="margin-top: 20px"></div>
                        <div  class="row"style="margin-top: 30px">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                               <p style="margin-left: 65px;margin-top: 10px">Mã tin tức :</p>
                            </div>
                            <div class=" form-group col-md-7" style="width: 400px">
                                   <input name="MaTinTuc" id="name" type="hidden" placeholder="" value="<c:out value="${tttt.getMaTinTuc() }"/>"  class="form-control" />
                                  <h3 ><c:out value="${tttt.getMaTinTuc() }"/></h3>
                            </div>
                             <div class="col-md-1"></div>
                        
                        </div>
                       
                        <div  class="row"style="margin-top: 10px">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                               <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                            </div>
                            <div class=" form-group col-md-7 " style="width: 400px;">
                                 <textarea name="TieuDe" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"><c:out value="${tttt.getTieuDe()}"></c:out></textarea>
                            </div>
                             <div class="col-md-1"></div>
                        
                        </div>
                        <div  class="row"style="margin-top: 10px">
                            <div class="col-md-1"></div>
                            <div class="col-md-3" >
                               <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                            </div>
                            <div class=" form-group col-md-7 " style="width: 500px">
                                 <textarea name="NoiDung" id="Message"  cols="30" rows="8" placeholder="Nội dung" required=""  class="form-control"><c:out value="${tttt.getNoiDung()}"></c:out></textarea>
                            </div>
                             <div class="col-md-1"></div>
                        
                        </div>
                       <div  class="row"style="margin-top: 10px">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                               <p  style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                            </div>
                            <div class=" form-group col-md-3">
                                 <img id="load_img" src="<c:out value="${tttt.getHinhAnh()}"></c:out>" alt="NIKE" style="width: 200px;height: 200px">
                            </div>
                            <div class="col-md-2">
                              <input type="hidden" name="HinhAnhCu" value="<c:out value="${tttt.getHinhAnh()}"></c:out>" style="width: 300px;height: 20px" accept="image/jpg,image/png,image/jpeg">
                                <input type="file" name="HinhAnh" value="<c:out value="${tttt.getHinhAnh()}"></c:out>" style="width: 300px;height: 20px" accept="image/jpg,image/png,image/jpeg" onchange="loadFile(event)">
                            </div>
                        </div>
                        
                       <div  class="row"style="margin-top: 10px"> 
                        <div class="col-md-6">
                      
                               <a id="a-id" href="QLTTController"  ><input id="input-hover" class="col-md-4 col-md-offset-8" type="button" style="height:30px ;width: 140px" value="QuayLại">
                       			</a>
               			 </div>
                        <div class="col-md-6">
                            
                             <input type="submit" id="input-hover"  style="height:30px ;width: 100px" value="OK">
                        
                        </div> 
                        </div>           
                    </form>
                </div>
            </div>
			<script>
			  var loadFile = function(event) {
			    var output = document.getElementById('load_img');
			    output.src = URL.createObjectURL(event.target.files[0]);
			  };
			</script>
    </body>
</html>