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
	  <link href="/web/resources/assets/img/favicon.png" rel="icon">
	  <link href="/web/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

	  <!-- Vendor CSS Files -->
	  <link href="/web/resources/assets/vendor/aos/aos.css" rel="stylesheet">
	  <link href="/web/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <link href="/web/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	  <link href="/web/resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	  <link href="/web/resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	  <!-- Template Main CSS File -->
	  <link href="/web/resources/assets/css/style.css" rel="stylesheet">

	  <!-- =======================================================
	  * Template Name: Imperial - v5.1.0
	  * Template URL: https://bootstrapmade.com/imperial-free-onepage-bootstrap-theme/
	  * Author: BootstrapMade.com
	  * License: https://bootstrapmade.com/license/
	  ======================================================== -->
	  
	<!-- mypage design -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/web/resources/assets/css/mypage.css">  
	  
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	function idCheck(){
		window.open("/web/resources/project/idcheck.jsp","idCheck","left=100,top=200,width=397.5px,height=281.5px"); //경로,팝업이름,옵션
	}
	$(function(){
		//개인정보 수정
		$("button#mem").click(function(){
			if($("input[name='mem_tel']").val()==''||$("select[name='type']").val()==''
					||$("input[name='lic_no']").val()==''||$("input[name='address']").val()==''){
				alert("양식에 맞게 작성해주세요");
			    return false;
				
			}
			document.signupfrm.submit();
		});
		$("button#memcancle").click(function(){
			$("input[name='mem_id']").val('${id}');
			$("input[name='mem_tel']").val('${mem.mem_tel}');
			$("input#com").val('${mem.company}');
			$("select[name='type']").val('${mem.type}');
			$("input[name='lic_no']").val('${mem.lic_no}');
			$("input[name='address']").val('${mem.address}');			
		});
		$("input[name='mem_tel']").blur(function(){
			if($("input[name='mem_tel']").val().split('-')[0].length<2 
					||$("input[name='mem_tel']").val().split('-')[0].lenght>3){
				alert('전화번호 형식을 확인해주세요');
				$("button[value='ID Check']").focus();
			}
			if($("input[name='mem_tel']").val().split('-')[1].length<3 
					||$("input[name='mem_tel']").val().split('-')[1].lenght>4){
				alert('전화번호 형식을 확인해주세요');
				$("button[value='ID Check']").focus();
				
			}
			if($("input[name='mem_tel']").val().split('-')[2].length!=4){
				alert('전화번호 형식을 확인해주세요');
				$("button[value='ID Check']").focus();
			}
		});
		
		//비밀번호 수정
		$("button#pw").click(function(){
			//현재비밀번호 체크
			if($("input#pw").val()!='${mem.mem_pw}'){
				alert("기존 비밀번호를 확인해주세요");
				$("input#pw").val('');
				$("input#new_pw").val('');
				$("input#check_pw").val('');
				$("input[name='new_pw']").val('');
				return false;
			}
			if($("input#new_pw").val().length!=$("input#check_pw").val().length){
				$("input[name='new_pw']").val('');
			}
			if($("input#pw").val()==''||$("input[name='new_pw']").val()==''){
			alert("양식에 맞게 작성해주세요");
			alert($("input[name#pw").val()+" "+$("input[name='new_pw']").val());
		    return false;
			}
			document.pwfrm.submit();
		});
		$("input#check_pw").keyup(function(){
			if($("input#new_pw").val().length==$("input#check_pw").val().length){
				$("input[name='new_pw']").val($("input#check_pw").val());
				$("input#check_pw").blur();
			}
		});
		$("input#check_pw").blur(function(){
			if($("input#new_pw").val().length==$("input#check_pw").val().length){
				$("input[name='new_pw']").val($("input#check_pw").val());
			}else{
				$("input[name='new_pw']").val('');
			}
		});
		$("button#pwcancle").click(function(){
			$("input[name='mem_pw']").val('');
			$("input#new_pw").val('');
			$("input#check_pw").val('');
			$("input[name='new_pw']").val('');			
		});
	});
	</script>
	
</head>

