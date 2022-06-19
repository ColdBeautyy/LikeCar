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
<title >요금안내 | 라익카</title>
<style >
	div{
		padding: 10px 25px;
	}
	
</style>

<style>
   table {
      border-collapse: collapse;
      border-top: 3px solid #168;
    }  
    table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    table th, table td {
      padding: 30px;
      border: 3px solid #ddd;
    }
    table th:first-child, table td:first-child {
      border-left: 0;
    }
    table th:last-child, table td:last-child {
      border-right: 0;
    }
    table tr td dt dd:first-child{
      text-align: center;
    }
    table caption{caption-side: bottom; display: none;} 
     
 
</style>

</head>
<body>
 <!-- ======= Modal Section ======= -->
  <jsp:include page="signIn.jsp"></jsp:include>
 
 <!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>
 
</body>


          

<!-- --------------------------container--------------------------->
  <div id="container">
  
    <div class="content-header">
      <div class="content-header-inner bg-about" style="padding: 25px 50px;">
        <span class="align"></span>
        <div class="txt">
          <h2 style="font-weight: bold;">이용안내</h2>
        </div>
      </div>
    </div>
	<hr>
    <div class="content-body">
      <div class="breadcrumb">
        <div class="breadcrumb-inner">
        </div>
      </div>

      <!-- 이용방법 -->
      <div class="section">
        <div class="section-box first">
          <div class="section-tit">
            <h3 class="page-tit" style="font-weight: bold;">이용방법</h3>
            <p class="page-dsc">회원가입을 하시면 더욱 편리하게 라익카 서비스를 이용할 수 있습니다.</p>
          </div>

          <!-- <div class="guide-app">
            <ul class="head">
              <li><span class="num">01</span>회원가입<span class="arr"></span></li>
              <li><span class="num">02</span>차량예약<span class="arr"></span></li>
              <li><span class="num">03</span>차량이용<span class="arr"></span></li>
              <li><span class="num">04</span>차량반납</li>
            </ul> 나중에 다시 살려ㅠㅠ
 -->
 
 			<br>
            <ul class="cont">
              <li>
                <dl class="step1">
                  <dt><span class="num">STEP 1.&nbsp;&nbsp;</span>회원가입</dt>
                  <dd>
                    <p class="dsc">회원가입 페이지에 들어가서 면허정보와 결제정보를 입력해 회원가입을 완료합니다.</p>
<!--                     <p class="dsc">회원가입 페이지에 들어가서 면허정보와 결제정보를 입력해<br>회원가입을 완료합니다.</p> -->
                    <p class="u-tip"><span class="badge bg-info text-dark">TIP</span>회원가입을 하면 다양한 혜택이 있어요. 기회를 놓치지 마세요!</p>
                  </dd>
                </dl>
              </li>
              
              <br>
              <li>
                <dl class="step2">
                  <dt><span class="bg"></span><span class="num">STEP 2.&nbsp;&nbsp;</span>차량예약</dt>
                  <dd>
                    <p class="dsc">원하는 차량을 정하고, 대여시간을 설정해 간편하게 예약합니다.</p>
<!--                     <p class="dsc">원하는 차량을 정하고<br>대여시간을 설정해 간편하게 예약합니다.</p> -->
                    <p class="u-tip"><span class="badge bg-info text-dark">TIP</span>더 경제적으로 라익카를 이용하시려면 다양한 쿠폰과 이벤트를 꼭 확인하세요.</p>
                    <!-- <p class="u-tip"><span class="badge bg-info text-dark">TIP</span>더 경제적으로 라익카를 이용하시려면<br>다양한 쿠폰과 이벤트를 꼭 확인하세요.</p> -->
                  </dd>
                </dl>
              </li>
              
              <br>
              <li>
                <dl class="step3">
                  <dt><span class="num">STEP 3.&nbsp;&nbsp;</span>차량이용<dt>
                  <dd>
                    <p class="dsc">예약 후, 라익카의 연락을 기다려주세요. 필요한 시간에 차량을 픽업 할 수 있도록 도와드립니다.</p>
                  </dd>
                </dl>
              </li>
              
              <br>
              <li>
                <dl class="step4">
                  <dt><span class="num">STEP 4.&nbsp;&nbsp;</span>차량반납</dt>
                  <dd>
                    <p class="dsc">지정된 장소에 차량을 주차하고 반납 신청합니다.</p>
<!--                     <p class="dsc">지정된 장소에 차량을 주차하고<br>반납 신청합니다.</p> -->
                    <p class="u-tip"><span class="badge bg-info text-dark">TIP</span>다음 고객이 헤매지 않도록 주차위치를 1:1 문의에 남겨주세요.</p>
