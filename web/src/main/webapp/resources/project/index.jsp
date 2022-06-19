<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Welcome to Like Car</title>
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

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){

	});
</script>

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
        <c:if test="${sessionScope.id eq null or sessionScope.id eq '' }">
        <div class="actions">
          <a href="" class="btn-services" id="sign" data-bs-toggle="modal" data-bs-target="#exampleModal">SIGN IN</a>
          <a href="/web/signupProcess.do" class="btn-get-started" id="sign" >SIGN UP</a>
        </div>
        </c:if>
      </div>
     </div>
  </section><!-- End Hero -->

  <!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>
 
  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">About Us</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">일상의 모든곳에서 이동을 새로 그리는 카셰어링, 라익카입니다.</p>
          </div>
        </div>
      </div>
      <div class="container about-container wow fadeInUp">
        <div class="row">

          <div class="col-lg-6 about-img">
            <img src="/web/resources/assets/img/company.jpg" alt="">
          </div>

          <div class="col-md-6 about-content" style="padding: 20px">
            <h2 class="about-title" style="padding-top: 20px; padding-bottom: 20px">차가 필요한 모든 순간, 라익카</h2>
			<p class="about-text" style="padding-top: 10px; padding-bottom: 10px">
				<b>이동의 문제를 해결합니다</b>
            </p>
            <p class="about-text">
				라익카는 이미 익숙해진 일상 속 수많은 이동의 문제를 발견해 해결합니다. <br>
				우리는 지금까지 쌓아온 데이터에 기반해 사람들이 원하는 이동의 모습을 찾고, 새로운 기술을 활용해 다양한 상황에 맞는 최선의 이동 방법을 제시합니다.
            </p>
            <p class="about-text" style="padding-top: 10px; padding-bottom: 10px">
				<b>플랫폼을 통해 새로운 모빌리티 생태계를 구축합니다.</b>
            </p>
            <p class="about-text">
				라익카는 소유 기반의 모빌리티 생태계를 새롭게 바꿉니다.<br>
				자가용을 관리하며 많은 비용과 시간 등 비효율을 감수하던 사람들은 이제 이동 자체에 집중합니다.
				라잇카의 플랫폼에서 이동 수단의 사회적 효용은 극대화 되고, 모빌리티 생태계를 새로운 비즈니스 기회를 찾습니다.
            </p>
            <p class="about-text" style="padding-top: 10px; padding-bottom: 10px">
				<b>새로운 라이프스타일을 일상으로 만듭니다.</b>
            </p>
            <p class="about-text">
				라익카는 새로운 차원의 이동 서비스를 하나씩 구현합니다.<br>
				어딘가로 이동하는 순간, 사람들은 라익카의 모빌리티 플랫폼에서 전보다 다양한 선택권을 갖게 됩니다.
				한 번쯤 꿈꿔온 새로운 라이프스타일이 모두의 일상이 됩니다.
            </p>
          </div>
        </div>
      </div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">Our Services</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">사지 않고 이용한다, 내 차가 필요 없는 이유</p>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-briefcase"></i></div>
            <h4 class="service-title"><a href="">필요한 시간만큼</a></h4>
            <p class="service-description">데이트, 외부 미팅, 쇼핑 차가 필요한 순간 언제든 10분 단위로</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="service-title"><a href="">편리한 대여/반납</a></h4>
            <p class="service-description">앱으로 간편하게 예약! 별도의 인계 과정 없이 무인으로 차를 대여</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="service-title"><a href="">합리적인 대여 비용</a></h4>
            <p class="service-description">대여시간과 주행거리에 비례하는 합리적인 비용만 지불하는 시스템</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="service-title"><a href="">다양한 차종선택</a></h4>
            <p class="service-description">경차, SUV, 전기차, 수입차까지 60여 종 이상의 차종 중 선택</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-brightness-high"></i></div>
            <h4 class="service-title"><a href="">어디든 내 주위 3분</a></h4>
            <p class="service-description">먼 곳으로 이동하지 않아도 회사, 집, 학교, 내 주위 3분 내 그린존 위치</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-calendar4-week"></i></div>
            <h4 class="service-title"><a href="">1시간 부터 6개월까지</a></h4>
            <p class="service-description">편도부터 단기 쉐어부터 장기 렌트까지 원하는 기간만큼 대여</p>
          </div>
        </div>
      </div>
    </section><!-- End Services Section -->

    <!-- ======= Subscrbe Section ======= -->
    <section id="subscribe">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-8">
            <h3 class="subscribe-title">Partner with LikeCar</h3>
            <p class="subscribe-text">라익카는 역량있는 파트너들과 새로운 모빌리티 생태계를 만들고 있습니다</p>
          </div>
          <div class="col-md-4 subscribe-btn-container">
            <a class="subscribe-btn" href="#">제휴문의</a>
          </div>
        </div>
      </div>
    </section><!-- End Subscrbe Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">공지사항</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">Si stante, hoc natura videlicet vult, salvam esse se, quod concedimus ses haec dicturum fuisse</p>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">ALL</li>
              <li data-filter=".filter-app">안내</li>
              <li data-filter=".filter-card">제휴</li>
              <li data-filter=".filter-web">예약</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container">

		<%-- <c:forEach var="i" items="${list}" end="9" step="1">	
			  <c:choose>
			  	<c:when test="${i.sort ne='' and i.sort eq '안내'}">
			  	<div class="col-lg-4 col-md-6 portfolio-item filter-app">
			  	</c:when>
			  	<c:when test="${i.sort ne='' and i.sort eq '제휴'}">
			  	<div class="col-lg-4 col-md-6 portfolio-item filter-card">
			  	</c:when>
			  	<c:when test="${i.sort ne='' and i.sort eq '예약'}">
			  	<div class="col-lg-4 col-md-6 portfolio-item filter-web">
			  	</c:when>
			  </c:choose>
            <img src="${i.fileName }" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h2>${i.title}</h2>
              < <p>${i.sort}사항</p>
               <a href="/web/selectList.do?no=${i.no }" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>
        </c:forEach>   --%>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/web/resources/assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h5>시스템 점검 안내</h5>
              <p >안내사항</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/web/resources/assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h5>5월 예약 프로모션</h5>
              <p >예약</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/web/resources/assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h5>포인트 적립 변동 안내</h5>
              <p >안내사항</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/web/resources/assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h5>5월 제휴 프로모션</h5>
              <p >제휴</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/web/resources/assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>예약</h4>
              <p style="color: white;">Web</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="/web/resources/assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>안내</h4>
              <p style="color: white;">App</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/web/resources/assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>제휴</h4>
              <p style="color: white;">Card</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="/web/resources/assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>제휴</h4>
              <p style="color: white;">Card</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="/web/resources/assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>예약</h4>
              <p style="color: white;">Web</p>
              <a href="/web/resources/assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bi bi-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bi bi-link"></i></a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

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

</body>

</html>