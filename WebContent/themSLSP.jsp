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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	
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
                <li><a href="index.jsp"><em >&nbsp;</em> Quản lý tài khoản</a></li>
                <li><a href="QLNV.jsp"><em ">&nbsp;</em> Quản lý nhân viên</a></li>
                <li class="active"><a href="QLSP.jsp"><em ">&nbsp;</em> Quản lý sản phẩm</a></li>
                <li><a href="QLTT.jsp"><em ">&nbsp;</em> Quản lý tin tức</a></li>
               
                <li><a href="login.jsp"><em ">&nbsp;</em> Đăng xuất</a></li>
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
                    <li class="active  " style="color: red">Quản lý số lượng sản phẩm</li>
                </ol>
                </H4>
            </div>
            <!--/.row-->
            <div class="row" style="width: 100%; margin: 0% 0% 0% 0%">
                <div class="col-md-12">
                    <div class="row">
                        <h4 style="text-align: center;color: blue">Số lượng chi tiết sản phẩm</h4>
                    </div>
                    <div class="row" style="width: 102%; height: 10px; background-color: #85e0e0;"></div>
                    <div class="row " style="width: 100%; margin: 1% 0% 0% 0%; border: 1px">
                        
                    </div>
                    <form class="panel" style="background-color: white">
                       
                        <div  class="row"style="margin-top: 10px">
                        <div  class="row" style="margin-top: 15px">
                            
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
                               <p style="margin-left: 65px;margin-top: 10px">Size :</p>
                            </div>
                            <div class=" form-group col-md-7" >
                                 <input type="number" name="size" value="39"  style="width: 50px;height: 30px;text-align: center;" required="">
                            </div>
                            
                        </div>
                       
                        <div  class="row"style="margin-top: 10px">
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                               <p style="margin-left: 65px;margin-top: 10px">Số lượng :</p>
                            </div>
                            <div class=" form-group col-md-7" style="width: 300px">
                                 <input name="SoLuong"id="name"type="number" required="" style="width: 60px;height: 30px;text-align: center;" value="150"  /> đôi
                            </div>
                            <div class="col-md-1"></div>
                        </div>
                        <div  class="row"style="margin-top: 10px">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                               <p style="margin-left: 140px;margin-top: 10px; font-size: 20px;color: red;font-weight: bold;">Chi tiết</p>
                            </div>
                            
                            <div class="col-md-4">
                               
                            </div>
                        </div>
                        <div>
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                               <form action="#">
                                  <div class="table-content ">
                                     <table style="margin-top: 10px; margin-left: 20px">
                                        <thead>
                                           <tr style="">
                                              <th class="tintuc-anh">Size</th>
                                              <th class="tintuc-tieude">Số lượng</th>
                                              
                                           </tr>
                                        </thead>
                                        <tbody>
                                           <tr>
                                              <td class="tintuc-anh"><input type="text" name="" style="background-color: white" value="38"></td>
                                              <td class="tintuc-tieude">
                                                <input name="SoLuong"id="name"type="number" required="" style="width: 100px;height: 50px;" value="150"  /> đôi
                                              </td>
                                             
                                           </tr>
                                           <tr>
                                                 <td class="tintuc-anh"><input type="text" name="" style="background-color: white" value="39"></td>
                                              <td class="tintuc-tieude">
                                                <input name="SoLuong"id="name"type="number" required="" style="width: 100px;height: 50px" value="150"  /> đôi
                                              </td>
                                             
                                           </tr>
                                           <tr>
                                               <td class="tintuc-anh"><input type="text" name="" style="background-color: white" value="40"></td>
                                              <td class="tintuc-tieude">
                                                 <input name="SoLuong"id="name"type="number" required="" style="width: 100px;height: 50px" value="150"  /> đôi
                                              </td>
                                              
                                           </tr>
                                           <tr>
                                               <td class="tintuc-anh"><input type="text" name="" style="background-color: white" value="42"></td>
                                              <td class="tintuc-tieude">
                                                <input name="SoLuong"id="name"type="number" required="" style="width: 100px;height: 50px" value="150"  /> đôi
                                              </td>
                                              
                                           </tr>
                                           
                                        </tbody>
                                     </table>
                                  </div>
                               </form>
                               
                            </div>
                            <div class=" col-md-3"></div>
                        </div>

                        <div  class="row"style="margin-top: 10px"></div>
                        <div class=" row " >
                            <div class="col-md-4"></div>
                             <div class="col-md-1">
                                    <button id="input-hover" style="width: 100px;height: 50px;margin-right: 10px"  type="button" data-toggle="modal" data-target="#myModal" >Thêm
                                    </button>
                                     <div >
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">
                                              
                                             <div >
                                               <div class="row" style="width: 50% ; margin-left: 25%">
                                                     <form class="panel" style="background-color: white" style="width: 50px">
                                                          <div class="row" style="">
                                                               <h4 style="text-align: center;color: red">Thêm chi tiết sản phẩm</h4>
                                                          </div>                                
                                                      </form>
                                              </div>
                                             </div>
                                             <div class="row " style="width: 100%; margin: -2% 0% 0% 0%; border: 1px">
                                             </div>
                                             <div class="row"  style="width: 50% ; margin-left:25%" >
                                                <form class="panel" style="background-color: white">
                                                  <div class="row " >
                                                    <div class="col-md-6" style="margin-top: 30px"> <p style="text-align: center;">Size</p></div>
                                                   <div class=" col-md-6" style="width: 50px">
                                                     <input name="size"id="name"type="number" required="" style="text-align: center;width: 50px;height: 30px;margin-top: 30px" value="38"  /> 
                                                    </div>
                                                 </div>  
                                                 <div class="row " >
                                                    <div class="col-md-5" style="margin-top: 30px"> <p style="text-align: center;">Số lượng</p></div>
                                                    <div class=" col-md-7" style="width: px">
                                                       <input name="size"id="name"type="number" required="" style="text-align: center;width: 50px;height: 30px;margin-top: 30px;margin-left: 30px" value="150"  />đôi 
                                                    </div>
                                                  </div> 
                                                 <div class="row " >
                                                  <div class="row" style="margin-top: 30px">
                                                    <div class="col-md-7">
                                                      <input type="submit" value="OK" style="margin-left: 50%">
                                                    </div>
                                                     <div class="col-md-1">
                                                      
                                                      <input type="submit" value="No" " >
                                                    </div>
                                                  </div>
                                                 </div>   
                                               <div class="row" style="margin-top: 30px"></div>  

                                                </form>

                                             </div>
                                            
                                          
                                          </div>
                                        </div>
                                    </div>
                            <!----end sửa--->
                            </div>
                            <div class="col-md-1">
                                 <button id="input-hover" style="width: 100px;height: 50px;margin-left: 20px"  type="button" data-toggle="modal" data-target="#myModalxoa" >Xóa
                                    </button>
                                     <div >
                                        <div class="modal fade" id="myModalxoa" role="dialog">
                                            <div class="modal-dialog">
                                              
                                             <div >
                                               <div class="row" style="width: 50% ; margin-left: 25%">
                                                     <form class="panel" style="background-color: white" style="width: 50px">
                                                          <div class="row" style="">
                                                               <h4 style="text-align: center;color: red">Xóa chi tiết sản phẩm</h4>
                                                          </div>                                
                                                      </form>
                                              </div>
                                             </div>
                                             <div class="row " style="width: 100%; margin: -2% 0% 0% 0%; border: 1px">
                                             </div>
                                             <div class="row"  style="width: 50% ; margin-left:25%" >
                                                <form class="panel" style="background-color: white">
                                                  <div class="row " >
                                                    <div class="col-md-6" style="margin-top: 30px"> <p style="text-align: center;">Size</p></div>
                                                   <div class=" col-md-6" style="width: 50px">
                                                     <input name="size"id="name"type="number" required="" style="width: 50px;height: 30px;margin-top: 30px" value="38"  /> 
                                                    </div>
                                                 </div>  
                                                 <div class="row " >
                                                    <div class="col-md-5" style="margin-top: 30px"> <p style="text-align: center;">Số lượng</p></div>
                                                    <div class=" col-md-7" style="width: px">
                                                       <input name="size"id="name"type="number" required="" style="width: 50px;text-align: center;height: 30px;margin-top: 30px;margin-left: 30px" value="150"  />đôi 
                                                    </div>
                                                  </div> 
                                                 <div class="row " >
                                                  <div class="row" style="margin-top: 30px">
                                                    <div class="col-md-7">
                                                      <input type="submit" value="OK" style="margin-left: 50%">
                                                    </div>
                                                     <div class="col-md-1">
                                                      
                                                      <input type="submit" value="No" " >
                                                    </div>
                                                  </div>
                                                 </div>   
                                               <div class="row" style="margin-top: 30px"></div>  

                                                </form>

                                             </div>
                                            
                                          
                                          </div>
                                        </div>
                                    </div>
                            </div>
                             <div class="col-md-1">
                                <button id="input-hover" style="width: 100px;height: 50px;margin-left: 40px"  type="button" data-toggle="modal" data-target="#myModalsua" >Sửa
                                    </button>
                                     <div >
                                        <div class="modal fade" id="myModalsua" role="dialog">
                                            <div class="modal-dialog">
                                              
                                             <div >
                                               <div class="row" style="width: 50% ; margin-left: 25%">
                                                     <form class="panel" style="background-color: white" style="width: 50px">
                                                          <div class="row" style="">
                                                               <h4 style="text-align: center;color: red">Sửa chi tiết sản phẩm</h4>
                                                          </div>                                
                                                      </form>
                                              </div>
                                             </div>
                                             <div class="row " style="width: 100%; margin: -2% 0% 0% 0%; border: 1px">
                                             </div>
                                             <div class="row"  style="width: 50% ; margin-left:25%" >
                                                <form class="panel" style="background-color: white">
                                                  <div class="row " >
                                                    <div class="col-md-6" style="margin-top: 30px"> <p style="text-align: center;">Size</p></div>
                                                   <div class=" col-md-6" style="width: 50px">
                                                     <input name="size"id="name"type="number" required="" style="width: 50px;height: 30px;margin-top: 30px" value="38"  /> 
                                                    </div>
                                                 </div>  
                                                 <div class="row " >
                                                    <div class="col-md-5" style="margin-top: 30px"> <p style="text-align: center;">Số lượng</p></div>
                                                    <div class=" col-md-7" style="width: px">
                                                       <input name="size"id="name"type="number" required="" style="width: 50px;height: 30px;margin-top: 30px;margin-left: 30px" value="150"  />đôi 
                                                    </div>
                                                  </div> 
                                                 <div class="row " >
                                                  <div class="row" style="margin-top: 30px">
                                                    <div class="col-md-7">
                                                      <input type="submit" value="OK" style="margin-left: 50%">
                                                    </div>
                                                     <div class="col-md-1">
                                                      
                                                      <input type="submit" value="No" " >
                                                    </div>
                                                  </div>
                                                 </div>   
                                               <div class="row" style="margin-top: 30px"></div>  

                                                </form>

                                             </div>
                                            
                                          
                                          </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                         <div  class="row"style="margin-bottom: 25px">
                       
                            
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>