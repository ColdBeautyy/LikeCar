<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Imperial Bootstrap Template</title>
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
 <!--  <link href="/web/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
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



</head>
<body>
 <!-- ======= Modal Section ======= -->
   <jsp:include page="signIn.jsp"></jsp:include> 

 <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <a href="/web/resources/project/index.jsp" class="logo mr-auto"><img src="/web/resources/assets/img/logo.png" alt=""></a>
      <!-- Uncomment below if you prefer to use a text logo -->
      <!-- <h1 class="logo mr-auto"><a href="index.html">Imperial</a></h1> -->

      <nav id="navbar" class="navbar">
        <ul>
          <li class="dropdown"><a href="/web/resources/project/index.jsp"><span>라익카</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">라익카란?</a></li>
              <li><a href="/web/resources/project/info.jsp">이용안내</a></li>
              <li><a href="/web/resources/project/cost.jsp">요금안내</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>서비스</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/web/goReserve.do">실시간예약</a></li>
              <li><a href="/web/reserveCompleteListAll.do">예약상태 확인</a></li>
              <li><a href="/web/goReserve.do">나눔카서비스</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>이벤트/쿠폰</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">이벤트</a></li>
              <li><a href="#">제휴혜택</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>고객센터</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">자주찾는질문</a></li>
              <li><a href="#">1:1문의</a></li>
              <li><a href="#">공지사항</a></li>
              <li><a href="#">제휴안내</a></li>
            </ul>
          </li>
          <span style="padding: 30px"></span>
          <c:choose>
             <c:when test="${sessionScope.id eq null or sessionScope.id eq '' }">
                <li><a class="nav-link scrollto" id="sign" data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</a></li>
                <li><a class="nav-link scrollto" id="sign" href="/web/signupProcess.do">회원가입</a></li>
             </c:when>
             <c:otherwise>
                <li><a class="nav-link scrollto" id="sign" href="/web/logoutProcess.do">로그아웃</a></li>
                <li><a class="nav-link scrollto" id="sign" href="/web/mypageInfo.do">마이페이지</a></li>          
             </c:otherwise>
          </c:choose>
          
<!-- 로그인 하면,  choose when otherwise 문의로 위까지 (로그인하면 세센에 아이디 저장, 로그아웃하면 세센에 저장한거 해제)
		<c:if test="${id ne null and id ne ''} ">
          <li><a class="nav-link scrollto" href="#contact">로그아웃</a></li>
          <li><a class="nav-link scrollto" href="#contact">마이페이지</a></li> 
        </c:if>  
          -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
</body>
</html>