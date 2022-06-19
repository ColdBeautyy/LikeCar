<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
	  <meta charset="utf-8">
	  <meta content="width=device-width, initial-scale=1.0" name="viewport">

	  <title>Like Car - Thank you for visit</title>
	  <meta content="" name="description">
	  <meta content="" name="keywords">

	  <!-- Facebook Opengraph integration: https://developers.facebook.com/docs/sharing/opengraph -->
	  <meta property="og:title" content="">
	  <meta property="og:image" content="">
	  <meta property="og:url" content="">
	  <meta property="og:site_name" content="">
	  <meta property="og:description" content="">

	  <!-- Twitter Cards integration: https://dev.twitter.com/cards/  -->
	  <meta name="twitter:card" content="summary">
	  <meta name="twitter:site" content="">
	  <meta name="twitter:title" content="">
	  <meta name="twitter:description" content="">
	  <meta name="twitter:image" content="">

	  <!-- Favicons -->
	  <link href="../assets/img/favicon.png" rel="icon">
	  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

	  <!-- Vendor CSS Files -->
	  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">
	  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	  <!-- Template Main CSS File -->
	  <link href="../assets/css/style.css" rel="stylesheet">

	  <!-- =======================================================
	  * Template Name: Imperial - v5.1.0
	  * Template URL: https://bootstrapmade.com/imperial-free-onepage-bootstrap-theme/
	  * Author: BootstrapMade.com
	  * License: https://bootstrapmade.com/license/
	  ======================================================== -->
	  
	<!-- signin -->
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
<!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>

	  <main id="main">
	  
	    <!-- ======= Breadcrumbs ======= -->
	    <!-- <section class="breadcrumbs">
	      <div class="container">

	        <div class="d-flex justify-content-between align-items-center">
	          <h2>SIGN IN</h2>
	        </div>

	      </div>
	    </section> --><!-- End Breadcrumbs -->
	    <!-- ======= Breadcrumbs ======= -->
	    <section class="breadcrumbs">
<div class="container-fluid" id="grad1">
  <div class="row justify-content-center mt-0">
   <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2">
    <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
    <h2><strong>Sign In Your Account</strong></h2>
     <div class="row">
      <div class="col-md-12 mx-0">
                        <form style="padding: 15px 35px 45px;" action="/web/signMember.do" id="frm" name="signFrm" method="post">
                            <fieldset>
					      		<div class="body" style="">
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
                            </fieldset>
                        </form>
  	       </div>
	      </div>
      </div>
     </div>
    </div>
   </div>		  
  </div>
 </div>
	    </section>
	  </main><!-- End #main -->

	  <!-- ======= Footer ======= -->
 	 <jsp:include page="footer.jsp"></jsp:include>

	  <div id="preloader"></div>
	  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	  <!-- Vendor JS Files -->
	  <script src="../assets/vendor/aos/aos.js"></script>
	  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
	  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	  <script src="../assets/vendor/php-email-form/validate.js"></script>
	  <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
	  <script src="../assets/vendor/typed.js/typed.min.js"></script>

	  <!-- Template Main JS File -->
	  <script src="../assets/js/main.js"></script>

</body>
</html>