<!--                     <p class="u-tip"><span class="badge bg-info text-dark">TIP</span>다음 고객이 헤매지 않도록<br>주차위치를 1:1 문의에 남겨주세요.</p> -->
                  </dd>
                </dl>
              </li>
            </ul>

            <div class="btn-wrap">
            </div>
          </div>
        </div>
      </div>
      <!-- //홈페이지 이용방법 -->

      <!-- 라익카 클린 에티켓 -->
      
      <hr>
      <div class="section guide-etiquette">
        <div class="section-head">
          <div class="section-tit">
            <h3 class="page-tit" style="font-weight: bold;">라익카 클린 에티켓</h3>
            <p class="page-dsc">모두가 함께 이용하는 라익카, 행복한 드라이빙이 될 수 있도록 에티켓을 꼭 지켜주세요.</p>
<!--             <p class="page-dsc">모두가 함께 이용하는 라익카, 행복한 드라이빙이 될 수 있도록<br>에티켓을 꼭 지켜주세요.</p> -->
          </div>
        </div>
        <div class="section-box">
        
    	  <ul>
            <li><div><span class="ico1"></span><strong>금연,&nbsp;</strong>라익카 전 차량 내에서는 흡연 금지입니다.<br>흡연이 적발되면 페널티 비용 20만 원이 부과되며<br>서비스 이용이 영구 불가합니다.</div></li>
            <li><div><span class="ico2"></span><strong>쓰레기 금지,&nbsp;</strong>즐거운 드라이빙 중 생긴 쓰레기는 다음 고객을 위해<br>챙겨서 내려주세요. 반납 전 컵홀더나 콘솔박스에 남은<br>쓰레기가 있는지 꼭 확인해주세요.</div></li>
            <li><div><span class="ico3"></span><strong>연료 체크,&nbsp;</strong>다음 고객이 차량을 이용하는데 필요한 연료가 남아있나요?<br>(40% 이상 남은 상태를 권장합니다.)<br>디젤/ 휘발유 차량은 라익카 내에 비치된 주유카드로<br>주유를 해 주시고, 전기차는 반납 시 충전기를 꼭 연결해주세요.</div></li>
            <li><div><span class="ico4"></span><strong>반납시간 준수,&nbsp;</strong>약속한 반납시간을 지켜주세요. 부득이하게 지연되는 경우에는<br>반납시간을 연장해주셔야 합니다. 단, 다음 고객이 이미 차량을<br>예약한 경우에는 연장이 불가하며 반납 지연 시간에 비례하여<br>페널티 비용이 부과됩니다.</div></li>
            <li><div><span class="ico5"></span><strong>반려동물,&nbsp;</strong>반려동물과 함께 즐거운 드라이빙을 즐기셔도 됩니다.<br>단, 꼭 캐리어 안에 반려동물을 태운 상태로 탑승해주세요.</div></li>
          </ul> 
          
             
          <!-- <ul>
            <li><div><span class="ico1"></span><strong>금연</strong>라익카 전 차량 내에서는 흡연 금지입니다.<br>흡연이 적발되면 페널티 비용 20만 원이 부과되며<br>서비스 이용이 영구 불가합니다.</div></li>
            <li><div><span class="ico2"></span><strong>쓰레기 금지</strong>즐거운 드라이빙 중 생긴 쓰레기는 다음 고객을 위해<br>챙겨서 내려주세요. 반납 전 컵홀더나 콘솔박스에 남은<br>쓰레기가 있는지 꼭 확인해주세요.</div></li>
            <li><div><span class="ico3"></span><strong>연료 체크</strong>다음 고객이 차량을 이용하는데 필요한 연료가 남아있나요?<br>(40% 이상 남은 상태를 권장합니다.)<br>디젤/ 휘발유 차량은 라익카 내에 비치된 주유카드로<br>주유를 해 주시고, 전기차는 반납 시 충전기를 꼭 연결해주세요.</div></li>
            <li><div><span class="ico4"></span><strong>반납시간 준수</strong>약속한 반납시간을 지켜주세요. 부득이하게 지연되는 경우에는<br>반납시간을 연장해주셔야 합니다. 단, 다음 고객이 이미 차량을<br>예약한 경우에는 연장이 불가하며 반납 지연 시간에 비례하여<br>페널티 비용이 부과됩니다.</div></li>
            <li><div><span class="ico5"></span><strong>반려동물</strong>반려동물과 함께 즐거운 드라이빙을 즐기셔도 됩니다.<br>단, 꼭 캐리어 안에 반려동물을 태운 상태로 탑승해주세요.</div></li>
          </ul> -->
          <div class="btn-wrap">
            <a class="u-btn btn-arr-lg" href="/web/resources/project/cost.jsp">요금안내 바로 가기</a>
          </div>
        </div>
      </div>
      <!-- //라익카 클린 에티켓 -->
    </div>



  
  </div>
  <!-- // End #container -->



 <!-- ======= Footer ======= -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>