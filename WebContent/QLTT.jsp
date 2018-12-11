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
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>

<body>
	<script type="text/javascript">
	var Msg = "<%=request.getAttribute("msgThemTinTuc")%>";
    if (Msg != "null") {
 	alert(Msg);
 	}
    
    var MsgXoa = "<%=request.getAttribute("msgXoaTinTuc")%>";
    if (MsgXoa != "null") {
 	alert(MsgXoa);
 	}
    var MsgSua = "<%=request.getAttribute("msgSuaTinTuc")%>";
    if (MsgSua != "null") {
 	alert(MsgSua);
 	}
    </script>
    
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
                     </ul>
                </div>
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
                <li><a href="QLTK.jsp"><em >&nbsp;</em> Quản lý tài khoản</a></li>
               <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
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
			
                <li ><a href="QLSPController"><em>&nbsp;</em> Quản lý sản phẩm</a></li>
                <li><a href="QLDH.jsp"><em >&nbsp;</em> Quản lý đơn hàng</a></li>
				<li><a href="QLKH.jsp"><em >&nbsp;</em> Quản lý khách hàng</a></li>
				
                <li class="active" > <a href="QLTTController" ><em >&nbsp;</em> Quản lý tin tức</a></li>
              
                <li><a href="login-admin.jsp"><em >&nbsp;</em> Đăng xuất</a></li>
          </ul>
    </div>
   
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <div class="row">
            <h4>
                <ol class="breadcrumb">
                    <li><a href="#">
                        <em class="fa fa-home"></em>
                        </a>
                    </li>
                    <li class="active  " style="color: red">Quản lý tin tức</li>
                </ol>
            </h4>
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
                           <!--  <button class="col-md-4 col-md-offset-6" id="input-hover"   type="submit" value="Thêm tin tức"  style="height:30px ;width: 180px">Thêm tin tức</button>-->
                             <input id="input-hover" class="col-md-4 col-md-offset-6" type="submit" value="Thêm tin tức" style="height:30px ;width: 180px" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="">
            <div class="col-md-12 ">
                
                    <div class="table-content ">
                        <table  style="margin-top: 10px; margin-left: 20px;">
                            <thead>
                                <tr style="">
                                    <th class="tintuc-anh">STT</th>
                                	<th class="tintuc-thaotac">Ảnh</th>
                                    <th class="tintuc-tieude">Tiêu đề</th>
                                    <th class="tintuc-noidung">Nội dung</th>
                                    <th class="tintuc-thaotac">Thao tác</th>
                                  
                                </tr>
                            </thead>
                            <tbody>
                        
                            <c:forEach items="${listQLTT}" var="tttt" >
                                <tr>
                                    <td class="tintuc-anh"> <h3  style="width: 100%;height: 100px; text-align: center;font-size: 20px"><c:out value="${tttt.getMaTinTuc()}"></c:out> </h3></td>
                                    <td class="tintuc-tieude">
                                       <img src="<c:out value="${tttt.getHinhAnh()}"></c:out>" alt="" style="width: 100px;height: 100px">
                                      
                                    </td>
                                    <td class="tintuc-tieude">
                                      
                                        <h3  style="width: 100%;height: 100px; text-align: center"><c:out value="${tttt.getTieuDe()}" /> </h3>
                                    </td>
                                    <td class="tintuc-noidung">
                                        <h3  style="width: 100%;height: 100px ;text-align: center"><c:out value="${tttt.getNoiDung()}" /> </h3>
                                    </td>
                                    <td class="tintuc-thaotac">
                                   
                                        <div class="row"  >
                                       <form action="XoaTinTucController?MaTinTuc=<c:out value="${tttt.getMaTinTuc()}"/>" method="Post">
                                         		<input id="input-hover" style="width: 65px;height: 25px;margin-top: 10px" value="Delete" type="submit">
											</form>
                                        </div >
                                 
                                        <div class="row" style="margin-top: 5%" >
                                      		 <form action="SuaTinTucController?MaTinTuc=<c:out value="${tttt.getMaTinTuc()}"/>" method="Post">
                                      			<input   id="input-hover" style="width: 80px;height: 25px;margin-top: 10px" type="submit" value="Update"> 
                                        	</form>
                                        	
                                        </div >
                                        <div class="row" style="margin-top: 5%">
                                       
                                            <input id="input-hover" value="Xem" type="submit" style="width: 50px;height: 25px;margin-top: 10px">
                                           
                                        </div>
                                    </td>
                                </tr>
                             </c:forEach>
                            </tbody>
                        </table>
                    </div>
                
            </div>
        </div>
	</div>
    </body>
</html>