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
          <li class="dropdown"><a href="/web/resources/project/index.jsp"><span>?????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">?????????????</a></li>
              <li><a href="/web/resources/project/info.jsp">????????????</a></li>
              <li><a href="/web/resources/project/cost.jsp">????????????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>?????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="/web/goReserve.do">???????????????</a></li>
              <li><a href="/web/reserveCompleteListAll.do">???????????? ??????</a></li>
              <li><a href="/web/goReserve.do">??????????????????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>?????????/??????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">?????????</a></li>
              <li><a href="#">????????????</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href=""><span>????????????</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">??????????????????</a></li>
              <li><a href="#">1:1??????</a></li>
              <li><a href="#">????????????</a></li>
              <li><a href="#">????????????</a></li>
            </ul>
          </li>
          <span style="padding: 30px"></span>
          <c:choose>
             <c:when test="${sessionScope.id eq null or sessionScope.id eq '' }">
                <li><a class="nav-link scrollto" id="sign" data-bs-toggle="modal" data-bs-target="#exampleModal">?????????</a></li>
                <li><a class="nav-link scrollto" id="sign" href="/web/signupProcess.do">????????????</a></li>
             </c:when>
             <c:otherwise>
                <li><a class="nav-link scrollto" id="sign" href="/web/logoutProcess.do">????????????</a></li>
                <li><a class="nav-link scrollto" id="sign" href="/web/mypageInfo.do">???????????????</a></li>          
             </c:otherwise>
          </c:choose>
          
<!-- ????????? ??????,  choose when otherwise ????????? ????????? (??????????????? ????????? ????????? ??????, ?????????????????? ????????? ???????????? ??????)
		<c:if test="${id ne null and id ne ''} ">
          <li><a class="nav-link scrollto" href="#contact">????????????</a></li>
          <li><a class="nav-link scrollto" href="#contact">???????????????</a></li> 
        </c:if>  
          -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
</body>
</html>