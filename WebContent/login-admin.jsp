<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Admin</title>
         <link href="css/login-Admin.css" rel="stylesheet">
    	
    </head>
    <body>
    	<div class="login-header">
   			 	<h1>Quản lý GIAYNE</h1>
  			</div>
  			<form action="#" id="login-admin">
  				<div class="login">
 					<div class="login-form">
					    <h3>Username:</h3>
					    <input id="username" type="text" placeholder="Username" required=""/><br>
					    <h3>Password:</h3>
					    <input id="pass" type="password" placeholder="Password" required=""/>
					    <br>
					    <a href="QLTK.jsp">
					    	<input type="button" value="Login" class="login-button" required=""/>
					    </a>
		
					 </div>
				</div>
  			</form>
    		
    	<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
	    <script src="js/login-Admin.js"></script>
        <script src="js/jquery.validate.js"></script>
        <script src="js/validation.js"></script>
        <script src="js/additional-methods.js"></script>
    </body>
</html>