<body>
<!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>

	  <main id="main">

	    <!-- ======= Breadcrumbs ======= -->
	    <section class="breadcrumbs py-5 my-5">
		<div class="container">
			<h2 class="mb-5">Check Your User Account</h2>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="/web/resources/assets/img/user.png" alt="Image" class="shadow">
						</div>
						<h4 class="text-center"><b>${sessionScope.name }</b>&nbsp;님</h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
							<i class="fa fa-home text-center mr-1"></i> 
							계정 정보
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-user text-center mr-1"></i> 
							개인 정보 수정
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
							<i class="fa fa-key text-center mr-1"></i> 
							비밀번호 수정
						</a>
						<!-- <a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab" aria-controls="application" aria-selected="false">
							<i class="fa fa-tv text-center mr-1"></i> 
							예약 현황 확인
						</a>
						<a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
							<i class="fa fa-bell text-center mr-1"></i> 
							문의 내역 확인
						</a> -->
					</div>
				</div>
				<!-- 계정정보  -->
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<h3 class="mb-4">계정 정보</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Point</label>
								  	<div>
								  	<span style="text-align: right"><h2 style="padding: 35px;"><strong style="color: #03C4EB; font-size:43px; padding: 10px">${mem.point}</strong>&nbsp;점</h2></span>
								  	</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Coupon</label>
								  	<div>
								  	<span style="text-align: right;"><h2 style="padding: 35px;"><strong style="color: #03C4EB;  font-size:43px; padding: 10px">${mem.vip_type}</strong>&nbsp;등급</h2></span>
								  	<span style="text-align: right;"><h2 style="padding: 0 35px 35px 35px;"><strong style="color: #03C4EB;  font-size:43px; padding: 10px">${mem.cpon_num}</strong>&nbsp;개</h2></span>
								  	</div>
								</div>
							</div>
						</div>
						<div style="padding: 50px 0;">
							<button class="form-control" style="background: #03C4EB; color: white;" type="button">예약 현황 확인</button>
						</div>
					</div>
					<!-- 개인정보 -->
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<form action="/web/memAccountUpdate.do" method="post" name="signupfrm">
						<h3 class="mb-4">개인 정보 수정</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>이메일</label>
								  	<input type="text" readonly="readonly" class="form-control" id="id" name="mem_id" value="${id}">
								</div>
							</div>
						
							<div class="col-md-6">
								<div class="form-group">
									<label>&nbsp;</label>
								  	<input type="button" class="form-control" style="border-color: #03C4EB; color: #03C4EB;" onclick="idCheck()"  value="ID Check">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>전화번호</label>
								  	<input type="text" class="form-control" name="mem_tel" value="${mem.mem_tel}">	
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>회사</label>
								  	<input type="text" class="form-control" readonly="readonly" id="com" value="${mem.company}">
								  	<p style="font-size: 7px; padding: 10px 10px 0 10px; margin: 0;">회사명 변경이 필요할 시 사내 담당자 혹은 고객센터로 문의 주세요.</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>면허유형</label>
								  	<select id="type" class="form-control" name="type">	     					
			     						<option  value="${mem.type}" selected="selected">${mem.type}</option>
			     						<option value="1종 대형">1종 대형</option>
			     						<option value="1종 보통">1종 보통</option>
			     						<option value="1종 소형">1종 소형</option>
			     						<option value="1종 특수">1종 특수</option>
			     						<option value="2종 보통">2종 보통</option>
			     						<option value="2종 소형">2종 소형</option>
			     					</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>면허번호</label>
								  	<input type="text" class="form-control" name="lic_no" value="${mem.lic_no}">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
								<label>주소</label>							
									<input class="form-control" name="address" value="${mem.address}"/>	
								</div>							
							</div>
						</div>

						<div style="padding: 50px 0;">
							<button class="form-control" style="background: #03C4EB; color: white;" type="button" id="mem">Update</button><br>
	     				    <button class="form-control" style="border-color: #03C4EB; color: #03C4EB;" type="button" id="memcancle">Cancel</button>
						</div>
						</form>
					</div>
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
					<form action="/web/mempasswordUpdate.do" method="post" name="pwfrm">
						<h3 class="mb-4">비밀번호 수정</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>현재 비밀번호</label>
								  	<input type="password" id="pw" name="mem_pw" class="form-control">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>새 비밀번호</label>
								  	<input type="password" id="new_pw" class="form-control" placeholder="8~15자리 영문/숫자/특수문자 조합">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>비밀번호 확인</label>
								  	<input type="password" id="check_pw" class="form-control">
								  	<input type="hidden" name="new_pw" class="form-control">
								</div>
							</div>
						</div>
						<div style="padding: 50px 0;">
							<button class="form-control" style="background: #03C4EB; color: white;" type="button" id="pw">Update</button><br>
	     				    <button class="form-control" style="border-color: #03C4EB; color: #03C4EB;" type="button" id="pwcancle">Cancel</button>
						</div>
						</form>
					</div>
					<!-- <div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
						<h3 class="mb-4">Application Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="app-check">
										<label class="form-check-label" for="app-check">
										App check
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="defaultCheck2" >
										<label class="form-check-label" for="defaultCheck2">
										Lorem ipsum dolor sit.
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
						<h3 class="mb-4">Notification Settings</h3>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification1">
								<label class="form-check-label" for="notification1">
									Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum accusantium accusamus, neque cupiditate quis
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification2" >
								<label class="form-check-label" for="notification2">
									hic nesciunt repellat perferendis voluptatum totam porro eligendi.
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="notification3" >
								<label class="form-check-label" for="notification3">
									commodi fugiat molestiae tempora corporis. Sed dignissimos suscipit
								</label>
							</div>
						</div>
					</div> -->
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
	  <script src="/web/resources/assets/vendor/aos/aos.js"></script>
	  <script src="/web/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	  <script src="/web/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	  <script src="/web/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	  <script src="/web/resources/assets/vendor/php-email-form/validate.js"></script>
	  <script src="/web/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	  <script src="/web/resources/assets/vendor/typed.js/typed.min.js"></script>

	  <!-- Template Main JS File -->
	  <script src="/web/resources/assets/js/main.js"></script>
	  
	  <!-- mypage design -->
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>