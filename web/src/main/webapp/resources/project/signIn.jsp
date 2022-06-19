<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link href="/web/resources/assets/css/signIn.css" rel="stylesheet" >

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
  
  
  
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("button#admin").click(function(){
			$("#frm").attr("action", "/web/signAdmin.do");
			document.signFrm.submit();
		});
		$("button#sign").click(function(){
			document.location.href="/web/signupProcess.do";
		});
	});
</script>
</head>
<body>
<!-- Button trigger modal
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>  -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">PLEASE SIGN IN</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form style="padding: 15px 35px 45px;" action="/web/signMember.do" id="frm" name="signFrm" method="post">
      <div class="body">
	      <input type="text" class="form-control" name="mem_id" placeholder="Email Address" required="" autofocus="" />
	      <input type="password" class="form-control" name="mem_pw" placeholder="Password" required=""/>      
	      <label class="checkbox" style="padding-top: 25px">
	        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
	      </label>
	      <button style="background: #03C4EB; color: white;" class="form-control" type="submit">Sign In</button>
	      <button style="background: #03C4EB; color: white;" class="form-control" type="button" id="admin">Admin</button>
	      <hr>
	      <label style="text-align: center;" style="padding-top: 25px" >아직 회원이 아니신가요?</label>
	      <button id="sign" class="form-control" style="border-color: #03C4EB; color: #03C4EB;" type="button">Sign Up</button>   
	 </div> 
      </form>
    </div>
  </div>
</div>


<!-- Vertically centered modal
<div class="modal-dialog modal-dialog-centered">
  ...
</div>
 -->
<!-- Vertically centered scrollable modal
<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
  ...
</div>
 -->

</body>
</html>