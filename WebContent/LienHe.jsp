<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="Utf-8 ">
<title>Liên Hệ</title>

   <link rel="stylesheet" type="text/css" media="all" href="css/LienHe.css">
 
</head>
<body>
<div id="LienHe" >
	   <h1>Thông tin hổ trợ</h1>
    <form  id="LienHe-form"  >
            
        <div class="row">
               <label for="name">Name <span class="req">* :</span></label>
        
          <input type="text" name="name" id="name" class="txt" tabindex="1" placeholder="Name" required>
       </div>
   
        <div class="row">
          <label for="email">E-mail <span class="req">* :</span></label>
          <input type="email" name="email" id="gmail" class="txt" tabindex="2" placeholder="Address@gmail.com" required>
        </div>
         
        <div class="row">
          <label for="subject">Subject <span class="req">* :</span></label>
          <input type="text" name="subject" id="subject" class="txt" tabindex="3" placeholder="Subject" required>
        </div>
         
        <div class="row" class="col-md-8">
          <label for="binhluan">Message <span class="req">*:</span></label>
          <textarea name="binhluan" id="message" class="txtarea" tabindex="4" required></textarea>
        </div>
         
        <div class="center-block">
          <input type="submit" id="submitbtn" name="submitbtn" tabindex="5" value="Submit">
        </div>
        </form>
  </div>
</body>
</html>