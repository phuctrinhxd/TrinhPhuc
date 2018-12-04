<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tin tức</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="breadcrumb-list">
							<h1>Tin tức</h1>						
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="blog-area blog-full pad-60">
			<div class="container">
				<div class="row">	
					<div class="blog-page-main">
					<c:forEach var="blog" items="${listtt}">
						<div class="col-md-4">
							<div class="blog-wrapper">
								<div class="blog-img">
									<a href="ChiTietTTController?matt=<c:out value="${blog.getMaTinTuc()}"/>"><img src="<c:out value="${blog.getHinhAnh()}"/>" alt="" /></a>
								</div>
								<div class="blog-content">
									<h3><a href="ChiTietTTController?matt=<c:out value="${blog.getMaTinTuc()}"/>"><c:out value="${blog.getTieuDe()}"/></a></h3>
								</div>
							</div>								
						</div>
					</c:forEach>
						
					</div>						
				</div>		
			</div>
		</div>
				<div class="row">
					<div class="col-md-12">
						<div class="blog-pagination">
							<div class="shop-breadcrumb">
								<ul>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
								</ul>
							</div>						
						</div>
					</div>
				</div>			

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>