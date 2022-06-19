<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>make a reservation</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  
<!-- jquery -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
<!-- bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="/web/resources/assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
<!-- moment -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js" integrity="sha256-ABVkpwb9K9PxubvRrHMkk6wmWcIHUE9eBxNZLXYQ84k=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment-with-locales.min.js" integrity="sha256-XWrGUqSiENmD8bL+BVeLl7iCfhs+pkPyIqrZQcS2Te8=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/locale/ko.js" integrity="sha256-52Xn0wi4kPGcROqCAA5EoontBDks09MLjv7fd5WAj3U=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
  
  $(function(){
	$("input#mypage").click(function(){
		document.location.href='/web/reserveCompleteList.do';
	});
	$("input#main").click(function(){
		document.location.href='/web/goHome.do';
	});
  });
  
  
  </script>


<style type="text/css">

  
</style>
</head>
<body>


  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div class="wow fadeIn">
        <div class="hero-logo">
          <img class="" src="/web/resources/assets/img/logo.png" alt="Imperial">
        </div>

        <h1>Welcome to Like Car</h1>
        <h2>We service <span class="typed" data-typed-items="comfortable ways, different experiences, memories with the car"></span></h2>
        <div class="actions">
          <a href="#services" class="btn-services">SIGN IN</a>
          <a href="#about" class="btn-get-started">SIGN UP</a>
        </div>
      </div>
    </div>
    
  </section><!-- End Hero -->

  <!-- ======= Header ======= -->
   <jsp:include page="header.jsp"></jsp:include> 


  <!-- ========Body=========== -->
	<div id="h1tag">
   <a id="reserve">reservation Car</a><br><br>
 	</div>
 <div class="contentss">

<div align="center">
	<div class="well" style="">
	<br><label style="font-size: 70px;">${name }님 이용해주셔서 감사합니다, 예약이 완료되었습니다."</label>
	</div>
	<div style="border: 2px solid #000000; border-radius: 4px; width: 900px;">
			<br>
			<label style="font-size: 40px;">대여 차량 : ${car_name}</label><br>
			<label style="font-size: 40px;">인수일 : ${car_start_date}</label><br>
			<label style="font-size: 40px;">반납일 : ${car_end_date}</label><br>
			<p style="color:#FF0000">※입금이 완료되면 예약이 완료 됩니다.</p>
	</div>
	<br>
	<div class="well" style="border: 2px solid #000000; border-radius: 4px; width: 900px;">
		<label style="font-size: 40px;">입금하셔야 할 금액 : ${price}원</label><br>
		<label style="font-size: 40px;">계좌번호: 0123 – 456789 – 910 – 4321</label><br>
		<label style="font-size: 40px;">은행 : 찰리 은행</label><br>
		<label style="font-size: 40px;">예금주 : 김인성</label><br>
		<label style="color:#FF0000;">※ 입금 기간: 예약 신청 시점으로 부터 1시간 이내</label>
	</div>
	<br>
		<label style="color:#FF0000;">※이 페이지는 한번만 표시되며, 입금 계좌번호 및 예약 상태는 마이페이지에서 언제나 확인 가능합니다.</label>
	<br>				
		<input type="button" id="mypage" name="mypage"  value="예약 확인" style="width:80px; height:40px;">
		<input type="button" id="main" name="main"  value="메인으로" style="width:80px; height:40px;">
	<br>
	</div>
	<br>
</div>
 	



  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            &copy; Copyright <strong>Imperial Theme</strong>. All Rights Reserved
          </div>
          <div class="credits">
            <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Imperial
          -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->


</body>

</html>