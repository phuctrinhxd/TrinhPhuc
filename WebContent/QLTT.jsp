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
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
            <li><a href="index.jsp"><em >&nbsp;</em> Quản lý tài khoản</a></li>
            <li><a href="QLNV.jsp"><em ">&nbsp;</em> Quản lý nhân viên</a></li>
            <li><a href="QLSP.jsp"><em ">&nbsp;</em> Quản lý sản phẩm</a></li>
            <li class="active"><a href="QLTT.jsp"><em ">&nbsp;</em> Quản lý tin tức</a></li>
          
            <li><a href="login.jsp"><em ">&nbsp;</em> Đăng xuất</a></li>
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
                    <li class="active  " style="color: red">Quản lý tin tức</li>
                </ol>
            </H4>
        </div>
        <!--/.row-->
        <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
            <div class="col-md-12">
                <div class="row">
                    <h4 style="text-align: center;color: red">Danh sách tin tức</h4>
                </div>
                <div class="row" style="width: 102%; height: 10px; background-color: #85e0e0;"></div>
                <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                    <div class="col-md-12" style="margin: 0px 0px 0px -100px ">
                        <form action="themTT.jsp">
                            <input id="input-hover" class="col-md-4 col-md-offset-6" type="submit" value="Thêm tin tức" style="height:30px ;width: 180px" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="">
            <div class="col-md-12 ">
                <form action="#">
                    <div class="table-content ">
                        <table style="margin-top: 10px; margin-left: 20px">
                            <thead>
                                <tr style="">
                                    <th class="tintuc-anh">Ảnh</th>
                                    <th class="tintuc-tieude">Tiêu đề</th>
                                    <th class="tintuc-noidung">Nội dung</th>
                                    <th class="tintuc-thaotac">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="tintuc-anh"><img src="img/nike.jpg" alt="" style="width: 100px;height: 100px"></td>
                                    <td class="tintuc-tieude">
                                        <textarea name="name" style="width: 100%;height: 100px; text-align: center;">NIKE</textarea>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <textarea name="name" style="width: 100%;height: 100px ;text-align: center">giày nè PTT</textarea>
                                    </td>
                                    <td class="tintuc-thaotac">
                                        <div class="row" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal1" title="">Xóa</a>
                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 25%;margin-left: 40%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Xóa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal2" title="">Sửa</a>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 50%;margin-left: 25%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Sửa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                        <div style="margin-top: 5%">
                                            <a id="a-id" href="#">Xem</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tintuc-anh"><img src="img/nike.jpg" alt="" style="width: 25%x;height: 12.5%"></td>
                                    <td class="tintuc-tieude">
                                        <textarea name="name" style="width: 100%;height: 100px; text-align: center;">NIKE</textarea>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <textarea name="name" style="width: 100%;height: 100px ;text-align: center">giày nè PTT</textarea>
                                    </td>
                                   <td class="tintuc-thaotac">
                                        <div class="row" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal1" title="">Xóa</a>
                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 25%;margin-left: 40%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Xóa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal2" title="">Sửa</a>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 50%;margin-left: 25%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Sửa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                        <div style="margin-top: 5%">
                                            <a id="a-id" href="#">Xem</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tintuc-anh"><img src="img/nike.jpg" alt="" style="width: 25%x;height: 12.5%"></td>
                                    <td class="tintuc-tieude">
                                        <textarea name="name" style="width: 100%;height: 100px; text-align: center;">NIKE</textarea>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <textarea name="name" style="width: 100%;height: 100px ;text-align: center">giày nè PTT</textarea>
                                    </td>
                                    <td class="tintuc-thaotac">
                                        <div class="row" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal1" title="">Xóa</a>
                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 25%;margin-left: 40%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Xóa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal2" title="">Sửa</a>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 50%;margin-left: 25%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Sửa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                        <div style="margin-top: 5%">
                                            <a id="a-id" href="#">Xem</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tintuc-anh"><img src="img/nike.jpg" alt="" style="width: 25%x;height: 12.5%"></td>
                                    <td class="tintuc-tieude">
                                        <textarea name="name" style="width: 100%;height: 100px; text-align: center;">NIKE</textarea>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <textarea name="name" style="width: 100%;height: 100px ;text-align: center">giày nè PTT</textarea>
                                    </td>
                                    <td class="tintuc-thaotac">
                                        <div class="row" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal1" title="">Xóa</a>
                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 25%;margin-left: 40%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Xóa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal2" title="">Sửa</a>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 50%;margin-left: 25%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Sửa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                        <div style="margin-top: 5%">
                                            <a id="a-id" href="#">Xem</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="tintuc-anh"><img src="img/nike.jpg" alt="" style="width: 25%x;height: 12.5%"></td>
                                    <td class="tintuc-tieude">
                                        <textarea name="name" style="width: 100%;height: 100px; text-align: center;">NIKE</textarea>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <textarea name="name" style="width: 100%;height: 100px ;text-align: center">giày nè PTT</textarea>
                                    </td>
                                    <td class="tintuc-thaotac">
                                        <div class="row" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal1" title="">Xóa</a>
                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 25%;margin-left: 40%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Xóa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                            <a id="a-id" href="#"  data-toggle="modal" data-target="#myModal2" title="">Sửa</a>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog">
                                                    <div class="modal-content" style="width: 200%;margin-left: -50%" >
                                                        <div class="col-md-12">
                                                            <div class="row panel " style="width: 30%;margin-left: 40%">
                                                                <form class="panel" style="background-color: white;width: 50%;margin-left: 25%">
                                                                    <div class="row">
                                                                        <h4 style="text-align: center;color: red">Sửa tin tức</h4>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                            <div class="row " style="width: 100%; margin: 0% 0% 0% 0%; border: 1px">
                                                            </div>
                                                            <form class="panel" style="background-color: white">
                                                               <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                                                                    <div class="col-md-12">
                                                                       
                                                                        <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                                                                            
                                                                        </div>
                                                                        <form class="panel" style="background-color: white">
                                                                            <div  class="row"style="margin-top: 20px">
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tên tin tức :</p>
                                                                                </div>
                                                                                 <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tên tin tức" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Tiêu đề:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 400px;">
                                                                                     <textarea name="message" id="Message"  placeholder="Tiêu đề" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                            <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3" >
                                                                                   <p style="margin-left: 65px;margin-top: 10px">Nội dung:</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-7 " style="width: 500px">
                                                                                     <textarea name="message" id="Message"  cols="30" rows="10" placeholder="Nội dung" required=""  class="form-control"></textarea>
                                                                                </div>
                                                                                 <div class="col-md-1"></div>
                                                                            
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                                <div class="col-md-1"></div>
                                                                                <div class="col-md-3">
                                                                                   <p style="margin-left: 65px;margin-top: 5px">Ảnh :</p>
                                                                                </div>
                                                                                <div class=" form-group col-md-3">
                                                                                     <img src="img/nike.jpg" alt="NIKE" style="width: 200px;height: 200px">
                                                                                </div>
                                                                                <div class="col-md-2">
                                                                                    <input type="file" name="" value="" style="width: 350px;height: 30px;background-color: white">
                                                                                </div>
                                                                            </div>
                                                                           <div  class="row"style="margin-top: 10px">
                                                                            <div class="col-md-6">

                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"  class="col-md-4 col-md-offset-8" type="submit" value="Hoàn thành"  style="height:30px ;width: 140px;">Hoàn thành</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <form action="QLTT.jsp">
                                                                                    <button id="input-hover"   type="submit" value="Hủy"  style="height:30px ;width: 100px">Quay lại</button>
                                                                                </form>
                                                                                 
                                                                            </div> 

                                                                                
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            </div>
                                                        </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div >
                                        <div style="margin-top: 5%">
                                            <a id="a-id" href="#">Xem</a>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>