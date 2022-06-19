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
	$("div[name='context']").hide();
	$("a#tos1").click(function(){
		$("div#tos1").show();
		});
	
	$(function(){	
	$("div[name='context']").hide();
	$("a#tos2").click(function(){
		$("div#tos2").show();
		});
	
	$(function(){	
		$("div[name='context']").hide();
		$("a#tos3").click(function(){
			$("div#tos3").show();
			});
		
		$(function(){	
			$("div[name='context']").hide();
			$("a#tos4").click(function(){
				$("div#tos4").show();
				});
			
			$(function(){	
				$("div[name='context']").hide();
				$("a#tos5").click(function(){
					$("div#tos5").show();
					});
	
	});
		
 /* top버튼의 */
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 500) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
</script>



<style >
	div{
		padding: 10px 25px;
	}
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
      padding: 10px;
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

<style> /* top버튼 */
	button#MOVE_TOP_BTN {
    position: fixed;
    right: 5%;
    bottom: 50px;
    display: none;
    z-index: 999;
		}
		
	
 </style>
       



</head>
<body>
<!-- ======= Modal Section ======= -->
  <jsp:include page="signIn.jsp"></jsp:include>
 <!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>
 
</body>

            
  <div id="container">
    <div class="content-header">
      <div class="content-header-inner bg-about" style="padding: 25px 50px;">
        <span class="align"></span>
        <div class="txt">
          <h2 style="font-weight: bold;">이용약관</h2>
        </div>
      </div>
    </div>
    <ul class="nav nav-tabs nav-justified">
  	
  	
    <li class="nav-item"><a class="nav-link active" data-toggle="tab" id="tos1">회원이용약관</a></li>
    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tos2">개인정보처리방침</a></li>
    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tos3">자동차대여약관</a></li>
    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tos4">위치기반서비스 이용약관</a></li>
    <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#tos5">위치정보사업자 이용약관</a></li>
    
    
  </ul>
   <hr>
  </div>
  
  
  
  
  <!-- top버튼 -->
    <button id="MOVE_TOP_BTN" href="#">TOP</button>            
               

  


<!-- --------------------------tos1--------------------------->
	<!--  이용약관  -->
<!-- 회원이용약관 -->
<div class="tab-content" align="left" >
<div class="tab-pane fade show active" name="context" style="padding:  20px 100px;" id="tos1">          
<h5>제1조. 목적</h5>
<p>
  본 약관은 ㈜라익카 (이하 '회사')가 운영하는 라익카 서비스를 이용함에 있어 '회사'와 회원의 권리와 의무, 책임사항 및 기타 필요한 사항을 정함을 목적으로 합니다.
</p>


<h5>제2조. 용어의 정의</h5>
<p>
  본 약관에서 사용하는 용어의 뜻은 다음 각 호와 같습니다.
  <br/>① '라익카 서비스'라 함은 '회사'가 본 이용 약관에 따른 서비스를 회원에게 제공하기 위하여 구축한 플랫폼으로서 인터넷 사이트의 형태로 자동차 대여 서비스를 제공하는 사업과 향후 관련되는 '회사'를 영위하게 될 제반 사업 일체 및 운영을 위한 서비스를 말하며 '회사'는 다음과 같은 업무를 수행합니다.
  <span class="terms_pdl">
    1. 자동차 장기/단기 대여 및 법인 자동차를 위한 예약 및 결제 대행 서비스
    <br/>2. 그린카에서 제공하는 재화 또는 용역에 대한 정보 제공 서비스<br/>
  </span>
  본 조의 서비스 이외에도 추가적인 서비스를 개발하여 회원에게 제공 할 수 있습니다.
  <br/>② '회원'이라 함은 본 약관에 대한 동의 절차를 거쳐 회원 가입을 통해 '회사'가 제공하는 서비스를 이용 할 수 있는 권한을 부여 받은 대상을 말합니다.
  <span class="terms_pdl">
    1. ‘라익카 회원‘ 이란 라익카에 회원 가입을 하고, '회사'가 제공하는 온라인 서비스를 이용할 수 있는 자격을 가진 회원을 의미합니다.<br>
  </span>
  ③ '자동차 대여 사업자'라 함은 홈페이지(WEB) '회사'의 예약 및 결제 대행 계약을 통해 회원에게 자동차 대여 서비스를 제공하는 사업자를 말합니다.
  <br/>④ '홈페이지(WEB)'라 함은 회원 계정(ID 및 비밀번호)을 이용하여 서비스를 제공받을 수 있도록 라익카가 운영하는 'www.likecar.co.kr' 의 WEB 페이지를 말합니다.
  <!-- <br/>⑤ '동반운전자'란 회사에서 제공하는 그린카 서비스를 이용 할 수 있는 통합회원, 일반회원으로 계약자의 의사에 따라, 동반하여 운전을 할 수 있는 자격을 가진 자를 의미 합니다. -->
  <br/>⑥ 본 조에서 정의되지 않은 약관 상의 용어의 의미는 일반적인 거래 관행을 따릅니다.
</p>


<h5>제3조. 약관 게시와 개정</h5>
<p>
  ① '회사'는 본 약관의 내용을 회원이 쉽게 확인 할 수 있도록 '홈페이지(WEB)'에 게시합니다.
  <br/>② '회사'는 본 약관의 내용을 수시로 개정 가능하며 약관을 개정 할 경우 개정 내용을 명시하여 적용일자 7일 전부터 적용일 이후 상당한 기간 동안, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안, E-mail 통보, 홈페이지(WEB), 서면 통보, 사업장 및 제휴 가맹점 내 게시 등의 방법 중 1가지 이상의 방법으로 회원에게 고지합니다.
  <br/>③ '회사'가 회원에게 E-mail, 서면 통보의 방법으로 약관 개정 사실 및 내용을 개별 고지하는 경우에, 회원이 제공한 이메일과 주소 중 가장 최근에 제공된 곳으로 통보해야 하며 회원이 최근의 정보로 변경하지 않아 발생한 손해에 대해서는 어떠한 책임도 지지 않습니다.
  <br/>④ 회원이 개정 약관의 적용에 동의하지 않는 경우 '회사'는 개정 약관의 내용을 적용 할 수 없으며, 이 경우 회원은 회원 탈퇴를 할 수 있습니다. 단, 이의가 있음에도 불구하고 본 조 2항에 명시된 고지일자부터 적용 일자 이내에 회원 탈퇴를 하지 않을 경우 개정 약관에 동의한 것으로 간주합니다.
  <br/>⑤ 본 약관에 동의하는 것은 '회사'가 운영하는 '홈페이지(WEB)'를 방문하여 정기적으로 약관의 변경 사항을 확인하는 것에 동의함을 의미하며, 변경된 약관에 대한 정보를 알지 못하여 발생하는 회원의 손해에 대하여 책임을 부담하지 않습니다.
</p>


<h5>제4조. 약관 해석과 효력</h5>
<p>
  ① 규정에 의하여 개정된 약관(이하 '개정 약관')은 원칙적으로 그 효력 발생일로부터 장래에 향하여 유효하며, 본 조 규정의 통지 효력은 각 조항에서 규정하는 개별적, 전체적인 통지의 경우에도 이를 준용합니다.
  <br/>② '회사'는 특정 서비스에 대해서는 별도의 약관(이하 '개별약관')을 둘 수 있으며, 이를 '홈페이지(WEB)' 를 통해 공지 할 수 있습니다. 해당 내용이 본 약관과 충돌 할 경우에는 '개별약관'이 우선하여 적용되며 '라익카 자동차대여약관'의 경우 본 약관이 우선하여 적용됩니다.
  <br/>③ '회사'는 필요한 경우 서비스 이용과 관련된 세부적인 내용(이하 '이용정책'이라 함)을 정하여 이를 '홈페이지(WEB)' 등을 통하여 공지 할 수 있습니다.
</p>


<h5>제5조. 약관 외 준칙</h5>
<p>
  ① 본 약관에 명시되지 않은 사항에 대해서는 '정보통신망 이용촉진 및 정보보호 등에 관한 법률', '전자문서 및 전자거래기본법', '전자상거래 등에서의 소비자보호에 관한 법률', '약관의 규제에 관한 법률', '전자서명법', 등의 관계 법령 및 '회사'가 정한 서비스의 세부이용지침 등의 규정에 의합니다.
</p>


<h5>제6조. 회원가입 및 계약의 성립</h5>
<p>
  ① 라익카의 회원이 되고자 하는 자는 '회사'가 정한 가입 절차에 의해 본 약관을 포함한 '자동차대여약관', '개인정보의 위탁'에 동의함으로써 회원가입을 신청합니다.
  <br/>② 라익카는 본 조 1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 다만, 라익카는 다음 각 호에 해당하는 회원가입 신청에 대하여는 승낙을 하지 않거나, 사후에 회원가입 계약을 해지 할 수 있습니다.
  <span class="terms_pdl">
    1. 최소 가입 조건이 충족되지 않는 경우
    <br/>2. 가입신청자가 본 약관에 의하여 이전에 회원 자격을 상실한 적이 있는 경우 (단, 라익카의 회원 재가입)승낙을 얻은 경우에는 예외로 함
    <br/>3. 가입신청자의 실명이 아니거나, 타인의 명의를 이용한 경우
    <br/>4. 회사가 제시하는 내용을 기재하지 않았거나, 허위의 정보를 기재한 경우
    <br/>5. 회원으로 등록하는 것이 원활한 서비스 운영을 저해하거나, 기술상 현저히 지장이 있다고 판단되는 경우
    <br/>6. 가입신청자의 귀책 사유로 인하여 승인이 불가능하거나 규정을 위반하며 신청한 경우
  </span>
  ③ 회원가입 계약 성립 시기는 홈페이지(WEB) 신청 절차 상에서 완료를 표시한 시점으로 합니다.
  <br/>④ 라익카는 회원에 대해 '이용 정책'에 따라 서비스 이용에 차등을 둘 수 있습니다.
  <br/>⑤ 라익카는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보 또는 취소 할 수 있습니다.
</p>


<h5>제7조. 회원의 ID 및 비밀번호에 대한 책임과 의무</h5>
<p>
  ① 계정 정보(ID 및 비밀번호)에 관한 관리 책임은 회원에게 있으며, 회원은 자신의 계정 정보를 제3자에게 제공하지 아니하고 3개월 마다 비밀번호 변경하여 관리의 의무를 다 합니다.
  <br/>② 회원이 자신의 계정 정보를 도난 당하거나 제3자가 이용하고 있음을 인지한 경우, 즉시 회사에 알려야 하며 별도의 안내가 있는 경우 이에 따라야 합니다.
  <br/>③ '회사'는 회원이 본 조항의 주의사항을 소홀히 하여 발생한 회원의 어떠한 불이익에 대하여도 책임을 지지 아니합니다.
</p>


<h5>제8조. 회원 탈퇴 및 자격상실</h5>
<p>
  ① 회원은 홈페이지(WEB)를 통해 언제든지 직접 탈퇴가 가능하며 라익카는 회원의 요청에 따라 서면, E-mail, 전화, 기타 방법으로 접수된 회원 탈퇴 요구사항에 대해 보유하고 있는 모든 정보를 개인정보보호방침에 따라 삭제 합니다. 단, 다음 각 호의 어느 하나에 해당하는 경우 탈퇴 처리가 거절되거나, 별도 지침에 의해 조치 될 수 있습니다.
  <span class="terms_pdl">
    1. 회원이 라익카에 대한 금전적인 채무가 존재 하는 경우
    <br/>2. 영구 정지 상태에서 탈퇴를 요청하는 경우
  </span>
  ② 회원탈퇴 완료 후 90일 이내에는 재가입이 제한 될 수 있습니다.
  <br/>③ 회원이 다음 각 호의 어느 하나에 해당하는 경우, 라익카는 회원 자격을 상실시킬 수 있습니다.
  <span class="terms_pdl">
    1. 다른 사람의 정보를 불법적으로 취득하거나 도용하는 등 전자거래 질서를 위협하는 경우
    <br/>2. 비정상적인 방법으로 다른 사람의 서비스 이용을 방해하거나, 허위 및 거짓 제보를 통해 서비스의 정상적인 운영을 지속 저해하는 경우
    <br/>3. 관계 법령에 위반되거나 공서 양속에 반하는 행위를 하는 등 회원자격을 유지시키는 것이 부적절하다고 판단되는 경우
    <br/>4. 마지막 서비스 이용일로부터 3년간 서비스 이용 이력이 없는 경우
    <br/>5. 페널티 제도의 적발 사례가 고의적이거나 여러 차례 반복되는 경우
  </span>
  ④ 회원은 본 조 제 3항에 따른 자격상실에 대해 '회사'가 정한 절차에 따라 이의 신청을 할 수 있으며, 라익카는 회원의 이의 신청이 정당하다고 판단되는 경우 즉시 회원 자격을 재개합니다.
  <br/>⑤ 회원이 사망한 경우 회원 사망일에 회원 자격이 상실됩니다.
</p>


<h5>제9조. 회원의 서비스 이용제한</h5>
<p>
  ① 라익카는 본 약관 제10조를 포함하여 회원이 본 약관 및 개별 약관의 의무를 위반하거나 서비스의 정상적인 운영을 방해한 경우, 경고, 일시정지 및 영구정지 등으로 서비스 이용을 제한 할 수 있습니다. 회원의 자격 재심사의 과정은 해당 회원의 서비스 이용 행태 및 이용 내역을 토대로 진행되며, 라익카의 내부 심사 결과에 따라 서비스 이용 자격 제한 및 해제가 이뤄질 수 있습니다.
  <br/>② 회원의 서비스 이용의 제한 기간 동안 소멸되거나 미지급된 포인트, 쿠폰 등의 기타 혜택은 그린카에서 책임지지 않습니다.
  <br/>③ 라익카는 본 조에 따라 서비스 이용을 제한하거나 계약을 해지하는 경우에는 본 약관 제11조에 의거하여 통지합니다.
  <br/>④ 회원은 본 조에 따른 이용제한 조치에 대해 라익카가 정한 절차에 따라 이의 신청을 할 수 있으며, 라익카는 회원의 이의 신청이 정당하다고 판단되는 경우 즉시 회원 자격을 재개합니다.
</p>
<div class="terms-tbl_wrap">
  <table class="board-view">
    <caption>
      회원의 서비스 이용제한
    </caption>
    <colgroup>
      <col style="width: 25%;" />
      <col style="width: 35%;" />
      <col style="width: 40%;" />
    </colgroup>
    <thead>
    <tr>
      <th class="first" scope="col">항목</th>
      <th scope="col">내용</th>
      <th scope="col">조치사항</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td class="first" rowspan="2">운영 차량 내, 흡연 행위</td>
      <td>
        일반/전자담배(비타민 스틱, 흡연 간주 행위 포함) 사용 제보 수신/적발
        시
      </td>
      <td>1회 적발 시, 영구정지</td>
    </tr>
    <tr>
      <td>차량 내 흡연 냄새, 흔적 등</td>
      <td>3회 누적 시, 영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="2">내/외부 청결불량</td>
      <td>애완동물 캐리어 미 탑승 상태 제보 수신/적발 시</td>
      <td>1회 적발 시, 영구정지</td>
    </tr>
    <tr>
      <td>
        애완동물 오염물(털, 배변물, 케리어 미 탑승 등), 쓰레기,오염물 등
      </td>
      <td>3회 누적 시, 영구정지</td>
    </tr>
    <tr>
      <td class="first">비치품 및 서비스 부정사용</td>
      <td>
        주유카드 남용, 세차 포인트 부정 적립 (최소 시간 예약, 반복 세차 시)
      </td>
      <td>경고 조치 및 회원 자격 재심사</td>
    </tr>
    <tr>
      <td class="first">회원 정보 불일치</td>
      <td>휴대번호, 면허정보를 포함한 기본 회원정보 불일치 시</td>
      <td>정상 정보 반영 시점까지 일시정지</td>
    </tr>
    <tr>
      <td class="first">미납 요금 발생</td>
      <td>차량 대여 이용료 및 페널티 비용 미납 시</td>
      <td>미납금 완납 시점까지 일시정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="4">차량 사고 발생</td>
      <td>사고 발생 시</td>
      <td>사고이후 CDW 요금 선택 제한</td>
    </tr>
    <tr>
      <td class="first">
        차량 이용 중 사고발생~수리종료 기간
      </td>
      <td>사고종료 처리 시점까지 일시정지</td>
    </tr>
    <tr>
      <td class="first">
        차량 이용 중 사고발생~(사고손해액 누적 2백 만원 이상)
      </td>
      <td>회원 자격 재심사 또는 영구정지</td>
    </tr>
    <tr>
      <td class="first">
        차량 이용 중 사고발생~(중대 사고 발생 및 이용자격 미준수)
      </td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">이용기간 내 자동차 사고 및 파손 미신고</td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="3">이용자격 부적합</td>
      <td>명의도용, 미성년자, 음주 및 약물 복용 운행 시</td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">지정 운전자 이외 제 3자, 동반운전자의 단독 운행</td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">
        범법 행위 적발 및 대외 기관을 통해 수사 공문이 수신된 경우
      </td>
      <td>회원 자격 재심사 또는 영구정지</td>
    </tr>
    <tr>
      <td class="first">이용규칙 미준수</td>
      <td>
        부정 사용 사례 적발 (주유카드 남용, 세차 포인트 부정 적립_최소 시간
        예약, 반복 세차 등)
      </td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="3">부정 사용</td>
      <td>
        차량옵션 도난/고의 파손 (네비게이션, 후방 카메라, 블랙박스, SD카드
        등)
      </td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">고의 반납지연 12시간 이상 ~</td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">차량 부정 사용(임의 운행)</td>
      <td>영구정지</td>
    </tr>
    <tr>
      <td class="first">대여차량 불법/비정상 용도 사용</td>
      <td>20조 2항 포함, 차량의 불법 정비,분해,점검 및 기타 범법행위</td>
      <td>회원 자격 재심사 또는 영구정지</td>
    </tr>
    </tbody>
  </table>
</div>

<br>
<h5>제10조. 페널티</h5>
<p>
  ① 라익카는 사용자간 기본 에티켓 준수 및 건전한 카셰어링 이용 문화 조성을 위해 페널티 제도를 운용하고 있습니다. 페널티 요금은 피해 발생으로 인한 최소 운영 비용을 근거로 책정되며 필요성, 활용성에 따라 언제든지 개정 될 수 있습니다.
  <br/>② 페널티 항목 외 '개별약관' 및 '개별정책'에 따라 서비스 운영상 저해가 되는 이용행태 및 서비스 취지, 목적에 맞지 않은 불법적, 비정상적 이용 등, 각 항목들의 위반 사항을 지속적으로 발생시키는 회원에 대해서는 이용 자격 심사를 통해 조치가 취해집니다.
  <br/>③ 페널티 요금을 부과 할 경우 회원에게 고지 또는 협의 후 결제 및 조치를 진행합니다.
</p>
<div class="terms-tbl_wrap">
  <table class="board-view word-break">
    <caption>
      페널티
    </caption>
    <colgroup>
      <col style="width: 20%;" />
      <col style="width: 17%;" />
      <col style="width: 23%;" />
      <col style="width: 10%;" />
      <col style="width: 30%;" />
    </colgroup>
    <thead>
    <tr>
      <th class="first" scope="col">항목</th>
      <th scope="col" colspan="2">위반내용</th>
      <th scope="col">페널티 요금<br />(변경 후)</th>
      <th scope="col">세부 내용</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td class="first" rowspan="2">예약 및 이용규칙</td>
      <td colspan="2">무료편도 예약완료 후 취소</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 발생실비 (탁송,주차비)</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        명의도용, 미성년자, 음주 및 약물 복용 운행 시
      </td>
      <td class="text-right">200,000</td>
      <td>
        페널티 요금 + 발생실비 + 영구정지 (차량 손해면책제도 적용 불가)
      </td>
    </tr>
    <tr>
      <td class="first" rowspan="10">차량 반납</td>
      <td class="text-center" rowspan="4">
        차량 반납 지연<br />(대여 종료시간 기준)
      </td>
      <td>① 반납예정시간 경과시점 ~ 30분 이내</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 지연 서비스 요금 ①</td>
    </tr>
    <tr>
      <td>② 30분 이상 ~ 60분 이내</td>
      <td class="text-right">20,000</td>
      <td>페널티 요금 + 지연 서비스 요금 ①+②</td>
    </tr>
    <tr>
      <td>③ 60분 이상 ~ + 연락두절</td>
      <td class="text-right">30,000</td>
      <td>페널티 요금 + 지연 서비스 요금 ①+②+③ +영구정지</td>
    </tr>
    <tr>
      <td>④ 12시간 이상 ~ + 연락두절</td>
      <td class="text-right">50,000</td>
      <td>페널티 요금 + 지연 서비스 요금 ①+②+③+④+발생실비+영구정지</td>
    </tr>
    <tr>
      <td class="first text-center" rowspan="4">차량 반납 조건 미준수</td>
      <td>연료부족 경고등 점등</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 현장 출동 서비스 요금</td>
    </tr>
    <tr>
      <td class="first">전기차 반납 시 충전기 미 연결</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 현장 출동 서비스 요금</td>
    </tr>
    <tr>
      <td class="first">실내/외 조명 미 소등으로 배터리 방전</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 현장 출동 서비스 요금</td>
    </tr>
    <tr>
      <td class="first">차량 문, 창문, 트렁크 개방으로 실내 훼손</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 실내세차 발생실비(수리비)</td>
    </tr>
    <tr>
      <td class="first text-center" rowspan="2">분실물 회수 도어제어</td>
      <td>도어잠금 누락으로 이슈 발생</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 발생실비</td>
    </tr>
    <tr>
      <td class="first">차량 부정 사용(임의 운행)</td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비 + 영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="4">그린존 사용</td>
      <td colspan="2">그린존 내 쓰레기 무단투기</td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 발생실비 (과태료 등)</td>
    </tr>
    <tr>
      <td class="first" colspan="2">차량 대여 시, 개인 이동 수단 주차</td>
      <td class="text-right">10,000</td>
      <td>
        페널티 요금 + 현장 출동 서비스 요금 + 발생실비 (주차비, 과태료)
      </td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        주차위치 미 준수 (장애인/주정차 위반, 과태료 발생 구역 등)
        주차불량 (이중중립주차 미준수, 주차면 범위 내 미주차 등)
      </td>
      <td class="text-right">10,000</td>
      <td>
        페널티 요금 + 현장 출동 서비스 요금 + 발생실비 (주차비, 과태료)
      </td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        그린존 시설물 파손
      </td>
      <td class="text-right">10,000</td>
      <td>
        페널티 요금 + 발생실비 (시설물 수리 비용 등)
      </td>
    </tr>
    <tr>
      <td class="first" rowspan="2">차량 내 흡연</td>
      <td colspan="2">
        일반/전자담배(비타민 스틱, 흡연 간주 행위 포함) 사용 제보 수신/적발
        시
      </td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(세차비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">차량 내 흡연 냄새, 흔적 등</td>
      <td class="text-right">20,000</td>
      <td>페널티 요금 + 발생실비(세차비) + 3회 누적 시, 영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="3">내/외부 청결불량</td>
      <td colspan="2">애완동물 캐리어 미 탑승 상태 제보 수신/적발 시</td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(세차비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        애완동물 오염물(털, 배변물, 케리어 미 탑승 등) 등
      </td>
      <td class="text-right">20,000</td>
      <td>페널티 요금 + 발생실비(세차비) + 3회 누적 시, 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        차량 내 쓰레기, 오염물 등 청결불량
      </td>
      <td class="text-right">20,000</td>
      <td>페널티 요금 + 발생실비(세차비) + 3회 누적 시, 영구정지</td>
    </tr>
    <tr>
      <td class="first" rowspan="8">차량 사용/관리</td>
      <td colspan="2">이용기간 내 자동차 사고 및 파손 미신고</td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(수리비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        지정 운전자 이외 제 3자, 동반운전자의 단독 운행
      </td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(탁송,수리비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">자동차 불법/비정상 용도 사용, 임의 수리 및 분해 등</td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(탁송,수리비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        비치품 분실/과실성 파손 (주유카드, 주차권, 차량키 등)
      </td>
      <td class="text-right">10,000</td>
      <td>페널티 요금 + 발생실비(재 비치비용)</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        부정 사용 사례 적발 (주유카드 남용, 세차 포인트 부정 적립_최소 시간
        예약, 반복 세차 등)
      </td>
      <td class="text-right">200,000</td>
      <td>페널티 요금 + 발생실비(실 사용 비용 * 3배) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        차량옵션 도난/고의 파손 (네비게이션, 후방 카메라, 블랙박스, SD카드
        등)
      </td>
      <td class="text-right">100,000</td>
      <td>페널티 요금 + 발생실비(재구매, 영업 손실비) + 영구정지</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        고급유, 사전 협의되지 않은 차량 소모품 지불,충전 등
      </td>
      <td class="text-right">20,000</td>
      <td>페널티 요금 + 발생실비</td>
    </tr>
    <tr>
      <td class="first" colspan="2">
        직접 회수 불가에 따른 물품확인 방문, 회수, 발송
      </td>
      <td class="text-right">-</td>
      <td>현장 출동 서비스 요금 + 발생실비</td>
    </tr>
    </tbody>
  </table>
</div>
<p>
  ※ 현장 출동 서비스 요금의 경우, 위반 내용 처리를 위해 운영되지 못한 대여 자동차의 표준 요금을 기준으로 책정 됩니다.
</p>

<h5>제11조. 회원에 대한 통지</h5>
<p>
  ① '회사'가 회원에 대한 통지를 하는 경우, 개별 안내를 제외 시 제3조2항에 규정된 방법 가운데 1가지 이상으로 당해 사항을 통지 할 수 있습니다.
  <br/>② '회사'는 불특정다수 회원에 대한 통지의 경우 1주일이상 그린카 홈페이지(WEB) 공지사항에 게시함으로써 개별 통지에 갈음 할 수 있습니다.
</p>


<h5>제12조. 회원의 의무</h5>
<p>
  ① 회원은 다음 각 호에 해당하는 행위를 하여서는 안 됩니다.
  <span class="terms_pdl">
    1. 서비스 이용 관련 제반 신청 및 변경 시 허위 내용 기재
    <br/>2. 타인의 정보를 도용하는 행위
    <br/>3. '회사'가 게시한 각종 정보의 무단 변경, 삭제 등 훼손 행위
    <br/>4. '회사'가 허용한 정보 이외의 다른 정보(컴퓨터 프로그램 및 광고 등)를 송신하거나 게시하는 행위
    <br/>5. '회사' 및 제3자의 지적재산권 침해 또는 명예를 손상하거나 업무를 방해하는 행위
    <br/>6. 외설적, 폭력적인 음성, 메시지, 영상 등 기타 공서양속에 반하는 언행 및 정보를 홈페이지(WEB)에 공개, 게시하거나, '라익카 고객센터' 이용 시 발언하는 행위
  </span>
  ② 회원은 본 약관의 규정, '개별 약관' 및 '개별 정책', '회사'가 통지한 주의사항, 관련 법령 등을 준수하여야 하며, 기타 '회사'의 원활한 서비스 제공에 방해되는 행위를 하여서는 안됩니다.
  <br/>③ 회원은 본 조항의 의무를 다하지 않을 경우 서비스 이용제한 또는 회원 자격이 상실 될 수 있습니다.
  <br/>④ 회원은 서비스 이용 중 회원의 고의나 과실로 판단되는 자동차 고장이나, 파손, 사고 등에 대하여 배상 할 책임이 있습니다.
  <br/>⑤ 회원은 본 약관 및 '개별약관'을 준수하지 않아 발생하는 '회사'의 모든 재산상의 손실이나 제3자에게 끼친 인적, 물적 손실에 대하여 배상 할 책임이 있습니다.
</p>


<h5>제13조. 회사의 의무</h5>
<p>
  ① '회사'는 본 약관 및 관련법이 금지하거나 공서양속에 반하는 행위를 하지 않으며, 지속적이며 안정적으로 서비스를 제공하기 위하여 최선을 다하여 노력합니다.
  <br/>② '회사'는 회원이 안전하게 서비스를 이용 할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 '개인정보처리방침'을 공시하고 준수합니다.
  <br/>③ '회사'는 회원의 서비스 이용에 대한 안내, 서비스 개진 의견, 기타 문의사항에 대한 응대를 위해 온라인 상담 채널 및 유선 고객센터(이하 '라익카 고객센터')를 상시 운영합니다.
  <br/>④ '회사'는 서비스 이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 이메일 등을 통하여 회원에게 처리과정 및 결과를 전달합니다.
</p>


<h5>제14조. 서비스의 변경 및 중단</h5>
<p>
  ① '회사'는 사업 종목의 전환, 업체 간의 통합, 사업 폐지 등 기타 '회사'의 판단에 의해 불가피한 영업상의 이유가 있다고 인정되는 경우 제공하는 서비스의 내용을 변경 할 수 있습니다. 이 경우에는 변경된 서비스의 내용 및 제공 일자를 명시하여 서비스 내용을 게시한 곳에 그 제공 일자의 30일 전부터 공지합니다. 단, 변동 내용을 구체적으로 공지하기가 불가능한 경우에는 30일 전에 그 취지 및 공지가 불가능한 사유를 '홈페이지(WEB)' 내 공지합니다.
  <br/>② '회사'는 다음 각 호의 어느 하나에 해당하는 사유가 발생한 경우 제2조1항 각 호에 명시된 서비스의 일부 또는 전부를 중단 할 수 있습니다.
  <span class="terms_pdl">
    1. 천재지변, 전쟁, 폭동, 화재, 파업 등 쟁의행위, 정부기관의 통제 기타 '회사'의 합리적인 노력으로 제어 할 수 없는 사유가 발생하거나 발생할 우려가 있는 경우
    <br/>2. 기간통신사업자로부터 전기통신서비스가 제공되지 않은 경우
    <br/>3. 회사의 시스템을 포함한 정보통신설비의 보수점검, 교체, 고장, 통신의 두절 등의 사유가 발생한 경우
    <br/>4. 제3자와의 제휴를 통해 서비스가 제공되는 경우, 당해 제휴 사업자의 사정에 따라 변경/중지되는 경우
    <br/>5. 기타 '회사'의 원활한 운영을 현저히 저해하는 사유가 발생한 경우
  </span>
  ③ '회사'는 제1항 또는 제2항의 사유로 서비스 내용이 변경 또는 중단되는 경우 이로 인해 회원이 입은 손해에 대하여 고의 또는 과실이 없는 이상 책임을 부담하지 않습니다.
</p>


<h5>제15조. 서비스 요금 및 손해배상 비용</h5>
<p>
  회원은 '회사'에서 규정한 서비스 요금 정책을 준수해야 하며, 아래 해당하는 서비스 및 손해배상 요금이나 추가 비용이 발생 될 수 있습니다. 회원은 회원 정보에 등록한 결제 카드 또는 '회사'가 인정하는 방법으로 서비스 및 손해배상 요금을 결제해야 합니다. 자세한 내용을 홈페이지(WEB)를 통해 게재하며 요금 정책은 그린카 운영 방침에 따라 변경 될 수 있습니다.
  <br/>① 서비스 요금
  <span class="terms_pdl">
    1. 서비스 요금은 서비스 이용 전, 후에 '전자결제'를 통해 자동으로 결제됩니다. 회원이 예약 취소를 하지 않은 경우, 서비스를 이용하지 않더라도 전체 서비스 요금이 부과됩니다.
    <br/>2. 회원은 서비스 이용 시 고지된 요금(보험료, 하이패스, 페널티, 추가 실비 등) 및 서비스 이용에 연계해 발생하는 추가 비용, 법률 위반으로 인한 모든 범칙금, 과태료 등을 지불해야 할 의무가 있습니다.
    <br/>3. 회원의 서비스 이용 내역에 따라 예약 연장 비용, 주행 요금, 기타 서비스 요금이 추가 결제 될 수 있으며, 페널티 요금, 범칙금 및 과태료 등이 발생한 경우 회원에게 고지 및 협의 후 결제가 진행됩니다.
    <br/>4. 회원의 개인 신용등급 및 연체 등의 문제로 인해 서비스 요금이 정산되지 않을 경우에는 이전 사용 내역이 모두 정산될 때까지 서비스 이용 자격이 일시 정지되며, 지속적인 문제가 발생할 경우에는 회원 자격이 박탈될 수 있습니다. 이러한 회원의 서비스 사용 권한에 대한 판단 기준은 '회사'의 내부 운영 규정에 근거합니다.
  </span>
  ② 손해배상 비용
  <span class="terms_pdl">
    1. 회원이 자동차 사고나 사건에 연루되어 자동차가 훼손되거나 파손된 경우, 회원은 그로 인하여 발생한 손해를 배상해야 할 책임이 있습니다.
    <br/>2. '회사'는 회원이 규정 사항 위반 시 본 약관 제10조 페널티 제도에 의거하여 '페널티 요금'을 부과 할 수 있으며, 이와 별도로 자동차 수리비, 소송 비용, 변호사 비용 등 발생 실비를 추가로 청구 할 수 있습니다.
    <br/>3. '회사'는 손해배상 요금에 대하여 고지 및 협의 후 전자결제를 통한 자동 결제 또는 회원과 협의한 결제 수단으로 지불 처리 할 수 있습니다.
    <br/>4. 회원이 본 약관 및 각 조항을 준수하지 않았을 경우, '회사'는 손해배상 요금 등 각종 수수료를 부과하는 것 이 외에 계약을 해지 할 수 있는 권리를 가집니다.
    <br/>5. '회사'는 서비스와 관련하여 발생한 미납 요금, 페널티 요금, 손해배상 요금 등에 대한 회원의 채무에 대해 채권 추심을 진행 할 수 있으며, 지속 연체될 경우 회원을 상대로 보전처분, 본안 소송 제기, 강제 집행 절차의 착수 등 채무 변제를 위한 법적 조치가 진행 될 수 있습니다.
  </span>
</p>


<h5>제16조. 포인트</h5>
<p>
  ① 라익카 포인트는 이용 결제 대여 금액을 기준으로 회원에게 제공되는 적립금으로 1포인트는 1원의 가치를 가지며 일정 포인트 이상 적립된 경우 만료 기간이 빠른 순으로 대여 요금의 대체 결제 수단으로 사용 할 수 있습니다.
  <br/>② 제휴회사 회원인 이용자가 라익카 서비스를 이용한 경우, 제휴회사 또는 '회사'가 사전에 공지한 일정 비율에 의하여 적립되며 1포인트는 1원의 가치를 가지게 됩니다. 이외 기타 제휴회사에 관한 사항은 제휴회사 회원 약관에서 정하는 바에 의합니다.
  <br/>③ 그린카 포인트, L.POINT는 현금으로 환급 될 수 없으며, 유효기간이 경과하거나 회원의 탈퇴 등으로 이용 계약이 종료되는 경우 자동 소멸됩니다.
  <br/>④ 적립된 라익카 포인트는 1년 동안 자동차 이용 실적이 없는 경우 전액 소멸됩니다.
  <br/>⑤ 라익카 포인트의 적립 방법, 이용조건, 이용기간 등은 라익카의 정책에 따라 변경될 수 있습니다. 이 경우 '회사'는 사전 유예 기간을 두고 변경 내용을 공지합니다.
  <br/>⑥ 라익카는 언제든지 회원의 포인트 정보를 검색 할 수 있으며, 회원의 제반 실적이 잘못된 경우에는 이를 임의로 정정 할 수 있습니다. 또한 회원이 본 약관 및 이용 정책 등 제반 규정을 위반 또는 악용하거나 부당한 방법으로 포인트를 적립한 경우, 라익카는 회원의 서비스 이용 제한 조치와 함께 포인트를 소멸시킬 수 있습니다.
</p>


<h5>제17조. 쿠폰</h5>
<p>
  ① 쿠폰은 '회사'가 리워드, 프로모션 등의 용도로 회원에게 제공하는 것으로 정해진 조건에 따라 서비스 요금의 전부 또는 일부를 할인 받을 수 있는 이용권을 말하며, 발급/사용 조건, 부여에 대한 권한은 라익카가 정한 이용 규정에 따르며 '홈페이지(WEB)'를 통하여 회원에게 안내합니다.
  <br/>② 쿠폰은 현금으로 환급 될 수 없으며, 쿠폰에 표시된 유효기간이 만료되면 자동으로 소멸 처리됩니다. 회원의 탈퇴 등으로 이용 계약이 종료되거나, 대체 할인이 적용되는 경우 할인 쿠폰은 소멸됩니다.
  <br/>③ 라익카로부터 무상 제공받은 쿠폰은 회원 간 거래 및 양도, 부정 목적으로 사용이 불가능하고 어떠한 경우에도 현금으로 환불 되거나 제3자에게 양도되지 않습니다.
  <br/>④ 쿠폰의 할인 금액(할인율), 사용방법, 사용기한 및 제한에 대한 사항은 쿠폰 또는 서비스 화면에 표시되며 명시된 내용과 개별 주의사항(이용조건)을 확인하여야 할 책임이 있습니다.
</p>


<h5>제18조. 회원카드</h5>
<p>
  ① 회원카드,티머니카드는 회원 본인 외에 타인에게 대여,계정 거래에 이용하는 행위는 금지되어 있으며, 이용 정책 위반으로 인한 모든 책임은 회원에게 있습니다.
  <br/>② 회원카드 발급 여부 및 용도는 회사 정책에 따라 변경될 수 있으며, 변경 사항이 있을 시 회원에게 공지합니다.
</p>


<h5>제19조. 분실물 처리</h5>
<p>
  회사'와 회원은 무인 서비스 특성상 발생 할 수 있는 분실물에 대해 주인을 찾아주기 위해 최선을 다합니다.
  <br/>① 자동차 반납 시에 회원이 놓고 내린 분실물에 대해서는 기본적으로 '회사'는 책임을 지지 않으나, 회원의 편의를 위하여 분실물 처리에 대한 관리 기준을 마련하고 접수/인수 인계 사항은 분실물 처리 대장에 기록, 유지합니다.
  <br/>② '회사'는 분실물 관리 기준에 의거하여 자동차 점검, 세차 등으로 현장에서 발견된 물품의 인계를 위한 제반 조치를 취하고, 소유자가 찾아가지 않을 시 입수된 물품에 따라 즉시 폐기 또는 최대 1개월까지 보관한 이후 관할 경찰서에 습득자 권리 포기/인계 절차를 진행 합니다.
  <br/>③ 기타 분실물 처리에 관한 제반 사항은 유실물법 등 관련법의 규정에 따릅니다.
  <span class="terms_pdl">
    1. 분실물 보관 기간
    <span class="terms_pdl">
      1) 일반 분실물 : 1개월
      <br/>2) 음식물 및 식물, 기타 부패 가능 품목 : 습득 당일 보관 후 익일 폐기
    </span>
    2. 분실물 회수 진행
    <span class="terms_pdl">
      1) 반납 완료 이후, 10분 이내에는 APP을 통해 분실물 회수를 위해 도어 제어가 가능합니다.
      <br/>2) 분실물 직접 회수가 불가능한 경우, 현장 출동 가능 여부를 확인하여 대리 방문/분실물 회수가 진행 될 수 있습니다.
      <br/>3) 분실물 회수로 인한 현장 출동 시 차량 배차 중지, 배달을 위한 영업 손실비는 습득 여부와 관계없이 고객 부담입니다.
    </span>
  </span>
</p>


<h5>제20조. 저작권의 귀속 및 이용제한</h5>
<p>
  ① 라익카가 작성한 저작물에 대한 저작권 및 기타 지적재산권은 라익카에 귀속합니다.
  <br/>② 회원은 서비스를 이용함으로써 얻은 정보를 라익카의 사전 승낙 없이 복제, 송신, 출판, 유튜브 채널, 배포, 방송 등 기타 방법에 의하여 영리 목적으로 이용하거나 제3자가 이용하도록 하여서는 안됩니다.
</p>

<h5>제21조. 게시물의 저작권</h5>
<p>
  ① 회원이 서비스 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속됩니다.
  <br/>② 게시물은 검색결과 내지 '회사'의 서비스 및 관련 프로모션 등에 노출 될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있습니다. 이 경우 '회사'는 저작권법 규정을 준수하며, 회원은 언제든지 '라익카 고객센터' 또는 '홈페이지(WEB)' 내 관리 기능을 통해 해당 게시물 등에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 요청 할 수 있습니다.
  <br/>③ '회사'는 제2항 이 외의 방법으로 회원의 게시물을 이용하고자 하는 경우에는 전화, 팩스, 이메일 등을 통해 사전에 회원의 동의를 얻습니다
</p>


<h5>제22조. 공개게시물의 삭제</h5>
<p>
  ① 회원의 공개 게시물의 내용이 다음 각 항목에 해당되는 경우 라익카는 회원에게 사전 통지 없이 공개 게시물을 삭제하거나, 비공개 설정 할 수 있고 해당 회원의 이용 제한, 자격 상실을 시킬 수 있습니다.
  <span class="terms_pdl">
    1. 회사, 다른 회원 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우
    <br/>2. 공서양속에 위반하는 내용의 정보, 문장, 도형 등의 유포에 해당하는 경우
    <br/>3. 범죄행위와 관련이 있다고 판단되는 내용인 경우
    <br/>4. '회사'의 저작권, 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우
    <br/>5. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하는 경우
    <br/>6. 동일한 내용을 중복하여 다수 게시하는 등 게시의 목적에 어긋나는 경우
  </span>
</p>


<h5>제23조. 분쟁해결</h5>
<p>
  ① 라익카는 서비스 이용에 대한 안내, '회원'이 제기하는 의견이나 불만을 반영하고, 피해 보상을 처리하기 위하여 온라인 상담 채널 및 유선 라익카 고객센터를 상시 운영합니다.
  <br/>② 라익카는 서비스 이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정 할 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 이메일 등을 통하여 회원에게 처리과정 및 결과를 전달합니다.
</p>


<h5>제24조. 책임제한</h5>
<p>
  ① '회사'는 천재지변 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
  <br/>② '회사'는 회원의 귀책 사유로 서비스 이용 중 장애가 발생한 경우 책임을 지지 않습니다.
  <br/>③ '회사'는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성에 대하여 '회사'의 고의 또는 중대한 과실이 없는 한 책임을 지지 않습니다.
  <br/>④ '회사'는 회원간 또는 회원과 제3자 상호간에 서비스를 매개로 한 거래에서 책임이 면제되며 이로 발생된 분쟁에 대해서는 개입 할 의무가 없고, 이로 인한 손해를 배상 할 책임도 없습니다.
  <br/>⑤ 회원이 서비스를 이용함에 있어 행한 불법행위나 본 약관 위반 행위로 인하여 '회사'가 회원 이외의 제3자로부터 손해배상 청구 또는 소송을 비롯한 각종 이의 제기를 받는 경우 회원은 자신의 책임과 비용으로 회사를 면책 시켜야 하며, '회사'가 면책되지 못한 경우 당해 회원은 그로 인하여 '회사'에 발생한 모든 손해를 배상하여야 합니다.
  <br/>⑥ '홈페이지(WEB)' 및 링크 등으로 연결된 사이트를 운영하는 '회사'(이하 '피연결 회사')는 '회사'와 별개의 사업자로서 독자적으로 운영됩니다. '회사'는 회원과 '피연결'회사' 간에 이루어진 일체의 거래에 대해서 어떠한 책임도 지지 않습니다.
</p>


<h5>제25조. 준거법 및 합의관할</h5>
<p>
  ① 본 약관에서 지정되지 않은 사항과, '회사'와 회원간 제기된 소송은 대한민국법 및 준거법으로 합니다.
  <br/>② '회사'와 회원 간 분쟁이 발생한 경우, 제소 당시 회원의 주소지 기준의 관할 법원으로 하며, 회원의 주소 또는 거소가 명확하지 않을 경우 관할 법원은 민사 소송법에 따라 정합니다. 단, 회원의 책임 사유로 채권 채무가 발생된 경우 그 관리 업무를 담당하는 '회사' 사무소 소재지의 지방 법원을 관할 법원으로 합니다.
</p>


<h5>부칙</h5>
<p>
  본 약관은 2021년 5월 7일부터 적용됩니다.
</p>
          </div>
          <!-- //회원이용약관 -->
        </div>


<!-- -------------------------------tos2---------------------------- -->

<!-- 개인정보처리방침 -->
<hr>
  <div class="terms-info">
  <div class="tab-pane fade show active" name="context" style="padding:  20px 100px;" id="tos2"> 
  <div> 
    <h5>㈜라익카 개인정보 처리방침</h5>
    <p>
      ㈜라익카(이하 '회사')는 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법'),
      개인정보 보호법, 통신비밀 보호법, 전기통신 사업법 등, 정보통신 서비스 제공자가 준수하여야 할 관련
      법령상의 개인정보보호 규정을 준수하며 관련 법령에 의거한 개인정보처리 방침을 정하여 이용자의 권익
      보호에 최선을 다하고 있습니다. 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 이용자의 고충을
      원활하게 처리 할 수 있도록 개인정보처리방침을 제정,시행하며 회사가 개인정보처리방침을 개정하는 경우
      '홈페이지(WEB)' 의 공지사항(또는 개별공지)을 통하여 공지합니다.
    </p>
    <hr>
  </div>

  <h5>제1조. 개인정보의 수집 및 이용목적</h5>
  <p>
    회사는 이용자의 동의가 있거나 법령의 규정에 의한 경우를 제외하고는 본 조에서 고지한 범위를 넘어
    이용자의 개인정보를 이용하지 않으며, 수집한 개인정보의 이용 목적은 아래와 같습니다.
    <br><br>
    ① 개인/법인 회원가입 및 관리
    <span class="terms_pdl">
      1) 라익카 회원
      <br>회원 가입 및 이용에 따른 본인확인, 개인 식별, 불량 회원의 부정 이용 방지와 비인가 사용 방지,
      가입 의사 확인, 가입 및 가입 횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 연령확인,
      불만처리 등 민원 상담 처리, 고지사항 등 최신 정보 전달
      <br>
      2) 제휴회사 통합회원
      SSO 서비스 이용, 회원 가입 및 이용에 따른 본인확인, 개인 식별, 불량 회원의 부정 이용 방지와 비인가
      사용 방지, 가입 의사 확인, 가입 및 가입 횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존,
      연령확인, 불만처리 등 민원 상담 처리, 고지사항 등 최신 정보 전달
    </span>
    ② 차량 대여서비스 제공 및 요금정산
    <br>자동차 대여 예약, 서비스 요금 결제, 콘텐츠 제공, 물품 배송 또는 청구서 등 발송, 금융거래 본인 인증 및
    금융 서비스, 요금추심 등 각종 계약체결 및 이행에 필요한 사항
    <br>③ 사고발생 시 원인 규명 및 처리, 보험 접수를 위한 수집 및 이용
    <br>④ 나눔카 지원 프로그램 운영
    <br>봉사활동 차량지원 및 자동차 대여 무료/할인 쿠폰 제공
    <br>⑤ 제휴 신청
    <br>제휴 제안에 따른 연락처 정보 확인
    <br>⑥ 맞춤형 회원 서비스 개발
    <br>서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 개선, 만족도 조사, 인구 통계학적 특성에 따른 서비스
    제공 및 광고 게재, 기후 영향에 따른 안전운행 알림, 접속 빈도 파악 또는 이용자의 서비스 이용에 대한
    통계 추출
    <br>⑦ 마케팅 및 광고 제공 (마케팅 정보 수신 동의 시)
    <br>라익카 광고, 서비스 안내, 혜택 제공, 리워드 부여, 쿠폰 제공 안내 : 해피콜, 이메일, SMS, 알림톡 등
  </p>


  <h5>제2조. 수집하는 개인정보 항목 및 방법</h5>
  <p>
    ① 회사가 수집하는 개인정보의 항목은 회원이 서비스를 이용하기 위한 필수 정보와, 선택 정보로 분류 되며
    회원가입 시 이용자 식별 및 본인확인, 차량 대여 서비스 제공 등을 위해 아래와 같은 개인정보를 수집하고
    있습니다.
    <span class="terms_pdl">
      1. 개인 회원 가입 및 관리
      <br>2. 법인 소속 회원 가입
      <br>3. 법인 관리자 회원 가입
      <br>4. 차량 대여 서비스 제공
      <br>5. 나눔카 지원 프로그램 신청
      <br>6. 제휴 신청
      <br>7. 맞춤형 회원 서비스 개발
      <br>8. 마케팅 및 광고 제공
      <br>9. 차고지 계약 및 등록
      
    </span>
    결제카드 정보는 전자 결제서비스 위탁 업체에 전달 후 회신 받은 암호화된 카드 식별정보(Key)로 관리합니다.
    <br>이용관련 정보는 예약내역, 결제내역, 자동차에 설치된 영상정보 수집장치에 따라 수집되는 각종 정보,
    <br>별도 문의사항 등은 제 3조 개인정보의 보유 및 이용기간의 기준에 따라 관리 합니다.
    <br>
    <br>또한 회원의 서비스 이용 및 회사의 업무 처리 과정에서 다음과 같은 정보들이 추가 수집될 수 있습니다.
    <br>
    <br>※ 유선 또는 온라인 상담 서비스 이용 시 : 상담 내역 (서비스 이용 내역, 유선/온라인 상담 녹취내용 등)
    <br>※ 계좌 이체를 통한 환불 이용 시 : 계좌 정보 (예금주, 은행명, 계좌번호)
    <br>※ 운전면허 취소 후 재발급 이후 1년 미 경과 시 : 운전 경력증명서
    <br>※ 플랫폼 서비스 이용 시 : 접속 기기 및 환경 정보
    <br>IP Address, 쿠키, 방문일시, 기기정보, 백그라운드 상태를 포함한 위치정보 등
    <br>
  <div class="terms-tbl_wrap">
    <p>1. 개인 회원 가입 및 관리</p>
    <p>1) 라익카 회원</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="3" class="first text-center">필수</td>
          <td>아이디(ID), 비밀번호, 이메일</td>
          <td>이용자 식별</td>
        </tr>
        <tr>
          <td>아이디(ID), 연계정보(CI)</td>
          <td>탈퇴 후 반복가입 방지</td>
        </tr>
        <tr>
          <td>이름, 생년월일, 성별, 휴대전화번호, 일반전화번호, 주소, 연계정보(CI), 중복확인가입정보(DI)</td>
          <td>본인확인, 휴대폰 소지 확인 및 무결성 검증</td>
        </tr>
        <tr>
          <td rowspan="2" class="first text-center">선택</td>
          <td>친구의 ID, SNS 연동정보(SNS 종류, SNS ID 식별 값)</td>
          <td>친구추천 정보</td>
        </tr>
        <tr>
          <td>프로필사진</td>
          <td>커뮤니티 활동</td>
        </tr>
      </tbody>
    </table>

    <p>2) 제휴회사 통합회원</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="3" class="first text-center">필수</td>
          <td>이름, 생년월일, 성별, 휴대전화번호, 일반전화번호, 이메일, 주소, 연계정보(CI)</td>
          <td>SSO 서비스 이용, 이용자 식별</td>
        </tr>
        <tr>
          <td>아이디(ID), 연계정보(CI)</td>
          <td>탈퇴 후 반복가입 방지</td>
        </tr>
        <tr>
          <td>이름, 생년월일, 성별, 휴대전화번호, 중복확인가입정보(DI)</td>
          <td>휴대폰 소지 확인 및 무결성 검증</td>
        </tr>
        <tr>
          <td class="first text-center">선택</td>
          <td>프로필사진</td>
          <td>커뮤니티 활동</td>
        </tr>
      </tbody>
    </table>
   
   
    <p>2. 법인 소속 회원 가입</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="3" class="first text-center">필수</td>
          <td>아이디(ID), 비밀번호, 이메일, 소속 법인/단체명</td>
          <td>이용자 식별</td>
        </tr>
        <tr>
          <td>아이디(ID), 연계정보(CI)</td>
          <td>탈퇴 후 반복가입 방지</td>
        </tr>
        <tr>
          <td>이름, 생년월일, 성별, 휴대전화번호, 주소, 연계정보(CI), 중복확인가입정보(DI)</td>
          <td>본인확인, 휴대폰 소지 확인 및 무결성 검증</td>
        </tr>
        <tr>
          <td rowspan="2" class="first text-center">선택</td>
          <td>친구의 ID, SNS 연동정보(SNS 종류, SNS ID 식별 값)</td>
          <td>친구추천 정보</td>
        </tr>
        <tr>
          <td>프로필사진</td>
          <td>커뮤니티 활동</td>
        </tr>
      </tbody>
    </table>

    <p>3. 법인 관리자 회원 가입</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="3" class="first text-center">필수</td>
          <td>(법인정보) 법인/단체명, 사업자등록번호, 아이디, 비밀번호, 대표자명, 법인주소, 대표 전화번호</td>
          <td>(법인) 이용자 식별</td>
        </tr>
        <tr>
          <td>담당자명, 이메일, (회사)전화번호, 휴대전화번호</td>
          <td>(법인) 담당자 정보</td>
        </tr>
      </tbody>
    </table>

    <p>4. 차량 대여 서비스 제공</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="4" class="first text-center">필수</td>
          <td>이름, 생년월일, 면허번호, 주소, 발급일, 갱신 만료일</td>
          <td>면허 유효성 검증</td>
        </tr>
        <tr>
          <td>위치정보</td>
          <td>차량 대여 서비스 제공 및 마케팅 활용</td>
        </tr>
        <tr>
          <td>이름, 생년월일, 면허정보, 휴대전화번호, 예약 및 운행/사고정보(위치정보 포함)</td>
          <td>보험 접수 시</td>
        </tr>
        <tr>
          <td>영상정보</td>
          <td>'자동차'및 부속품 도난/손괴 시 또는 교통
            사고 발생 시 사고 처리를 위한 정보(증거)수집</td>
        </tr>
      </tbody>
    </table>

    <p>5. 나눔카 지원 프로그램 신청</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td rowspan="5" class="first text-center">필수</td>
          <td>신청자 정보(라익카 ID, 이름, 이메일, 연락처)</td>
          <td>봉사활동 차량 지원</td>
        </tr>
        <tr>
          <td>본인 혹은 가족의 라익카 ID, 장애인 등록증/복지카드 사본 중 택일
            (장애인 가족인 경우) 가족관계증명서</td>
          <td>장애인/ 장애인 가족 대상 무료 쿠폰</td>
        </tr>
        <tr>
          <td>라익카 ID, 자동차 처분에 대한 증빙서류(2013년 1월 이후),
            자동차양도증명서, 자동차말소등록사실증명서, 자동차원부 중 택일</td>
          <td>차량매각자 대상 무료 쿠폰</td>
        </tr>
        <tr>
          <td>라익카 ID, 수급자 증명서, 차상위계층확인서, 복지대상자 건강보험료 납입고지서 중 택일</td>
          <td>저소득층 대상 무료 쿠폰</td>
        </tr>
        <tr>
          <td>라익카 ID, 주민등록등본 사본(이름, 주소 외 개인정보 마스킹 처리하여 송부)</td>
          <td>임대 아파트 거주자 대상 할인 쿠폰</td>
        </tr>
      </tbody>
    </table>

    <p>6. 제휴 신청</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first text-center">필수</td>
          <td>회사명, 휴대전화번호, 일반전화번호, 이메일</td>
          <td>제휴 제안에 따른 연락처 정보 확인</td>
        </tr>
      </tbody>
    </table>

    <p>7. 맞춤형 회원 서비스 개발</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first text-center">필수</td>
          <td>아이디(ID), 생년월일, 이메일, 휴대전화번호, 대여정보, 위치정보</td>
          <td>통계작성 및 과학적 연구 목적, 서비스 개발</td>
        </tr>
      </tbody>
    </table>

    <p>8. 마케팅 및 광고 제공</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first text-center">필수</td>
          <td>위치정보</td>
          <td rowspan="2">광고, 마케팅 활용</td>
        </tr>
        <tr>
          <td>선택</td>
          <td>아이디(ID), 생년월일, 이메일, 휴대전화번호</td>
        </tr>
      </tbody>
    </table>

    <p>9. 차고지 계약 및 등록</p>
    <table class="board-view">
      <colgroup>
        <col style="width:10%;">
        <col style="width:45%;">
        <col style="width:45%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">구분</th>
          <th scope="col">수집항목</th>
          <th scope="col">이용목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first text-center">필수</td>
          <td>개인인감증명서 (이름, 주소, 주민등록번호), 통장사본 (이름, 은행명, 계좌번호),
            임대차계약서 (이름, 주소, 주민등록번호, 전화번호)</td>
          <td>차고지 계약 및 등록</td>
        </tr>
      </tbody>
    </table>
    


  </div>
  ② 회사는 하기 항목과 같은 방법으로 개인 정보를 수집하며, 회사와 제휴한 외부 기업이나 단체로부터
  개인정보를 제공받을 수 있으며, 이러한 경우 제휴사에서 이용자에게 개인정보 제공 동의를 받아야 합니다.
  <span class="terms_pdl">
    1. 홈페이지(WEB)를 통한 회원 가입 및 정보 수정
    <br>2. 본인확인 서비스를 통한 수집
    <br>3. 유선 또는 온라인 상담 서비스 이용
    <br>4. 이벤트 경품 응모, 배송 요청
    <br>5. 제휴사로부터의 제공
    <br>6. 생성 정보 수집 툴을 통한 자동 수집
    <br>7. 자동차 정보 수집장치를 통한 수집
    <br>8. 서비스 이용 과정에서 자동으로 수집
    <br>9. 본인,타인의 민원 또는 신고
  </span>
   


  <h5>제3조. 개인정보의 보유 및 이용기간</h5>
  <p>
    ① 회사는 이용자 자격을 유지하고 있는 동안 수집된 이용자의 개인 정보를 보유,이용 할 수 있으며 탈퇴하거나
    자격을 상실할 경우에는 이용자의 별도 요청이 없더라도 수집된 회원 정보를 삭제 및 파기합니다.
    단, 회사 내부의 방침이나 관계 법령의 규정 등에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이
    일정한 기간 동안 회원정보를 보관하며 이용자의 처리정지, 삭제 요구권의 대상이 되지 아니합니다.
    <span class="terms_pdl">
      1. 회사 내부 방침에 의한 정보 보유
      <br>- 보존 정보 : 회원 아이디(ID), 암호화된 개인식별정보(CI), 중복가입 확인정보(DI)
      <br>- 보존 이유 : 탈퇴 후 즉시 재가입 방지
      <br>- 보존 기간 : 3개월
      <br>2. 부정이용기록
      <br>- 보존 정보 : 회원 아이디(ID), 암호화된 개인식별정보(CI), 중복가입 확인정보(DI), 부정 이용기록 및 일자
      <br>- 보존 이유 : 회원자격 상실 회원의 부정 이용 방지 및 악의적 서비스 이용 재발 방지
      <br>- 보존 기간 : 영구
      <br>3. 제휴신청 정보
      <br>- 보존 정보 : 회사명, 휴대전화번호, 일반전화번호, 이메일
      <br>- 보존 이유 : 제휴 신청에 따른 협의
      <br>- 보존 기간 : 1개월
    </span>
    ② 관련 법령에 따른 정보보유
    <span class="terms_pdl">
      1. 전자상거래 등에서의 소비자보호에 관한 법률
      <br>- 표시/광고에 관한 기록 : 6개월
      <br>- 계약 또는 청약철회 등에 관한 기록 : 5년
      <br>- 대금결제 및 재화 등의 공급에 관한 기록 : 5년
      <br>- 소비자의 불만 또는 분쟁 처리에 관한 기록 : 3년
      <br>2. 신용정보의 이용 및 보호에 관한 법률
      <br>- 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년
      <br>3. 통신비밀보호법
      <br>- 로그기록 관련 방문에 관한 기록 : 3개월
      <br>4. 개인정보보호법
      <br>- 영상정보처리기기 관한 기록 : 1년
      <br>
      <br>상기 명시되지 않은 보존 근거에 대해서는 기타 관계법령에 따릅니다.
      <br>
    </span>
    ③ 휴면 회원의 정보 보유
    <br>회원(필수정보 입력을 완료하지 않은 회원 포함)이 1년 이상 서비스를 이용하지 않고 연체나 채무불이행
    상태가 아닌 경우 해당 이용자의 아이디는 '휴면회원'으로 처리됩니다. '휴면회원'으로 처리되면 회원
    로그인을 비롯한 모든 서비스에 대한 이용이 정지되며, 회사는 '휴면회원'의 정보를 다른 계정과 별도로
    관리합니다. 회사는 '휴면회원' 처리 예정일 30일 전 해당 사실을 이메일을 통하여 사전 안내하며,
    이용자는 '휴면회원' 처리일 이후에 홈페이지(WEB)' 상에서 직접 본인 확인을 거쳐 휴면 상태를
    해지 신청을 하는 즉시 다시 정상적으로 서비스를 이용 할 수 있습니다.
  </p>


  <h5>제4조. 동의의 거부권 및 거부 시 의 불이익 등</h5>
  <p>
    이용자는 개인정보 수집,이용에 관한 동의를 거부할 권리가 있습니다. 단, 계약 체결 등을 위해 필요한 최소한의 개인정보 수집,이용에 관한 동의를 거부하는 경우에는 자동차 임대차 계약의 체결,유지,이행,관리등이
    불가(본인 여부 및 계약 체결 의사 불명 이유)하고, 마케팅 활동 및 홍보를 위한 개인정보 수집,이용 또는
    선택적 수집,이용에 관한 동의를 거부하는 경우에는 이벤트, 혜택에 대한 정보를 제공받지 못하거나 사은품,
    판촉물 제공, 제휴서비스 이용, 할인 혜택 적용 및 포인트 적립 등이 불가 할 수 있습니다.
  </p>


  <h5>제5조. 개인정보의 파기 절차 및 방법</h5>
  <p>
    회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.
    <br>단, 관계 법령에 따라 개인정보를 보존하여야 하는 경우에는 해당 기간 경과 후 지체없이 재생 불가능한
    방법으로 파기하며, 회사의 개인정보 파기절차 및 방법은 다음과 같습니다.
    <br>
    <br>① 개인정보 파기절차
    이용자가 입력한 정보는 수집 및 이용목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류함)
    내부 규정 및 기타 관련 법령에 따라 일정기간 저장되거나 즉시 파기됩니다. 이 때 DB로 옮겨진
    개인 정보는 법률에 의해 허용된 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
    <br>② 개인정보 파기기한
    <br>개인정보의 보유기간이 경과한 경우에는 그 경과한 날로부터, 개인 정보의 처리 목적 달성, 해당 서비스의
    폐지, 사업의 종료 등 그 개인정보가 불필요하게 된 경우에는 개인정보의 처리가 불필요한 것으로 인정되는
    날로부터 각 지체 없이(정당한 사유가 없는 한 영업일 기준 3일 이내) 해당 개인정 보를 파기합니다.
    <br>③ 개인정보 파기방법
    <br>전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
    종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
  </p>


  <h5>제6조. 이용자 권리 및 행사방법</h5>
  <p>
    ① 이용자 및 그 법정대리인은 언제든지 등록되어 있는 이용자의 개인정보를 열람하거나, 정정·삭제·처리정지·
    동의철회를 할 수 있으며, 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청할 수
    있습니다.
    <br>② 개인정보 조회 및 수정을 위해서는 '회원 정보수정', 가입 해지(동의 철회)를 위해서는 이용자 및
    그 법정대리인이 직접 홈페이지(WEB)을 통해 '회원탈퇴'를 클릭하여 본인확인 절차를 거치신 후 직접
    열람·정정·삭제(탈퇴) 가능합니다. 혹은 개인정보보호 업무 담당부서에게 서면, 전화 또는 이메일로
    연락하시면 본 약관의 3조 1항목에 위반되는 내용이 없는 경우 지체 없이 조치하겠습니다.
    <br>③ 이용자 및 그 법정대리인이 개인정보의 오류에 대한 정정을 요청하신 경우, 회사는 정정을 완료하기 전까지
    당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는
    정정 처리 결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.
    <br>④ 회사는 이용자 및 그 법정대리인 요청에 의해 해지 또는 삭제된 개인 정보는 본 약관 제 3조에 명시된 바에 따라
    처리하고 그 외의 용도로 열람 또는 이용할 수 없도록하고 있습니다.
    <br>⑤ 만 21세 이상인 경우에만 회원 가입이 가능하며, 회사는 개인정보의 수집,이용에 법정 대리인의 동의가
    필요한 만 14세 미만 아동의 개인 정보는 원칙적으로 수집하지 않습니다.
    <br>⑥ 회사는 제1항에 따른 요구를 받았을 때에는 지체 없이 정보주체의 요구에 따라 개인정보 처리의 전부를
    정지하거나 일부를 정지하여야 하며 다음 각 호의 어느 하나에 해당하는 경우에는 정보주체의 처리정지
    요구를 거절 할 수 있으며 처리정지 요구를 거절하였을 때에는 정보주체에게 지체 없이 그 사유를 알립니다.
    <span class="terms_pdl">
      1. 법률에 특별한 규정이 있거나 법령상 의무를 준수하기 위하여 불가피한 경우
      <br>2. 다른 사람의 생명ㆍ신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게 침해할 우려가
      있는 경우
      <br>3. 공공기관이 개인정보를 처리하지 아니하면 다른 법률에서 정하는 소관 업무를 수행할 수 없는 경우
      <br>4. 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이 곤란한
      경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우
    </span>
  </p>


  <h5>제7조. 개인정보 취급 위탁</h5>
  <p>
    회사는 서비스 제공을 위해 반드시 필요한 업무 중 일부를 외부 업체에게 위탁하여 수행하고 있으며,
    위탁받은 업체(수탁자)가 개인정보 관련 법률에 따라 개인정보를 안전하게 취급하도록 위탁업무 수행목적 외
    개인정보 처리 금지, 기술적/관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리/감독, 손해배상 등 책임에
    관한 사항을 '개인정보 처리 위탁 계약서' 등을 통해 규정하고 있습니다.
    <br><br>
    서비스 제공 계약 이행과 이용자의 편의 증진 등을 위해 개인정보의 처리 위탁이 필요한 경우, 정보통신망법
    제25조 제2항에 따라 본 개인정보처리방침의 공개로 위탁동의를 갈음하며, 이와 관련한 처리위탁업무의
    내용이나 수탁자가 변경될 경우, 회사는 지체 없이 본 개인정보처리방침을 통하여 공개합니다.
    회사는 서비스 제공 계약 이행과 회원 편의 증진을 위해 아래와 같은 업무를 외부 업체에 위탁하고 있습니다.
    <br><br>
    회사는 특정 제휴서비스의 이용 또는 별도 동의한 이용자 등의 해당 고객에 한하여 다음과 같이 제공합니다.
    <br><br>
  <div class="terms-tbl_wrap">
    <p>1. 개인정보 취급 수탁</p>
    <table class="board-view">
      <colgroup>
        <col style="width:50%;">
        <col style="width:50%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">수탁업체</th>
          <th scope="col">위탁목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first">제휴회사㈜</td>
          <td>통합회원제(제휴회사) 운영</td>
        </tr>
        <tr>
          <td class="first">NHN한국사이버결제</td>
          <td>휴대폰 본인인증 서비스</td>
        </tr>
        <tr>
          <td class="first">나이스페이먼츠㈜, 롯데멤버스㈜</td>
          <td>신용카드 결제처리</td>
        </tr>
        <tr>
          <td class="first">나이스 평가정보</td>
          <td>휴대폰기기인증</td>
        </tr>
        <tr>
          <td class="first">고려신용정보㈜</td>
          <td>채권 추심, 연체정보 등록</td>
        </tr>
        <tr>
          <td class="first">㈜kree</td>
          <td>고객상담업무</td>
        </tr>
        <tr>
          <td class="first">어서와자동차관리㈜</td>
          <td>사고차량 견인</td>
        </tr>
        <tr>
          <td class="first">㈜찰리조</td>
          <td>라익카 시스템 개발/유지보수</td>
        </tr>
        <tr>
          <td class="first">㈜커피테이블</td>
          <td>디지털 채널마케팅 광고 이벤트/프로모션 운영 및 업무대행</td>
        </tr>
      </tbody>
    </table>
  </div>



  <h5>제8조. 개인정보 시스템 운영 위탁</h5>
  <p>
    회사는 서비스 제공 계약 이행과 이용자의 편의증진 등을 위해 개인정보를 직접적으로 처리하지 않고
    개인정보처리 시스템의 개발/운영을 위해 아래와 같은 업무를 외부 업체에 위탁하고 있습니다
    <br>
  <div class="terms-tbl_wrap">
    <p></p>
    <table class="board-view">
      <colgroup>
        <col style="width:50%;">
        <col style="width:50%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">수탁업체</th>
          <th scope="col">위탁목적</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="first">태태정보통신</td>
          <td>IT 시스템 운영</td>
        </tr>
        <tr>
          <td class="first">㈜가비아</td>
          <td>IT 시스템 운영</td>
        </tr>
        <tr>
          <td class="first">롯데글로벌로지스㈜</td>
          <td>차량 탁송 업무</td>
        </tr>
        <tr>
          <td class="first">(주)엘지유플러스</td>
          <td>고객상담 녹취 시스템 운영</td>
        </tr>
        <tr>
          <td class="first">에스케이텔링크㈜</td>
          <td>안심번호 서비스 제공</td>
        </tr>
        <tr>
          <td class="first">koroad, E-fine</td>
          <td>운전면허 진위여부 검증</td>
        </tr>
      </tbody>
    </table>
  </div>
 


  <h5>제9조. 수집한 개인정보의 제3자 제공</h5>
  <p>
    ① 회사는 이용자의 개인정보를 제1조에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동의
    범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.
    다만, 아래의 경우에는 예외로 합니다.
    <span class="terms_pdl">
      1. 이용자가 사전에 제3자 제공에 동의한 경우
      <br>2. 서비스 제공에 따른 요금 정산을 위하여 필요한 경우
      <br>3. 법령의 규정에 의하거나 수사,조사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독
      당국의 요구가 있는 경우
      <br>4. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로
      가공하여 제공하는 경우
    </span>
    그 밖에 보다 나은 서비스 제공을 위하여 개인정보 제3자 제공이 필요한 경우, 회사는 사전에 개인정보를
    제공받는 자, 개인 정보를 제공받는 자의 개인정보 이용 목적, 제공하는 개인정보의 항목, 개인정보를 제공
    받는 자의 개인정보 보유 및 이용기간, 정보제공 동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른
    불이익 등을 명시하여 이용자의 동의를 구합니다.
    <br><br>
    라익카는 아래와 같이 개인정보를 제3자에게 제공하며, 제공 시점에 고객의 동의를 득합니다.
    <br>
  <div class="terms-tbl_wrap">
    <table class="board-view">
      <colgroup>
        <col style="width:18%;">
        <col style="width:27%;">
        <col style="width:27%;">
        <col style="width:28%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col" class="first">제공받는 자</th>
          <th scope="col">제공목적</th>
          <th scope="col">제공정보</th>
          <th scope="col">보유 및 이용</th>
      </thead>
      <tbody>
        <tr>
          <td rowspan="3" scope="col" class="first">㈜클린렌탈</td>
          <td scope="col">클린렌탈 차량 이용에 따른 차량 대여 계약</td>
          <td scope="col">이름, 휴대전화번호, 운전면허정보</td>
          <td scope="col">반납일 기준 5년</td>
        </tr>
        <tr>
          <td scope="col">클린렌탈 차량 이용에 따른 보험서비스</td>
          <td scope="col">이름, 휴대전화번호</td>
          <td scope="col">거래종료일로부터 5년</td>
        </tr>
        <tr>
          <td scope="col">클린렌탈 차량 이용에 따른 채권 관리</td>
          <td scope="col">이름, 휴대전화번호, 주소, 생년월일</td>
          <td scope="col">채권추심 종료일로부터 5년</td>
        </tr>
        <tr>
          <td scope="col" class="first">㈜클린렌탈</td>
          <td scope="col" rowspan="3">신규 서비스/상품 및 이벤트 안내 마케팅 활용</td>
          <td scope="col" rowspan="3">이름, 이메일, 휴대전화번호</td>
          <td scope="col" rowspan="3">회원 탈퇴 시 또는 본인의 수집/이용 동의 철회 요청 시</td>
        </tr>
        <tr>
          <td scope="col" class="first">클린오토리스㈜</td>
        </tr>
        <tr>
          <td scope="col" class="first">클린오토케어㈜</td>
        </tr>
        <tr>
          <td scope="col" class="first">전국렌터카공제조합</td>
          <td scope="col">보험서비스(견인 및 기타 차량 케어 부가 서비스)</td>
          <td scope="col">이름, 휴대전화번호, 운전면허정보</td>
          <td scope="col">거래종료일로부터 5년</td>
        </tr>
        <tr>
          <td scope="col" class="first">AXA손해보험㈜</td>
          <td scope="col">라익카 차량 이용에 따른 보험서비스</td>
          <td scope="col">이름, 생년월일, 운전면허정보, 휴대전화번호, 예약 및 운행/사고정보(위치정보 포함)</td>
          <td scope="col">거래종료일로부터 5년</td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  ② 개인 정보를 제공받은 제3자는 제공 목적을 달성하거나 이용자의 철회 요청이 있더라도, 내부보고,
  감사 및 검사, 비용 정산(청구) 등 계약이행, 분쟁 대비를 위해 필요한 정보는 자동차 임대차 계약에 따른
  거래 관계의 종료 후 미이행 및 분쟁이 계속될 경우 이행 완료, 분쟁 해결 시까지 개인 정보를
  보유,이용 할 수 있으며, 상법 등 관련 법령에 특별한 규정이 있을 경우 그에 의하여 보관 할 수 있습니다.
  


  <h5>제10조. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h5>
  <p>
    ① 회사는 이용자의 정보를 수시로 저장하고 찾아내는 '쿠키' 등을 운용합니다. '쿠키'란 회사의 '웹사이트'
    및 '모바일 서비스'를 운영하는데 이용되는 서버가 웹 브라우저에 보내는 아주 작은 텍스트 파일로서
    이용자가 이용한 단말기에 저장됩니다. 그러나 이 정보는 반드시 이용자가 정보를 제공하였을 때만
    저장되고, '웹 사이트'는 이용자가 제공하지 않은 정보를 얻을 수 없으며, 기기에 저장되어 있는 다른
    파일에 접근할 수 없습니다. '쿠키'의 사용 목적 및 '쿠키' 설정 거부 방법은 다음과 같습니다.
    <span class="terms_pdl">
      1. 사용 목적
      이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트
      참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스를 제공하기 위해 사용합니다.
      <br>2. 설정 거부 방법
      <span class="terms_pdl">
        1) 이용자는 '쿠키' 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹 브라우저에서
        옵션을 설정함으로써 모든 '쿠키'를 허용하거나, '쿠키'가 저장될 때마다 확인을 거치거나,
        아니면 모든 '쿠키'의 저장을 거부할 수도 있습니다. 단, 이용자가 '쿠키' 설치를 거부하였을 경우
        로그인이 필요한 일부 서비스 제공에 어려움이 있을 수 있습니다.
      </span>
      3. '쿠키' 설치 허용 여부를 설정하는 방법은 다음과 같습니다.
      <span class="terms_pdl">
        1) Internet Explorer : 도구 > 인터넷 옵션 > 개인정보
        <br>2) Google Chrome : 설정 > 고급 설정 > 개인정보
      </span>
    </span>
  </p>


  <h5>제11조. 개인정보에 관한 상담서비스</h5>
  <p>
    ① 회사는 이용자의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련
    부서 및 개인정보 관리책임자를 지정하고 있습니다. 이용자는 회사의 서비스를 이용하실때 발생하는
    모든 개인정보보호 관련 민원을 개인정보 관리책임자 혹은 담당부서로 신고하실 수 있습니다.
    회사는 이용자의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.

    <span class="terms_pdl">
      <br>1. 개인정보보호 책임자
      <br>- 성명 : 최수정
      <br>- 이메일 : kreezzang@likecar.co.kr
      <br>
      <br>2. 고객서비스 담당 부서
      <br>- 부서명 : 고객지원파트
      <br>- 전화번호 : 080-2000-3000
      <br>- 이메일 : kreezzang@likecar.co.kr
    </span>
  </p>


  <h5>제12조. 개인정보의 안전성 확보조치</h5>
  <p>
    ① 회사는 개인정보 보호법 제29조 및 정보통신망법 제28조에 따라 다음과 같이 안전성 확보에 필요한
    기술적,관리적,물리적 조치를 하고 있습니다.
    <span class="terms_pdl">
      1. 개인정보 취급 직원의 최소화 및 교육
      개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을
      시행하고 있습니다.
      <br>2. 내부관리계획의 수립 및 시행
      개인 정보의 안전한 처리를 위하여 내부관리 계획을 수립하고 시행하고 있습니다.
      <br>3. 해킹 등에 대비한 기술적 대책
      회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안 프로그램을
      설치하고 주기적인 갱신,점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적,
      물리적으로 감시 및 차단하고 있습니다.
      <br>4. 개인 정보의 암호화
      이용자의 개인정보는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일
      및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.
      <br>5. 접속 기록의 보관 및 위/변조 방지
      개인정보 처리 시스템에 접속한 기록을 관계 법령에서 요구하는 기간동안 보관, 관리하고 있으며,
      접속 기록이 위/변조 및 도난, 분실되지 않도록 보 기능을 사용하고 있습니다.
      <br>6. 개인정보 처리시스템 접근 제한
      개인정보를 처리하는 데이터 베이스시스템에 대한 접근 권한의 부여, 변경, 말소를 통하여 개인정보에
      대한 접근 통제를 위하여 필요한 조치를 하고 있으며 침입차단 시스템을 이용하여 외부로부터의 무단
      접근을 통제하고 있습니다.
      <br>7. 문서보안을 위한 잠금장치 사용
      개인정보가 포함된 서류, 보조저장매체 등을 잠금 장치가 있는 안전한 장소에 보관하고 있습니다.
      <br>8. 비인가자에 대한 출입 통제
      개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고
      있습니다
    </span>
  </p>


  <h5>제13조. 권익 침해에 대한 구제방법</h5>
  <p>
    기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
    <br>
    <br>1. 개인정보침해신고센터 (privacy.kisa.or.kr / 국번 없이 118)
    <br>2. 대검찰청 사이버범죄수사과 (www.spo.go.kr / 국번 없이 1301)
    <br>3. 경찰청 사이버안전국 (cyberbureau.police.go.kr / 국번없이 182)
  </p>

  <h5>제14조. 개인정보처리방침의 개정 및 고지</h5>
  <p>
    개인정보취급방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지(WEB)의
    '공지사항'을 통해 고지 할 것입니다. 현재 효력을 발생하는 본 방침의 공고일자와 시행일자, 이전
    개인정보처리방침은 아래와 같습니다.
    <span class="terms_pdl">
      <br>1. 공고일자 : 2021년 4월 21일
      <br>2. 시행일자 : 2021년 5월 7일
    </span>
  </p>
            </div>
            
            <!-- //개인정보 처리방침 -->
            </div>
      


<!-- -------------------------------tos3---------------------------- -->  
 
 <!-- 자동차대여약관 -->
<hr>
<div class="terms-info">
  <div class="tab-pane fade show active" name="context" style="padding: 20px 100px;" id="tos3"> 
            

<h5>제1조 목적</h5>
<p>
  본 약관은 대여용자동차 임대인과 임차인 사이의 대여용자동차 임대차계약상의 권리, 의무에 관한 사항을 규정함을 목적으로 합니다.
</p>


<h5>제2조. 용어의 정의</h5>
<p>
  ① '임대인' 이라 함은 ㈜라익카, ㈜롯데렌탈 및 예약, 결제 대행 계약을 통해 회원에게 자동차 대여 서비스를 제공하는 사업자를 말하며, 이하 '회사' 로 통칭합니다.
  <br/>② '임차인' 이라 함은 '라익카 이용약관' 에 따라 정상적인 회원 가입을 완료한 '회원' 을 의미합니다.
  <br/>③ '대여용 자동차' 라 함은 '회사'가 제공하는 렌터카를 의미하며, 이하 '자동차' 로 통칭합니다.
  <br/>④ '임대차 계약' 이라 함은 '회사' 의 무인 대여 절차 내에서 진행되는 '예약' 을 의미합니다.
  <br/>⑤ 본 조에서 정의되지 않은 약관 상의 용어의 의미는 '개별약관' 및 '개별 정책' 또는 일반적인 거래 관행을 따릅니다.
</p>


<h5>제3조. 약관 해석과 효력</h5>
<p>
  ① '회사'는 제공하는 서비스에 대해서 '개별약관' 및 '개별 정책' 을 둘 수 있으며, 해당 내용이 본 약관과 충돌 할 경우에는 '개별약관' 및 '개별 정책' 이 우선하여 적용되며, 명시되지 않은 사항에 대해서는 자동차대여표준약관 등 관계법령 또는 상관례에 따릅니다
</p>


<h5>제4조. 자동차 이용 자격</h5>
<p>
  ① 회원은 회원가입 또는 서비스 예약 시 동의한 이용 약관 이외, 개별약관, 개별 정책을 포함한 다음 각 호의 규정들을 준수 할 의무가 있습니다.
  <br/>② '회사'가 제공하는 자동차의 이용 자격 기준은, 운전면허 취득 후 만 1년 이상 경과한 만 21세 이상의 회원이며 제공 서비스 및 운영 방침에 따라 이용 자격 기준은 달라질 수 있습니다.
  <br/>③ 회원이 등록한 운전면허의 정지, 취소, 정보 이상 등 하자가 있는 경우 '라익카 고객센터'에 즉시 통보하여야 하며, 해당 정보가 갱신되기 전 까지는 자동차의 예약 및 이용이 금지되고 무면허 상태로 자동차 운행을 함으로써 발생되는 모든 책임은 회원에게 있습니다.
  <br/>④ 회원의 정보를 제3자에게 제공하거나, 사용하는 행위는 '명의대여', '명의 차용' 으로 간주합니다. 해당 행위 발생 시 그에 대한 모든 민/형사상 책임은 명의 대여자 및 명의 차용자에게 있습니다.
  <br/>⑤ 자동차를 예약한 회원 및 동반 운전자 이외, 제3자가 자동차 운행을 하는 것은 금지되어 있으며, 이로 인해 발생되는 모든 민/형사상 책임은 예약한 회원 및 자동차를 운행한 제3자에게 있습니다.
</p>


<h5>제5조. 자동차 정보 수집 장치</h5>
<p>
  회사는 효율적인 서비스 운영을 위하여 모든 자동차에 '위치정보 수집 장치' 및 '영상정보 수집 장치'를 설치하여 임대하고 있으며, 그 목적은 다음과 같습니다.
  <br/>① 운행 정보 수집 장치
  <span class="terms_pdl">
    1. '운행 정보 수집 장치'라 함은 자동차 반납 위치, 총 누적주행거리 등 자동차의 운행 정보를 회사의 서버로 전송 할 수 있는 통신 단말기를 말합니다.
    <br/>2. '운행 정보 수집 장치'를 통해 수집된 데이터는 사업자 자산관리 및 보호, 자동차 반납 여부/장소 확인, 주행 거리에 따른 과금 등의 목적을 위해 활용 될 수 있습니다.
    <br/>3. 회사는 회원의 자동차 미 반환 등 계약 위반 시의 자동차 회수, 자동차임대차계약의 이행 또는 분쟁 해결 등을 위한 경우, 수사기관 등의 적법한 조사 요구 또는 명령 등에 대한 협조 및 이행을 위한 경우, 그 외에 회원이 별도로 위치정보 수집, 이용 및 제공에 동의한 경우 위 목적 범위 내에서 자동차의 위치 정보를 수집, 이용 및 제공 할 수 있습니다.
    <br/>4. 위치정보의 보호 및 이용 등에 관한 법률 제15조에 따라 급박한 위험으로부터 긴급구조 요청이 있는 경우에는 회원의 동의 없이도 자동차의 위치 정보가 긴급 구조 기관에게 제공 될 수 있습니다.
  </span>
  <br/>② 영상정보 수집 장치

  <span class="terms_pdl">
    1. '영상정보 수집 장치'라 함은 자동차의 주행 영상을 수집할 수 있는 블랙박스 또는 영상기록 장치를 의미합니다. '영상정보 수집 장치'의 상태에 따라 영상이 기록되지 않거나, 저장용량 등의 문제로 영상이 삭제 될 수 있습니다.
    <br/>2. '영상정보 수집 장치'를 통해 수집된 주행 영상은 '자동차' 및 부속품 도난/손괴 시 또는 교통사고 발생 시 사고 처리를 위한 정보(증거)수집, 차량 주행 관련 이상 상태 확인 목적으로 사용되며, 보험회사, 경찰서 등 기타 관계 기관에서 요청한 경우 해당 사고 영상을 제공 할 수 있습니다.
    <br/>3. '영상정보 수집 장치'및 저장장치(SD카드 등) 등을 임의로 분해하거나, 훼손 및 탈거 등의 행위는 금지되어 있으며, 이로 인한 손해 발생 시 그 책임은 해당 회원에게 있습니다.
    <br/>4. '영상정보 수집 장치' 에 수집된 주행 영상을 본 조 2항 2호에 명시된 목적 이외의 용도로 저장, 배포, 편집, 제공, 판매 하는 등 개인정보보호법 및 관계 법령을 위반하는 일체의 행위는 금지되어 있습니다.
  </span>
</p>


<h5>제6조. 예약의 체결</h5>
<p>
  ① 회원은 '홈페이지(APP, WEB)'로 예약을 신청 할 수 있습니다. 단, '라익카 고객센터' 를 통해 예약하는 경우 상담원 서비스 비용(이하 '예약 수수료')이 발생 할 수 있습니다. 단, 회원이 신체적 어려움으로 인해 '라익카 고객센터' 를 통해 예약을 할 경우, 별도의 본인 확인 절차를 거치면 '예약 수수료' 가 부과되지 않습니다.
  <br/>② 자동차를 예약하려는 회원은 '회사' 의 '홈페이지(APP, WEB)'상에서 예약 가능한 차종, 서비스 요금, 예약 가능 시간, 대여/반납 장소 및 기타 예약 조건 등을 미리 확인하여 예약 할 수 있습니다.
  <br/>③ 회원은 반드시 예약한 서비스 요금의 결제를 완료하여야만 해당 자동차를 사용 할 수 있으며 최소 예약 시간은 30분 이상, 최대 120시간으로 초과 사용은 불가하며 이후 10분 단위로 선택 가능합니다. 단, 이용 중 발생된 불가피한 상황의 경우 '회원' 은 '회사' 의 사전 허가 및 예약 시간 변경의 대한 내용을 전달 해야 합니다.
  <br/>④ 예약의 체결은 임대차 계약서에 의하며, 임대차 계약서에는 본 조 제2항에서 열거한 사항을 명시하여야 합니다. 단, '홈페이지(APP, WEB)' 및 '라익카 고객센터' 를 통해 예약을 진행하는 경우 회원이 직접 입력 또는 선택한 정보 또는 '라익카 고객센터' 와 협의 된 내용에 따라 예약이 체결된 것으로 봅니다.
  <br/>⑤ '회사' 는 예약 체결 시 본 약관 및 '이용약관' 의 주요 내용을 설명 또는 명시하여야 하며, 예약을 위해 회원의 정보를 수집, 이용 및 제공한다는 사실을 고지하고 동의를 받아야 합니다. 단, '라익카 고객센터' 를 통해 예약을 체결할 경우 회원은 위 내용을 직접 확인하고 동의하여야 하며 '회사' 는 이에 관한 고지의 의무를 다한 것으로 합니다.
  <br/>⑥ '홈페이지(APP, WEB)' 및 '라익카 고객센터' 를 통해 진행한 예약의 내용은 사고 발생 시 보험사 제출용, 과태료 및 범칙금 발생 시 해당 관할 기관의 의견 진술 용 등으로 사용됩니다.
  <br/>⑦ '회사' 는 회원이 다음 각 호의 어느 하나에 해당할 경우 예약의 체결을 거절 할 수 있습니다.

  <span class="terms_pdl">
    1. 회원이 등록한 운전 면허증의 상태가 정지, 취소, 정보 이상 등의 하자가 있는 경우
    <br/>2. 신원확인이 불가능하거나 회원정보 상이 또는 '회사' 의 질문 및 자료 요구에 불응 할 때
    <br/>3. 회원이 음주 상태에 있거나, 마약, 각성제, 신나 등 약물에 중독되었다고 판단될 때
    <br/>4. 예약을 체결한 회원과 자동차 인수 시의 운전자가 다를 때
    <br/>5. 과거 자동차 대여 또는 사고 면책금 등의 미납 금액이 있을 때
    <br/>6. 과거 자동차 대여와 관련하여 제13조 금지 행위에 해당하는 행위가 있었을 때
    <br/>7. 운전으로 하여금 타인의 재산 및 생명에 위협이 될 수 있다고 판단 될 때
    <br/>8. 위 각 호에 준하는 사항으로서 예약의 체결을 거절할 만한 객관적인 사유가 있을 때
  </span>
</p>


<h5>제7조. 예약의 변경 또는 취소</h5>
<p>
  ① 회원이 예약의 내용을 변경 또는 취소하고자 할 때에는 사전에 '회사' 와 협의하여야 하고, 다른 회원의 원활한 서비스 이용에 지장을 미칠 수 있는 예약 점유 및 잦은 예약 취소 시 '취소 수수료' 를 포함하여 서비스 이용 제한 및 페널티가 발생 할 수 있습니다. '회사' 와 협의가 없는 경우에는 본 조항 및 '라익카 이용약관' 의 규정에 따라 조치합니다.
  <br/>② 회원이 예약 시작 시간 또는 반납 시간을 변경하고자 하는 경우에는 다른 회원의 예약이 없을 시에만 최소 10분 단위로, 총 대여 시간이 120시간 이내인 경우 예약 연장이 가능하며, 변경 후 연장 대여 기간에 해당하는 서비스 요금이 부과됩니다.
  <br/>③ 회원은 '회사' 에서 규정한 요금 정책을 준수하여 아래 해당하는 페널티, 추가 비용이 발생 할 수 있음에 동의합니다. 요금 정책의 구체적 내용은 '홈페이지(APP, WEB)' 통해 게재하며, 라익카 요금 운영 정책에 따라 변경 될 수 있습니다.
  <br/>④ 회원의 사정 또는 본 약관 10조의 내용으로 인해 예약을 취소, 해지하는 경우 예약을 취소, 해지하는 시점에 따라 아래와 같이 처리 합니다.

  <span class="terms_pdl">
    1. 예약을 취소, 해지하는 시점에 따라 취소수수료가 발생 될 수 있으며, 수수료는 회원에게 고지한 서비스 요금을 기준으로 책정합니다.
    <br/>2. 예약 취소는 자동차 제어 또는 운행 기록이 있거나, 운행 기록이 없더라도 대여 기간이 모두 경과된 경우 불가합니다.
    <br/>3. 취소수수료 산정 시, '예약 결제 후 30분 이내' 의 취소, 해지는 가장 상위 조건으로 고려되며 상세 기준은 하기 내용과 같습니다.
  </span>
</p>
<div class="terms-tbl_wrap">
  <table class="board-view word-break">
    <caption>
      페널티
    </caption>
    <colgroup>
      <col style="width: 30%;" />
      <col style="width: 40%;" />
      <col style="width: 30%;" />
    </colgroup>
    <thead>
    <tr>
      <th class="first" scope="col">기준</th>
      <th scope="col">취소시간</th>
      <th scope="col">취소 수수료(%)</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td class="first">최우선 조건</td>
      <td>예약 및 결제 30분 이내</td>
      <td class="text-center">미부과</td>
    </tr>
    <tr>
      <td class="first" rowspan="2">대여기간 6시간 이내</td>
      <td>대여시작시간 ~ 대여시작 30분 이내</td>
      <td class="text-center">20%</td>
    </tr>
    <tr>
      <td class="first">대여시작 30분 이후 ~ 대여시작 2시간 이내</td>
      <td class="text-center">10%</td>
    </tr>
    <tr>
      <td class="first" rowspan="2">대여기간 6시간 초과</td>
      <td>대여시작시간 ~ 대여시작 2시간 이내</td>
      <td class="text-center">20%</td>
    </tr>
    <tr>
      <td class="first">대여시작 2시간 이후 ~ 대여시작 4시간 이내</td>
      <td class="text-center">10%</td>
    </tr>
    <tr>
      <td class="first">대여 시작 시간 초과</td>
      <td>점유 시간은 정상 과금, 잔여 기간이 남아있는 경우</td>
      <td class="text-center">25%</td>
    </tr>
    </tbody>
  </table>
  <p>※대여 시작 시간 초과 이후 예약 취소 시, 잔여 기간이 남아있더라도 수수료/반환되는 서비스 요금이 발생되지 않을 수 있습니다.</p>
</div>
<p>
  ⑤ 제 6조에 따른 예약을 한 후 천재지변 등 불가항력적인 사유로 인하여 계약을 체결할 수 없게 된 경우에는 '회사' 는 자동차 이용 요금을 회원에게 반환합니다.
  <br/>⑥ 대여 요금은 고시된 자동차의 차량 표준 요금표 보다 할증하여 적용 할 수 없으나, 예약 수요에 따라 할인율에 대한 실시간 변동은 가능합니다.
  <br/>⑦ 예약 및 결제 완료 후 예약을 취소하는 시점에 따라 아래와 같이 취소수수료가 발생 할 수 있습니다.

  <span class="terms_pdl">
    1. 예약 결제 완료 후 30분 이내에는 취소 수수료가 발생하지 않습니다.
    <br/>2. 예약 결제 완료 후 30분 이후부터 취소 시점에 따라 취소 수수료 10~25%가 발생됩니다.
    <br/>3. 취소 수수료는 일반 왕복, 편도에서만 적용되며 오다, 무료 편도 경우 '회원이용약관 제10조 페널티' 조항에 따라 운영됩니다.
    <br/>4. 상세 과금 내역은 사전 고지 후 변경 될 수 있습니다.
  </span>
  ⑧ 예약 결제 이후, 운행 시작 전 동반 운전자 추가 등록 및 임차 조건을 변경하고자 하는 경우 홈페이지(WEB)을 통해 직접 등록이 가능하며, 예약한 자동차의 운행 제약 조건에 따라 변경이 불가능 할 수 있습니다.
</p>


<h5>제8조. 요금의 수령 방법</h5>
<p>
  ① 예약과 동시에 회원 정보에 등록한 결제 카드를 통해 자동차 이용 요금이 즉시 결제되며, 자동차 이용 요금 외 주행료 및 하이패스, 연장 이용료 등의 모든 발생 요금은 이용 후 결제 카드로 자동 결제 됩니다. 단, 발생 비용 결제는 자동차 반납 이후 정산이 이루어지므로 청구까지 일정 기간이 소요 될 수 있습니다.
  <br/>② 회원은 서비스 이용 시 내 발생된 과태료, 주차비, 기타 페널티 금액에 대해 납부 할 의무가 있습니다.
</p>


<h5>제9조. 대체 자동차의 제공</h5>
<p>
  ① '회사' 의 사정으로 인해 회원이 예약한 자동차를 대여 할 수 없을 경우에 '회사' 는 동급 차종의 대체 자동차로 제공할 수 있습니다. 단, 동급 차종 수급이 불가할 경우 회원과 상의하여 다른 차종으로 대체 제공 할 수 있습니다.
  <br/>② 제1항에 의해 대체 자동차를 제공 할 시 예약 차종의 서비스 요금과 대체 자동차의 서비스 요금을 비교하여, 더 저렴한 서비스 요금으로 적용합니다.
  <br/>③ 회원은 제1항에 의한 대체 자동차의 임차를 거절 할 수 있으며, 이 경우 '회사' 는 회원이 결제한 서비스 요금 전액을 반환합니다.
  <br/>④ 이용 중인 자동차의 이상으로 인해 대체 자동차가 필요 할 경우 이용한 시간만큼의 서비스 요금을 정산한 후, 회원과 협의하여 잔여 대여 기간에 대해 대체 자동차를 제공하거나 잔여 서비스 요금을 반환 할 수 있습니다.
  <br/>⑤ 대체 자동차의 세부 옵션은 예약한 자동차와 상이 할 수 있으며 '회사'가 회원에게 제공 할 손해배상 범위에서 제외됩니다. 이때 회원은 취소 수수료 없이 임차 거절을 할 수 있습니다.
</p>


<h5>제10조. 회사의 대여 계약 해지</h5>
<p>
  ① '회사' 는 다음 각 호의 어느 하나에 해당하는 경우에는 예약을 해지 할 수 있습니다.

  <span class="terms_pdl">
    1. 회원이 예약의 중요한 사항을 위반하여 예약을 유지하기 어려운 객관적인 사정이 존재 할 때
    <br/>2. 예약 당시 회원의 개인정보가 허위로 판명된 때
    <br/>3. 회원의 운전면허가 취소 또는 정지된 때
    <br/>4. 회원이 교통사고를 야기한 때
    <br/>5. 자동차 대여 후 회원이 음주 운전을 한 때
    <br/>6. 자동차 대여 후 회원이 마약, 각성제, 신나 등 약물에 취한 채 운전한 때
    <br/>7. 예약을 체결한 회원, 지정 동반 운전자 외 제3자가 운전을 한 때
    <br/>8. 제13조 금지 행위에 해당하는 행위를 한 때
  </span>
  ② 제1항 각 호의 사유가 적발되어 예약이 해지될 경우 예약 해지의 시점에 따라 '회사' 는 제7조 예약의 변경 또는 취소 제 4항의 기준에 맞는 취소 수수료를 공제한 후 남은 서비스 요금을 반환합니다. 이때 회원이 자동차를 운행 중일 경우 잔여 대여 기간 유무와 관계없이 즉시 자동차를 반납하여야 하며 '회사' 는 잔여 대여 자동차 이용 요금의 25%를 공제 한 후 남은 요금을 반환합니다.
  <br/>③ 제 1항 각호의 사유가 적발될 경우, 회원은 잔여기간 유무와 관계없이 즉시 자동차를 반환하여야 하며 제 2항에 따라 회원은 대여한 차고지로 반환을 원칙으로 하되 운행 불가, 운행 거부, 운행을 해서는 안되는 상황인 경우 페널티와 자동차 반환에 소요된 비용 전액을 배상하여야 합니다.
</p>


<h5>제11조. 고객의 대여 계약 해지</h5>
<p>
  ① 회원은 대여 시작 전 차량의 이상으로 운행이 불가한 경우 반드시 '회사' 로 통보 해야하며, 제 9조 대체 자동차의 제공에 의한 조치를 받거나 예약을 해지 할 수 있습니다
  <br/>② 제 1항에 따라 예약이 해지된 경우에는 '회사' 는 결제된 서비스 요금 전액을 회원에게 반환합니다.
  <br/>③ 회원의 사정에 의하여 예약을 해지하는 경우에는 제 7조 자동차 예약의 변경 또는 취소 및 '라익카 이용약관' 상의 예약의 취소와 변경에 관한 규정에 따릅니다.
  <br/>④ 회원의 귀책 사유로 자동차의 사고 또는 고장이 발생한 경우 회원은 '회사' 에게 그 손해를 배상하여야 할 책임이 있고, 해당 예약은 해지 될 수 있습니다.
</p>


<h5>제12조. 불가항력 사유로 인한 대여 계약 해지</h5>
<p>
  ① 임차기간 중 천재지변, 전쟁, 내란, 사변, 폭동, 소요 등 기타 불가항력 사유로 인하여 회원이 자동차를 사용 할 수 없는 경우에는 예약은 해지 되며, 회원은 이와 같은 사실을 '회사' 에 통보하여야 합니다.
  <br/>② 제1항에 의하여 예약이 해지된 경우 '회사' 는 결제한 요금에서 잔여 시간의 대여 자동차 이용 요금의 10%를 공제 한 후 남은 요금을 반환합니다.
  <br/>③ 회원이 제1항의 사유로 인하여 자동차를 반납할 수 없을 때에는 '회사' 는 회원에게 이로 인하여 발생한 손해의 배상을 청구하지 없습니다. 단, 회원은 제1항의 사유가 발생한 경우 즉시 '회사' 에 연락하고, '회사' 의 요청에 협조하여야 합니다.
  <br/>④ 제1항의 사유로 인하여 '회사'가 자동차를 대여할 수 없거나 대체 자동차를 제공 할 수 없을 때에는 회원은 '회사' 에 이로 인하여 발생한 손해의 배상을 청구 할 수 없습니다.
</p>


<h5>제13조. 금지행위</h5>
<p>
  ① '회사' 는 금지된 용도로 자동차가 이용될 경우 관련 법률에 의거하여 해당 사항을 담당 기관에 통보 할 의무가 있습니다.
  <br/>② 회원은 자동차 대여 기간 중에 다음 각 호의 어느 하나에 해당하는 행위는 금지되며, 이로 인해 발생하는 민/형사상 책임은 회원에게 있습니다

  <span class="terms_pdl">
    1.  자동차를 자동차운송사업 또는 이와 유사한 목적으로 사용하는 행위
   <br/>2.  자동차의 매각, 전대 또는 담보제공 등 '회사' 의 소유권을 침해하는 일체의 행위
   <br/>3.  자동차의 번호판을 위/변조하거나, 번호판을 달지 않고 운행하는 행위
   <br/>4.  자동차 및 자동차 내/외부 부품(랩핑 포함)을 개조, 임의 분해 등 그 원상을 변경 또는 훼손하는 행위
   <br/>5.  '회사' 의 허가를 받지 아니하고 자동차를 운전 연습 및 각종 시험, 경기에 사용하는 행위
   <br/>6.  '회사' 의 자동차를 이용하여 다른 차를 견인하거나 견인에 준하는 행위
   <br/>7.  임대차계약서상의 운전자 이외의 자 또는 무면허자에게 운전을 시키는 행위
   <br/>8.  음주 운전을 하거나 마약, 각성제, 신나 등 약물에 취한 상태로 운전하는 행위
   <br/>9.  난폭, 위협 운전 및 드 리프트 등 타인에게 위협을 끼치거나 자동차의 손상을 유발할 수 있는 운전을 하는 행위
   <br/>10. 차량의 주행 거리를 조작하거나, 주유 카드 및 전기차 충전 카드를 대여 자동차 외 임의 사용 하는 행위
   <br/>11. 블랙박스에 기록된 영상을 대여 자동차의 사고처리 목적 이외의 용도로 저장, 배포, 편집, 제공, 판매하는 등 개인정보보호법 등 관련 법령을 위반하는 일체의 행위
   <br/>12. 석유 및 석유대체연료 사업법 제2조 제10호의 규정에 의한 유사 석유 제품을 자동차의 연료로 사용하는 행위
   <br/>13. 자동차 분실/도난을 초래하거나, 법령 또는 공서양속에 위반하여 사용하는 행위
   <br/>14. 정상적인 도로 이외의 지역을 운행하거나 주/정차하는 행위, 기타 객관적으로 차량을 손상시킬 우려가 있는 행위(차량 출입제한 표시 구역, 토사, 수분 등 기타 이물질로 차량이 손상 될 수 있는 장소)
   <br/>15. 동반 운전자로 지정한 자의 단독 운전 행위
   <br/>16. 위 각 호에 준하는 행위로 객관적으로 보아 그로 인하여 자동차 손상 및 업무방해 우려가 있는 행위
  </span>
  ③ '회사' 는 다음 회원의 쾌적한 자동차 이용 경험을 위해 아래의 내용을 권고합니다. 이를 위반 시 '라익카 이용약관' 의 규정에 따라 페널티 요금이 부과되며, 회원의 이용 자격 재심사가 진행됩니다.

  <span class="terms_pdl">
    1. 자동차 내에서 담배 및 전자담배 등의 흡연은 절대 금지됩니다. 또한 아로마파이프, 비타민 스틱, 금연초 등 흡연을 연상시키는 유사 흡연 행위 역시 금지됩니다.
    <br/>2. 애완 동물은 캐리어를 이용해 이동해야 합니다. 단, 장애인을 위한 반려견은 예외로 합니다.
    <br/>3. 자동차 내부에 쓰레기 투기, 방치하는 행위 및 오염, 악취를 유발하는 행위는 금지합니다.
  </span>
  ④ '회사' 는 계약 조항에 위배되는 행동이나 위의 조항에 대한 위반 행위를 한 회원에게는 서비스를 제공하지 않을 권리를 가집니다.
</p>


<h5>제14조. 자동차 인수와 반납</h5>
<p>
  ① 회원은 자동차를 운행 및 보유하는 동안 아래의 규정에 따라 자동차 운행에 따른 자동차 운행 관리 책임이 있습니다. 회원은 자동차 예약 시 선택한 대여 장소에서 직접 자동차를 인수 해야하며, 본격적인 사용 전에 자동차 외부, 내부에 이상이 없는지 반드시 확인하고 파손이나 운행에 이상 징후가 있을 경우 '라익카 고객센터'에 그 사실을 반드시 통보해야 합니다.
  <br/>② 본 조 1항에 따라, 자동차의 이상 여부를 통보 하지 않았을 경우 이전/이후 이용자들의 통보를 취합해 자동차의 상태를 확인할 수 있으며, 회원의 대여 자동차 상태 통보자료에서 발견되지 않은 파손이 나왔을 경우, 육안으로 확인 가능한 상태와 회원의 고의 내지 과실 등의 책임이 있는 경우 라익카는 자동차 파손 비용, 이용정지, 회원자격의 상실 등을 통보 할 수 있습니다.
  <br/>③ 자동차 사용 시 이용한 주유 카드, 키는 반드시 정해진 위치해 있어야 하며, 도어 제어 미숙으로 인해 문을 강제로 제어하여 발생될 수 있는 차량 고장은 회원의 과실로, '회사' 는 그에 따른 책임을 부담하지 않습니다.
  <br/>④ 회원이 예약된 반납 예정 시간보다 일정 시간 이상 먼저 자동차를 반납하여도 사전 예약한 시간만큼의 서비스 이용 요금이 부과됩니다. 단, 조건이 부합하는 경우 잔여 대여 기간에 따라 라익카 조기 반납 포인트를 지급하고 있습니다.
  <br/>⑤ 자동차의 반납은 회원이 예약 시 선택한 지정 반납 장소에 직접 주차하고, 반납 기준을 준수하여 APP 내 반납 기능 또는 회원카드를 접촉하여 자동차 문을 잠그고 반납을 완료하는 것을 기준으로 합니다. 단, 그린존의 만차 등의 정상 반납이 불가능 할 경우 APP 내 반납 신청 시 '차량 반납 위치 확인' 에 지정 장소 상세 위치를 기입해야 하며, 정상 반납이 불가능할 경우 '라익카 고객센터' 를 통해 이를 알려야 합니다.
  <br/>⑥ 자동차 또는 옵션품(네비게이션, 블랙박스 등) 도난의 경우에는 다음 각호에 따릅니다.

  <span class="terms_pdl">
    1. 자동차 도난 사고 발생 시 고객은 즉시 관할 관서에 도난신고를 하여야 하며 도난신고일로부터 계약은 자동 해지됩니다.
    <br/>2. 도난신고일자를 기준으로 1개월 이내에 차량이 회수되지 아니한 경우 고객은 도난신고일로부터 계산한 영업손해배상금과 도난 당시의 차량장부가액, 자동차 상품화 비용을 '회사' 에 배상하여야 합니다. 단, 회원이 자차손해면책제도에 가입하고 고객 의 귀책사유가 없음을 입증한 경우에는 고객 부담금을 납입하고 배상 책임을 면할 수 있습니다.
    <br/>3. 옵션품(네비게이션, 블랙박스 등) 도난의 시, 물품 품 가액을 '회사' 에 배상하여야 합니다.
    <br/>4. 옵션품(네비게이션, 블랙박스 등)의 일부 부품(메모리카드 등) 도난, 분실, 훼손, 멸실 등의 경우에는 회원은 동일한 제품의 새 부품을 장착하는데 소요 되는 비용을 배상하여야 합니다.
    <br/>5. 상기 제2호에 의한 고객의 가액 배상 후 차량이 회수된 때에는 '회사' 는 차량 원상복구비용, 도난 당시의 차량장부가액과 회수 시점의 장부가액의 차액, 도난 신고일로부터 회수 시점까지의 영업 손해배상금 상당액을 공제한 잔액을 즉시 환급합니다.
  </span>
  ⑦ 자동차 도난 시에는 바로 보고해야 하며 라익카가 요청하는 자료를 제출하고, 회원 과실로 인한 도난으로 피해 사례 발생 시 그에 따른 책임은 회원에게 있습니다.
</p>


<h5>제15조. 자동차 미 반납에 대한 조치</h5>
<p>
  ① '회사' 는 회원이 대여 기간 종료 시로부터 12시간을 경과하여도 반납 장소에 자동차를 반납하지 아니하거나 반납 요청에 응하지 않을 때에는 자동차 회수 및 손해 보전에 필요한 모든 법적 조치를 취할 수 있습니다.
  <br/>② '회사' 는 제1항에 해당되는 경우 자동차의 소재를 확인하기 위하여 회원에게 전화를 하거나 주소지를 방문하여 함께 거주하는 가족 및 친족 등에게 청취 조사를 할 수 있으며, 자동차 위치 정보 조회 등 필요한 조치를 취할 수 있으며 앞선 조치에도 불구하고 대여 기간 종료 시로부터 24시간이 경과하였음에도 자동차와 회원의 소재가 불명한 때에는 도난 신고 등 필요한 조치를 취할 수 있습니다. 이 경우 '회사' 는 본 항에 따른 조치를 취하였음에도 자동차와 회원의 소재가 불명함을 입증하여야 합니다.
  <br/>③ 회원은 본 조에 해당하는 경우 '회사' 에 입힌 손해를 배상할 책임을 지며, 자동차 회수 및 회원, 운전자의 소재확인 등에 소요된 비용을 부담하여야 합니다.
  <br/>④ 회원이 예약의 연장 신청(이하 '반납 연장')을 하지 않거나 '라익카 고객센터' 와 협의에 의해 '반납연장'을 하지 않은 상태에서 계속된 자동차 이용을 하게 될 경우, '회사' 는 지연된 반납 시간만큼 연장하여 서비스 요금 및 페널티 요금을 정산하여 청구 할 수 있으며 주의사항은 아래와 같습니다.

  <span class="terms_pdl">
    1. 라익카에 사전 통보 없이 반납 시간 연장을 하지 않고 이용 시, 라익카는 회원에게 연락을 취하여 이용시간 연장을 요청할 수 있으며, 회원이 부재 상태로 무단 반납 지연 상태를 유지 할 경우, 라익카는 사정에 따라 임의로 반납 시간을 연장하여 요금을 청구 할 수 있습니다. 연장 시간은 반납 지연 상태를 해제 할 수 있는 최소 시간으로 정합니다.
  </span>
  ⑤ '회사' 는 다음 각 호의 어느 하나에 해당하는 회원의 계약위반으로 인한 동종 또는 유사한 피해를 방지하기 위하여 계약 시 수집, 이용목적, 수집항목, 보유 및 이용기간 등이 기재된 별도의 '개인정보처리방침' 에 동의를 받아 피해가 발생한 경우에 한하여 동종 사업자 및 사업자단체에게 개인정보를 제공할 수 있습니다.

  <span class="terms_pdl">
    1.  회원이 '회사' 의 자동차 반납요구에도 불구하고 정당한 사유 없이 자동차를 반납하지 않거나 연락이 되지 않는 상태에서 자동차 반납일로부터 12시간 내에 반납하지 아니한 경우
    <br/>2.  회원이 서비스 요금을 연체하여 '회사'가 상당기간 동안 2회 이상 납부를 최고하였음에도 계속 연체하고 있는 경우. 단, 회원에게 불가피한 사유가 있는 경우에는 제외합니다.
    <br/>3.  자동차를 불법 매매 또는 개조한 경우
    <br/>4.  자동차번호판 위조 또는 범죄에 사용하는 등 불법행위에 이용한 경우
    <br/>5.  자동차를 전대, 담보제공 또는 매각하는 등 '회사' 의 소유권을 침해하는 일체의 행위를 한 경우
    <br/>6.  교통사고 후 도주 또는 자동차를 방치한 경우
    <br/>7.  자동차를 자동차운송사업 또는 이와 유사한 목적으로 사용한 경우
    <br/>8.  임대차계약서상의 운전자 이외의 자 및 무면허운전자가 운전하다 사고가 발생한 경우
    <br/>9.  자동차를 운전 연습 및 각종 시험, 경기에 사용한 경우
    <br/>10. 다른 차를 견인 혹은 견인에 준하는 행위를 한 경우
    <br/>11. 위 각 호에 준하는 행위로 '회사' 에 중대한 손해를 발생시키는 경우
  </span>
  ⑥ '회사' 는 본 조 5항에 따라 제공받은 회원의 정보를 회원으로부터 동의 받은 목적과 다른 목적으로 이용 할 수 없으며, '회사'가 본 조에 의한 업무를 처리하는 과정에서 고의 또는 과실로 회원에게 손해를 입힌 경우에는 배상 책임을 부담합니다
</p>


<h5>제16조. 자동차 점검 및 관리 의무</h5>
<p>
  ‘회사' 는 모든 자동차에 대해 주기적으로 자동차 점검 및 관리를 시행하고 있습니다. 단, 무인 자동차 대여 서비스 이용에 있어 청결과 안전 주행 등 자동차 점검 및 관리에 관한 내용은 회원에게 일정 부분 의무와 책임이 부여됩니다.
  <br/>① '회사' 의 의무

  <span class="terms_pdl">
    1. '회사' 는 자동차에 대해 정기적인 점검 서비스로 최대한 편의를 제공하며, 회원이 자동차 안전을 위해 자동차의 점검 및 수리 의뢰를 할 경우, 빠른 시일 내에 이행하여야 합니다.
    <br/>2. '회사' 는 자동차의 점검 및 관리 시 자동차의 정비불량 등을 발견한 경우 수리 또는 부품교환 등의 조치를 취하고 그 내용을 기록, 유지하여야 합니다.
    <br/>3. '회사' 는 제2항에 따른 회원의 연락, 보고가 있을 경우 회원의 안전한 서비스 이용을 위해 적절한 조치 및 대응 가이드를 제공하여야 합니다.
  </span>
  ② 회원의 의무

  <span class="terms_pdl">
    1. 회원은 자동차의 타이어, 공기압, 엔진 및 브레이크 오일 경고등, 기타 주의 표시 등 모든 사항에 대해 항상 체크하며 운행해야 하며, 특이사항 발생 시 '라익카 고객센터'에 즉시 연락해야 합니다.
    <br/>2. 자동차 운행 중에 의심스러운 소음이나 불안한 주행감 등 경고등에 표시되지 않는 증상이나 다른 이상 징후가 감지 되었을 경우에는 회원은 '라익카 고객센터' 로 즉시 연락해야 합니다.
    <br/>3. 자동차 운행 중 고장, 사고 및 기타 접촉 시 자동차의 손상 여부와 상관없이 '라익카 고객센터' 로 즉시 연락해야 합니다. 이후 회원은 '회사' 의 안내에 따라 자동차 점검 등의 조치 요청에 적극 협조하여야 합니다.
    <br/>4. 회원은 서비스 이용 중 임의로 네비게이션, 블랙박스, 충전기 등의 실내 부품을 취득 할 수 없으며, 불가피하게 취득하고자 하는 경우에는 '회사' 와 협의 후 안내에 따라야합니다. 또한 해당 실내 부품의 이상이 발견되면 회원은 '라익카 고객센터' 로 즉시 연락해야 합니다.
    <br/>5. 회원은 자동차를 인도받은 시점부터 '회사' 에 반납하는 시점까지 선량한 관리자의 주의 의무를 다하여 자동차를 사용하고 보관하여야 하며, 서비스 이용 중에 자동차 이상 징후 발생, 파손, 사고 등을 무시하고  '라익카 고객센터' 로 즉시 연락하지 않았을 경우에는 '회사' 는 해당 회원에게 회원 자격 재심사 및 손해배상 등을 청구 할 수 있습니다
    <br/>6. '회사' 는 회원의 편의를 위해 네비게이션, 블랙박스, 충전기 등의 실내 부품 서비스를 제 할 수 있으며 실내 부품의 오작동 등으로 손해 발생 시 회원은 '회사' 에 이 사실을 알리고 손해 사실을 고지하여야 합니다. 회원이 고지하지 않아 '회사'가 확인, 인지하지 못한 손해에 대해 회원은 보상받지 못할 수 있습니다. 회사의 책임 있는 사유로 서비스 품목의 결함 및 파손 발생한 경우에 한해, 본 약관 9조에 따라 대차의 의무를 가집니다.
  </span>
</p>


<h5>제17조. 회원의 자동차 고장 발견 조치</h5>
<p>
  ① 회원은 자동차 사용 중 발생하는 문제 및 고장, 사고 발생 시 '라익카 고객센터' 로 즉시 연락하여 '회사' 의 안내를 따라 조치를 취할 수 있도록 하여야 합니다.
  <br/>② 회원의 고의, 과실로 렌터카의 이상이나 고장이 발생한 경우에는 렌터카의 인수 및 수리에 소요되는 비용을 전액 부담하여야 하며, 자동차 유실, 수리, 복구와 관련된 비용과 현재까지의 피해 비용 등 자동차 손실에 대한 비용 및 일정 비율의 피해 수수료 지불의 책임이 있습니다.
  <br/>③ 자연적인 마모 이외 이물질(토사, 수분 등)에 의한 렌터카 고장이나 정비 목적으로 이물질 제거 세차, 청소 필요 시 이에 소요되는 비용은 회원이 부담 하여야 하나, 오프로드 등이 아닌 정상도로에서의 자동차 이용 경우는 회원 부담에서 제외 합니다.
  <br/>④ 회원은 렌터카 이용 중 응급조치 및 이에 따른 자체 수리가 불가피한 특별한 사정이 있는 경우 회사의 사전 동의를 얻은 후 자체 처리할 수 있으나, 회사가 이에 동의하지 않는 경우 회원은 회사의 지정 안내에 따라 렌터카를 수리하여야 합니다.
  <br/>⑤ 회원이 본 조 제4항에 따라 '회사' 의 사전동의를 얻어 자체 처리한 경우 수리 내역에 대한 증빙을 첨부하여 '회사' 에게 청구 하면 '회사' 는 이를 확인하고 이상이 없을 경우 해당 발생 비용을 지급합니다.
  <br/>⑥ 정상 마모분을 제외하고 고객의 귀책사유(과실 또는 고의적 행위)로 인한 자동차 훼손 시에는 고객은 지체 없이 이를 완전한 상태로 수리(원상복구에 필요한 손해배상 포함)하여야 하며 이때 본 계약은 자동해지 되며, 고객은 해지일까지의 자동차 이용료를 완납하고, 해지일 현재 본 계약에 의하여 회원이 지불하여야 할 일체의 채무 이행을 완료하여야 합니다.
  <br/>⑦ 회사는 제3항에서 정한 조치를 할 수 없는 경우에는 회원에게 렌터카 이용요금을 반환하고, 자동차 회수 등에 필요한 비용을 부담합니다.
  <br/>⑧ '회사' 의 자동차를 이용하여 다른 자동차의 배터리 점프를 하는 행위는 원칙적으로 금지되어 있으나, 부득이한 사유로 배터리 점프를 진행해야 할 경우에는, '회사' 에 반드시 통보해야 합니다. 적절하지 않은 기구를 이용한 배터리 점프로 인하여 발생한 자동차 손상은 전적으로 회원에게 책임이 있습니다.
  <br/>⑨ 회원은 자동차 사용 중 발생하는 문제 및 고장, 사고 접수 시 사실만을 접수하여야 하며, 허위 사실을 접수하였을 경우 해당 내용은 무효 처리됩니다.
</p>


<h5>제18조. 긴급출동지원 서비스</h5>
<p>
  ① 긴급출동지원 서비스는 '회사' 와 계약된 업체가 현장에 출동하여 점검 및 수리, 사고처리, 견인 등의 서비스를 제공하는 것을 의미합니다.
  <br/>② 회원은 자동차 고장 및 사고 발생 시 '라익카 고객센터' 를 통해 긴급출동지원 서비스를 요구할 수 있습니다.
  <br/>③ 사고로 인한 구난 시에는 자차손해면책제도로 처리 가능합니다. 단 긴급출동 서비스 중 구난은 제공사의 기준 시간으로 하며 기준 시간 초과 및 추가 비용 발생, 회원의 과실 인한 자동차 고장 및 사고 등을 이유로 긴급 출동 지원 서비스를 요청하였을 경우에는 별도의 서비스 요금이 청구 될 수 있습니다.
</p>


<h5>제19조. 사고처리</h5>
<p>
  ① 회원은 모든 자동차에 대한 고장이나 사고 발생 시 본인 및 다른 회원의 안전을 위해 '라익카 고객센터로' 로 즉시 연락 해야하며 자동차 사용 시 반드시 운전자 사용 안내 가이드를 준수해야 합니다.
  <br/>② 회원은 자동차 임차 중 사고가 발생한 때에는 부상자 후송 및 경찰서 신고 등 도로교통법상의 조치를 취함과 동시에 다음 각 호에서 정하는 바에 따라 처리하여야 하며, 별도의 협의 없이 각 호의 사항에 따르지 않을 때에는 보험 처리가 불가한 경우가 발생 할 수 있으니 각 호의 사항에 협조하여야 합니다.

  <span class="terms_pdl">
    1. 사고의 발생 상황 및 사고 처리에 필요한 내용 등을 '회사' 에 즉시 통보
    <br/>2. 사고와 관련하여 보험사가 요청하는 서류 또는 증거의 제출
    <br/>3. 사고와 관련하여 제3자와 합의 또는 협의를 해야 할 경우 사전에 '회사' 와 협의
    <br/>4. 자동차의 수리는 '회사' 와 사전협의 된 경우를 제외하고 '회사' 와 계약된 자동차 종합 정비 업체에 수리 의뢰
  </span>

  ③ 회원이 예상 사고처리 비용 요구 시 '회사' 는 예상 사고처리 비용을 회원에게 통지해야 할 의무가 있으며 자동차 수리 후에는 확정된 사고처리 비용을 회원에게 청구합니다. 사고로 발생된 사고처리 비용은 회원의 과실 여부의 정도와 사고 유형에 따라 달라 질 수 있습니다. 또한 '회사' 는 회원 요청 시 회원의 사고 이력을 제공해야 하지만, 회원이 예약한 자동차의 전체 사고 이력을 제공 할 의무는 없습니다.
  <br/>④ 회사와 계약된 업체 또는 협의된 업체 외에 회원이 일방적으로 다른 업체를 이용하거나, 2항 각호를 위반하거나 회사와 협의되지 아니한 곳으로 자동차를 이동, 견인, 수리 등을 행하여 지출 비용에 대한 상환 시 제한이 발생 할 수 있습니다.
  <br/>⑤ '회사' 와 회원은 사고 해결을 위해 노력하여야 하며, 협조를 소홀히 하여 상대방에게 손해를 입힌 경우에는 귀책 사유에 따라 그 손해를 배상 할 책임을 집니다.
  <br/>⑥ 회원은 자동차의 견인, 수리 또는 다른 비용 지출이 발생 될 경우 '회사' 와 계약된 업체를 이용 할 것을 권장하며 부득이하게 '회사' 와 미 계약된 업체를 이용 할 경우 사전에 '회사' 와 협의하여 확정된 업체에 수리 등을 의뢰하고 해당 영수증 및 수리 내역서를 제출하여야 합니다.
  <br/>⑦ '회사' 와 계약된 업체 또는 협의된 업체 외에 회원이 일방적으로 다른 업체를 이용 할 경우에는 그 지출비용에 대한 상환 시 제한이 발생할 수 있습니다.
  <br/>⑧ 회원은 자동차 사고가 발생하였을 경우, 회원 이용 약관 제 9조'회원의 서비스 이용제한' 규정 및 사고관련 상대 측 보험 회사와의 과실 상계 협의 지연 및 민사, 형사상 소송이 진행 될 경우 종결 될 때까지 서비스 이용이 제한 될 수 있습니다.
  <br/>⑨ 사고 시 인적 사고 및 물적 사고가 발생한 경우 회원은 경찰서의 공식 진술서를 작성해야 하며 후에 진술의 통일성을 가지기 위해 아래 사항에 의거하여 '회사'가 제공한 양식에 진술서를 작성 해야 합니다.

  <span class="terms_pdl">
    1. 사건 발생 당시의 날짜, 시간, 장소
    <br/>2. 모든 사고관련자동차의 차종과 자동차 번호, 제작 연도와 식별번호(시리얼번호), 보험확인번호(성명, 주소, 연락처 등)
    <br/>3. 사고와 관련된 사람들의 성명, 주소, 운전면허 등록번호
    <br/>4. 자동차 소유자의 성명, 주소, 운전면허 등록번호(운전자가 소유자가 아닐 경우)
    <br/>5. 사고 당시의 승객이나 목격자 또는 관련된 사람들의 성명, 주소, 연락처
    <br/>6. 사고 내용 및 현장출동조사, 견인 이용 여부
    <br/>7. 경찰 측에서 작성한 보고서가 사고원인의 책임 유무에 관계없이 필요 합니다.
  </span>
</p>


<h5>제20조. 보험가입</h5>
<p>
  ① '회사' 는 회원에게 자동차 손해배상 보장 법에 따라 책임 보험과 자동차 종합보험(대인배상, 대물배상, 자기신체사고)에 가입된 자동차를 제공합니다. 이 경우, 회원은 자동차보험약관상 승낙피보험자가 됩니다.
  <br/>② 회원의 자동차사고 발생 시 '회사'가 회원의 손실을 보호하기 위한 '차량 손해 면책제도' 를 운영하며 차량손해면책제도 이용보험료는 대여 기간에 비례하여 10분 단위로 청구 됩니다.(최소 예약 시간 30분)
  <br/>③ '회사' 는 예약 체결 시 회원에게 보험가입 및 보장 금액에 관한 사항을 안내 드립니다. 단, '홈페이지(APP,WEB)' 및 '라익카 고객센터' 를 통해 예약을 체결 할 경우, 회원은 회원가입 또는 예약 과정에서 보험가입 및 보장 금액에 관한 내용에 동의한 것으로 '회사' 는 이에 관한 설명의 의무를 다한 것으로 합니다.
</p>


<h5>제21조. 보험처리</h5>
<p>
  ① 회원은 사고발생 시 '회사'가 체결한 자동차보험의 대인, 대물, 자손의 보장범위 내에서 손해를 보상 받을 수 있습니다. 단, 회원 또는 임대차계약서상 운전자의 다음 각 호의 어느 하나에 해당하는 사유로 발생한 손해와 자동차보험약관에서 정한 면책 사항에 해당하는 경우에는 일부 또는 전부를 보상받지 못하며, 회원의 부담으로 '회사' 에 발생한 손해를 전부 배상하여야 합니다.

  <span class="terms_pdl">
    1. 자동차 도난, 무단 이용을 포함한 고의로 인한 손해
    <br/>2. 무면허 포함, 운전자 자격 요건이 불충분한 대상이 운전하다가 발생된 사고로 인한 손해
    <br/>3. 자동차를 전대하여 발생된 사고로 인한 손해
    <br/>4. 범죄를 목적으로 자동차를 사용하다가 발생한 손해
    <br/>5. 음주운전 사고로 인한 손해
    <br/>6. 마약, 각성제, 신나 등 약물에 취한 상태에서 운전하다가 생긴 사고로 인한 손해
    <br/>7. 자동차를 경기용이나 연습용 또는 시험용으로 사용하다가 생긴 사고로 인한 손해
    <br/>8. 임대차계약서상의 운전자 이외의 자가 자동차를 운전하다가 생긴 사고로 인한 손해
    <br/>9. 계약종료 후의 렌터카를 반환하지 않고 운행하는 중 생긴 사고로 인한 손해
  </span>
  ② 차량손해면책제도는 본 계약에 따른 대여 자동차가 회원에게 인도된 이후부터 적용되는 것으로 보며 회원은 사고발생 시 자기차량손해에 대해서는 제20조 보험가입 등에 의해 '회사' 에서 운영중인 '차량손해면책제도' 에 의해 면책 받을 수 있습니다. 단, 다음 각 호의 어느 하나에 해당 될 시에는 일부 또는 전부를 면책 받지 못하며, 회원의 부담으로 '회사' 에 발생한 손해를 전부 배상하여야 합니다. (면책제도 적용 손해배상 상한액 400만원)

  <span class="terms_pdl">
    1. 사고발생 후 반납하기 이전(대여 기간)까지 고의로 '회사' 에 통보하지 않고 방치된 손해
    <br/>2. 무면허 포함, 운전자 자격 요건이 불충분한 대상이 운전하다가 발생된 사고로 인한 손해
    <br/>3. 이종 연료 및 불량 연료 주입으로 인한 손해
    <br/>4. 회사의 허가를 받지 않은 자동차의 임의 분해, 훼손, 파손 및 자가 수리 등으로 인한 손해
    <br/>5. 음주운전 사고로 인한 손해
    <br/>6. 회원 또는 운전자의 명백한 고의, 관리소홀 또는 부주의로 인한 도난, 파손, 충돌, 추락, 전복 또는 침수 등으로 인한 손해
    <br/>7. 임대차계약서상의 운전자 이외의 자가 자동차를 운전하다가 생긴 사고로 인한 손해
    <br/>8. 위 각 호에 준하는 행위로 제 13조 금지조항에 해당하여 발생한 손해
 </span>
  ③ 회원은 제1항과 제2항의 보상을 받음에 있어, 손해의 발생 원인에 따라 보상을 받지 못할 수 있고 보상 또는 적용 받지 못한 손해 및 보험 가입 사항의 보상 한도를 초과한 부분에 대해서는 고객의 책임으로 합니다.
  <br/>④ 제20조 보험가입 등의 '차량손해면책제도'에 의한 최고 면책 금액이 회원의 배상 책임 금액보다 부족한 때에는 그 부족액은 다음 각 호에 따라 회원이 부담하여야 합니다.

  <span class="terms_pdl">
    1. '차량손해면책제도' 에 가입한 경우에 회원은 사고 발생 시 사고 건당 자동차 사고처리 비용에 대해 자신이 가입한 '차량손해면책제도' 의 최고 면책금을 한도로 '회사' 에 손해를 배상합니다.
    <br/>2. 자동차 사고처리 비용이 '차량손해면책제도' 보다 미만인 경우 고객이 실 수리비를 부담하기로 합니다

      <span class="terms_pdl">
        1) 예시1 : 고객 부담금 30만원 가입, 수리비 50만원 발생 시 30만원 부담
        <br/>2) 예시2 : 고객 부담금 30만원 가입, 수리비 20만원 발생 시 20만원 부담
        <br/>* 상기 사항은 변동 가능성이 있습니다.
      </span>
  </span>
  ⑤ 대여 기간이 종료 되었음에도 회원이 '회사' 에 자동차를 반납하지 않고 운행하다가 생긴 사고는 '회사' 의 자동차보험, 차량손해면책제도 가입과는 별개로 회원이 손해배상책임 부담해야 하며 그 사고로 인하여 '회사' 에 손해가 발생한 경우에는 회원은 '회사' 에 그 손해를 배상하여야 합니다.
  <br/>⑥ 회원은 자동차 손해에 대한 고객 부담금 또는 실 수리비를 지체 없이 '회사' 에게 지급하여야 합니다. 회원이 고객 부담금 또는 실 수리비의 원인을 제공한 책임 있는 자동차의 운전자 등으로부터 그 상당액을 수취하는 것은 고객의 책임과 권한으로 합니다. 다만, 해당 운전자 등이 '회사' 에 고객 부담금 또는 실 수리비를 직접 납부한 때에는 회원에게 동 금액을 별도로 청구하지 아니합니다.

</p>


<h5>제22조. 회원의 자동차 관리비용 지불</h5>
<p>
  ① 회원이 자동차 관리 비용으로 지출이 필요한 경우 사전 '라익카 고객센터' 를 통해 협의를 통해 지출 필요성과 금액, 타당성 등을 판단한 후 해당 비용을 지급 할 수 있으며, 회원은 자동차 관리를 위해 지출된 비용에 대하여 영수증을 반드시 제출해야 합니다. 단, 영수증을 누락하거나 비용지출 기한이 3개월을 초과 할 경우에는 지급되지 않으며 영수증의 결제 시간이 대여 기간과 일치해야 회원의 라익카 포인트 또는 실비로 지급/처리 될 수 있습니다.
  <br/>② 자동차 관리 비용에 포함되는 품목은 하기 각 호와 같으며, 소모품을 구입하는 금액은 5만원 이하로 제한됩니다.

  <span class="terms_pdl">
    1. 주유
    <br/>2. 자동차 와이퍼 교체
    <br/>3. 자동차 전구 교체, 워셔액, 요소수 보충
    <br/>4. 그 외 각 부품 및 소모품
  </span>
  ③ 주유 카드는 계약한 라익카 차량에 대해 주유, 세차 시에만 사용 할 수 있으며 지정한 주유 카드를 이용하지 못할 경우, 주유 전 반드시 라익카 고객센터로 연락하여 '회사' 측에 허가를 받아야 합니다.
</p>


<h5>제23조. 배상책임</h5>
<p>
  ① 회원은 임차기간 중 제 13조 금지 행위에 해당하는 행위 및 기타 회원의 책임 있는 사유로 인하여 '회사' 또는 제3자에게 손해를 끼쳤을 경우 그 손해를 배상 할 책임을 집니다.
  <br/>② 회원이 임차기간 중 주정차 위반 및 교통법규 위반 등으로 인하여 부과 받은 과태료와 범칙금 등은 자동차 반납 이후에도 부담하여야 할 책임이 있습니다.
  <br/>③ 책임 한계 범위
  <span class="terms_pdl">
    1. 회원은 대여기간 중 고의 또는 과실로 인해 발생한 '회사' 의 재산상의 손실이나 제 3자에게 끼친 인명, 재산상의 손실에 대한 책임이 있습니다.
    2. '회사'가 제공하는 보험 약관에 준수하지 않는 사고가 발생하였을 경우 사고에 관한 모든 책임을 개인이 질 수 있습니다.
  </span>
</p>


<h5>제24조. 폐차 손해배상</h5>
<p>
  ① 회원의 제13조 금지행위 위반 등 기타 귀책 사유로 발생한 사고로 인해 자동차의 예상 수리비가 '회사' 의 회계상 장부가액의 60%(2년 이상 운영 차량), 80%(2년 미만 운영 차량)를 초과하거나 수리가 불가능, 곤란한 경우 대여 계약은 자동차의 손 망실 사유 발생일로부터 자동 해지 되며 회원은 다음의 산식에 따라 폐차 손해액을 배상하여야 합니다.
  <br/>② '회사' 는 제1항에 의하여 회원이 부담할 손해액을 정하는 경우 당해 차량의 회계상 장부가액 및 처분 금액, 상품화 비용 등의 객관적인 산정 금액을 제시하여야 합니다.

  <span class="terms_pdl">
    1. 폐차 손해배상 산출식
    <br/>'회사' 의 대여 자동차 회계상 장부가액 – 당해 차량 처분 금액)+영업 손해배상액+카셰어링 상품화 비용

    <span class="terms_pdl">
      1) 회계상 장부가액 : 차량 취득금액-감가상각 누계 액
      <br/>2) 당해 차량 처분 금액: '회사'가 처분 시 지급받는 차량 금액
      <br/>3) 카셰어링 상품화 비용: 카셰어링용 단말기, 네비게이션, 블랙박스 등 카셰어링 서비스를 제공하기 위해 차량에장착 된 장비 혹은 액세서리 등에 대한 부품 및 공임 비용
    </span>
  </span>
</p>


<h5>제25조. 영업 손해 및 휴차보상</h5>
<p>
  ① 자동차 손해 면책 제도 가입 유무와 관계없이 사고로 인하여 자동차가 휴차 할 경우에는 발생한 수리 기간 동안의 표준대여요금에 해당하는 영업 손해배상 비용이 청구되며, 이는 기타 부대비용이 발생되는 경우 해당 손해 비용을 포함하여 회원이 배상하여야 합니다.
  <br/>② '회사' 는 제1항에 의하여 회원이 부담 할 손해 금액을 정하는 경우 동종 차량의 대여 요금 등을 감안한 객관적인 산정 자료를 제시하여야 합니다.
  <br/>③ 휴차보상료는 해당 자동차의 사고처리기간 중 발생하는 영업손실에 대한 보상을 의미합니다. '회사'가 객관적인 산정 자료를 제시하지 않는 경우 자동차 수리에 필요한 기간 또는 자동차가 수리 불가능할 정도로 파손 또는 도난 된 경우 자동차 재 구매 및 등록, 상품화에 소요되는 기간에 해당하는 표준대여요금을 기준으로 산정한다.

  <span class="terms_pdl">
    1. 영업 손해배상 산출식: (표준대여요금 x 50%) x 사고처리기간
  </span>
</p>


<h5>제26조. 도로교통 관련 법률 위반</h5>
<p>
  ① '회사' 의 자동차 이용 중 다음 각 호의 어느 하나에 해당하는 행위로 인한 사고발생 발생 시 민/형사상 책임은 회원에게 있습니다

  <span class="terms_pdl">
    1. 12대 중과실 사고

    <span class="terms_pdl">
      1) 신호위반 : 신호를 위반, 비보호좌회전, 수신호 위반, 통행금지구역, 일방통행 구역에서의 운전 등
      2) 중앙선침범 : 의도적 중앙선 침범 사고, 빗길 과속 중침 사고, 횡단보도에서 좌회전 중 반대방향 자동차와의 사고 등
      3) 제한속도보다 시속 20킬로미터 이상 과속
      4) 앞지르기 방법 및 금지위반 : 앞지르기의 방법, 금지 시기, 금지 장소 또는 끼어들기에 금지를 위반하거나 고속도로에서의 앞지르기 방법을 위반하여 운전 중 발생한 사고
      5) 건널목통과방법 위반 : 철길 직전 일시정지 및 안전 확인 등 주의의무위반
      6) 무면허운전 : 무면허운전, 면허 정지 기간 중 운전, 적성검사미필 중 운전
      7) 음주운전, 약물복용운전 : 도로교통법 기타 법령에 의해 허용되는 범위 내라 하더라도 음주 및 약물복용 운전 절대 금지
      8) 인도 침범, 통행방법위반 : 인도침범사고, 도로 외의 곳에 출입하고자 보도를 횡단하던 중 발생한 사고
      9) 승객추락방지 의무위반 : 승객의 추락 방지 의무를 위반하여 운전한 경우
      10) 어린이보호구역내(스쿨 존) 어린이 상해 사고 : 어린이보호구역으로 지정된 구역에서 운행 중 발생한 어린이 상해 사고
      11) 횡단보도 사고 : 횡단보도에서 보행자 보호의무 위반
      12) 화물고정조치 위반 : 화물이 떨어지지 않도록 필요한 조치를 하지 않고 운전
  </span>
    2. 사망사고 : 교통사고로 피해자가 현장 또는 치료 도중 사망한 경우
    3. 도주 사고 : 사람을 치고 도주한 경우, 남의 재물에 손해를 입히고 도주한 경우
    4. 보행자 보호의무 위반 : 신호등 있거나 없는 횡단보도에서 보행인을 친 사고
    5. 약물복용운전 : 한계 수치 0.03%이상에서 운전 중 사고
    6. 속도위반 : 규정 속도의 20Km/h 초과 운전하거나 기후나 노면 상태에 따라 도로의 규정 속도에서 일정비율 감속해서 운전하지 않아 발생한 사고
    7. 인도 침범, 통행방법위반 : 인도침범사고, 도로 외의 곳에 출입하고자 보도를 횡단하던 중 사고
    8. 기타 도로교통법률, 여객자동차운수사업법 위반의 건 등
  </span>
  ② 회원은 제1항 각 호의 위반에 대한 벌금 및 과태료와 이의 연체로 인해 지방 관할 구역으로부터 발행되는 모든 범칙금에 대하여 지불해야 할 의무가 있으며, 톨게이트 무단 통행으로 인한 사용비 및 과태료를 지불해야 할 의무가 있습니다.
  ③ 회원은 자동차의 이용 및 반납 시 정상 주차 구역이 아닌 주차금지 또는 주차 제한, 전용 주차구역 등에 주차해서는 안됩니다. 정상 주차구역에서 자동차의 이용 및 반납이 불가할 시 '라익카 고객센터' 로 연락하여 조치를 받아야하며, 회원이 자의적으로 진행하여 발생한 자동차의 손실이나 범칙금 부과 등에 대한 모든 책임은 회원이 부담합니다.
</p>


<h5>제27조. 지연손해금</h5>
<p>
  ‘회사' 와 '회원' 은 본 약관에 따른 금전 채무의 이행을 지체한 경우 상사법정이율에 따른 지연 손해금을 지급하여야 합니다.
</p>


<h5>제28조. 관할법원</h5>
<p>
  본 약관의 해석과 이에 근거한 예약에 관련된 법적 분쟁이 발생할 경우 소송은 민사소송법상의 관할 법원에 제기합니다. 단, '회사' 와 회원이 관할법원에 대해 약정할 경우에는 그에 따릅니다.
</p>


<h5>부칙</h5>
<p>
  본 약관은 2021년 5월 7일부터 적용됩니다.
</p>
          </div>
          </div>
         
          <!-- //자동차대여약관 -->



<!-- -------------------------------tos4---------------------------- -->

<hr>
<div class="terms-info">
  <div class="tab-pane fade show active" name="context" style="padding:  20px 100px;" id="tos4"> 

<h5>제1조. 목적</h5>
<p>
  본 약관은 회원(서비스 약관에 동의한 자를 말합니다. 이하 “회원”이라고 합니다.)이 주식회사 라익카 (이하 “회사”라고 합니다.)가 제공하는 사용자 위치 기반을 통한 차량예약서비스(이하 “서비스”라고 합니다)를 이용함에 있어 회사와 회원의 권리•의무 및 책임사항을 규정함을 목적으로 합니다.
</p>


<h5>제2조. 약관 외 준칙</h5>
<p>
  본 약관에 명시되지 않은 사항에 대해서는 위치정보의 보호 및 이용 등에 관한 법률, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계 법령과 회사가 별도로 정한 서비스의 세부이용지침 등의 규정에 따릅니다.
</p>


<h5>제3조. 서비스 가입</h5>
<p>
  ① 고객은 ‘라익카 회원 이용 약관 제 6조’에 따라 서비스를 가입 할 수 있으며 회사가 정한 본 약관에 고객이 동의하므로써 서비스 가입의 효력이 발생합니다.
  <br/>② 단 회사는 다음 각 호의 고객 가입신청에 대해서는 이를 승낙하지 아니할 수 있습니다.
  <span class="terms_pdl">
    1. 실명이 아니거나 다른 사람의 명의를 사용하는 등 허위로 신청하는 경우
    <br/>2. 고객 등록 사항을 누락하거나 오기하여 신청하는 경우
    <br/>3. 공공질서 또는 미풍양속을 저해하거나 저해할 목적으로 신청한 경우
    <br/>4. 기타 회사가 정한 이용신청 요건이 충족되지 않을 경우
    <br/>5. 고객은 그 자격에 따라 서비스 이용의 일부가 제한될 수 있으며 사용기록 및 가입정보, 진위여부에 따라 고객 자격 및 서비스 이용 가능 범위가 변동될 수 있습니다.
  </span>
</p>


<h5>제4조. 서비스 해지</h5>
<p>
  ① 고객은 ‘라익카 회원 이용 약관 제 8조’에 따라 서비스를 해지(탈퇴)할 수 있습니다.
</p>


<h5>제5조. 개인위치정보 이용·제공에 관한 동의·조건</h5>
<p>
  ① 회사는 위치기반서비스를 제공하기 위하여 고객의 개인위치정보를 이용·제공하며, 고객은 서비스 가입 및 기타 방법으로 개인위치정보주체 본인을 인증하여 동의를 획득합니다.
  <br/>② 8세 이하 아동의 경우, 아동, 치매, 정신질환, 중증 정신지체 등으로 사리를 분별할 능력이 없는 자 (이하 '의사무능력자등'이라 한다.)의 친권자, 후견인, 부양의무자 그 밖에 의사무능력자등을 사실상 보호하는 자로서 대통령령이 정하는 자(이하 '친권자등'이라 한다)가 의사무능력자등의 생명 또는 신체의 보호를 위하여 의사무능력자 등의 개인위치정보의 이용 및 제공에 동의하는 경우, 친권자등임을 증명하는 증빙서류를 제출하는 건에 한하여 동의획득으로 인정합니다.
  <br/>③ 8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 수집‧이용 또는 제공에 동의를 하고자 하는 자는 서면동의서에 8세 이하의 아동 등의 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 하며 서면동의서에는 다음 사항을 기재하고 그 보호의무자가 기명날인 또는 서명하여야 합니다.
  <span class="terms_pdl">
    1. 8세 이하의 아동 등의 성명, 주소 및 생년월일
    <br/>2. 보호의무자의 성명, 주소 및 연락처
    <br/>3. 개인위치정보 수집, 이용 또는 제공의 목적이 8세 이하의 아동 등의 생명 또는 신체의 보호에 한정된다는 사실
    <br/>4. 동의의 연월일
  </span>
</p>


<h5>제6조. 개인위치정보 이용·제공에 관한 동의의 철회</h5>
<p>
  고객은 서비스 해지 등의 방법을 통하여 개인위치정보의 이용 또는 제공에 대한 동의의 전부 또는 일부를 철회 할 수 있습니다.
</p>


<h5>제7조. 서비스 내용 및 이용요금</h5>
<p>
  ① 회사는 직접 위치정보를 수집하거나 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
  <span class="terms_pdl">
    1. 인근 그린존 위치 및 할인 정보
    <br/>2. 차량 반납 위치 반경 확인 및 이상 결과 통지
    <br/>3. 이용자 보호 및 부정 이용 방지 목적으로 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한 없는 자의 비정상적인 서비스 이용 시도 등을 차단
  </span>
  ② 제1항 위치기반서비스 이용 요금은 원칙적으로 무료입니다. 만약 별도의 유료 서비스의 경우 해당 서비스에 명시합니다.
</p>


<h5>제8조. 개인 위치정보의 제공</h5>
<p>
  회사는 고객의 개인위치정보를 고객이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신 단말장치로 매회 고객에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다. 단, 다음에 해당하는 경우에는 고객이 미리 특정하여 지정한 연락처 및 이메일 주소로 통보합니다.
  <span class="terms_pdl">
     1. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우
     <br/>2. 회원이 온라인 게시 등의 방법으로 통보할 것을 미리 요청한 경우
  </span>
</p>


<h5>제9조. 고객의 개인위치정보 보호</h5>
<p>
  회사는 관련법령이 정하는 바에 따라서 고객의 개인위치정보를 보호하기 위하여 노력합니다.
</p>


<h5>제10조. 위치정보 이용·제공사실 확인자료의 보유</h5>
<p>
  ① 회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 고객에 대한 위치정보의 수집‧이용‧제공 사실 확인자료를 위치정보시스템에 자동으로 기록하며, 관련 자료는 위치정보서비스 제공을 위해 고객의 서비스 가입 시점부터 서비스 해지 시점까지 보유합니다.
  <br/>② 회사는 위치정보의 보호 및 이용 등에 관한 법률 제24조 제4항의 규정에 의하여 회사는 고객이 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보의 수집·이용·제공사실 확인자료(동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 이용·제공사실 확인자료에 한합니다) 를 지체없이 파기합니다. 다만, 고객이 별도로 동의하거나 고객의 불만/분쟁 처리 또는 국세기본법, 법인세법, 부가가치세법 기타 관계법령의 규정에 의하여 보존할 필요성이 있는 경우에는 관계법령에 따라 보존합니다.
</p>


<h5>제11조. 개인위치정보의 보유 및 이용기간</h5>
<p>
  회사는 고객의 개인위치정보의 이용 또는 제공 목적을 달성하거나, 개인위치정보의 이용 또는 제공 목적을 달성하거나, 고객이 개인위치정보의 이용에 대한 동의의 전부 또는 일부에 대하여 철회한 때에는 당해 개인위치정보를 지체 없이 파기합니다.
</p>


<h5>제12조. 법정대리인의 권리</h5>
<p>
  ① 회사는 14세 미만의 아동으로부터 위치정보의 보호 및 이용 등에 관한 법률 제18조 제1항, 제19조 제1항‧제2항 또는 제21조의 규정에 의하여 개인위치정보를 수집‧이용 또는 제공하고자 하는 경우에는 아동 본인 및 그 법정대리인의 동의를 얻어야 합니다.
  <br/>② 본 약관 제14조(고객의 권리)의 규정은 위치정보의 보호 및 이용 등에 관한 법률 제25조 제2항의 규정에 의하여 법정대리인이 동의를 하는 경우에 이를 준용합니다. 이 경우, '고객'은 '법정대리인'으로 봅니다.
</p>


<h5>제13조. 회사의 의무</h5>
<p>
  ① 회사는 고객의 개인위치정보 이용·제공과 관련한 고객의 불만사항이 접수되는 경우 이를 신속하게 처리하여야 하며, 신속한 처리가 곤란한 경우 그 사유와 처리 일정을 고객에게 통지합니다.
  <br/>② 회사는 위치정보의보호및이용등에관한법률, 정보통신망이용촉진및보호등에관한법률 등 고객의 개인위치정보 이용·제공과 관련이 있는 법규를 준수합니다.
</p>


<h5>제14조. 고객의 권리</h5>
<p>
  ① 고객은 회사의 고객 개인위치정보의 수집에 대한 동의의 전부 또는 일부에 대하여 철회 할 수 있습니다.
  <br/>② 고객은 회사의 고객 개인위치정보 수집의 일시적인 중지를 요구 할 수 있습니다.
  <br/>③ 고객은 제1항 및 제2항에 의한 개인위치정보 수집에 대한 동의철회 및 중지를 전화, 우편, APP를 통해 요청 할 수 있습니다.
  <br/>④ 고객이 제1항 또는 제2항에 따라 개인위치정보 수집에 대한 동의를 철회 또는 중지하는 경우 고객에 대한 회사의 각종 서비스의 제공이 불가능하게 될 수 있습니다.
  <br/>⑤ 고객은 회사를 방문하여 다음과 같은 자료 등의 열람 또는 고지를 요구 할 수 있고 당해 자료 등에 오류가 있는 경우에는 그 정정을 요구 할 수 있습니다.
  <span class="terms_pdl">
    1. 고객에 대한 위치정보 수집‧이용‧제공 사실 확인자료
    <br/>2. 고객의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률의 규정에 의하여 제3자에게 제공된 이유 및 내용
  </span>
</p>


<h5>제15조. 고객의 의무</h5>
<p>
  ① 고객은 서비스의 제공을 위하여 회사가 개인위치정보를 수집하는데 필요한 제반 정보를 제공, 등록 할 경우 현재의 사실과 일치하는 완전한 정보를 제공‧등록 하여야 하며, 변경사항이 발생할 경우 즉시 갱신하여야 합니다.
  <br/>② 고객은 회사가 위치정보를 수집하여 제공하는 서비스를 원활하게 이용하기 위하여 운행 정보 수집장치 등 위치정보수집 단말장치(이하 '대상 단말기'라 합니다)가 정상 동작을 유지하도록 관리하여야 하며, 대상 단말기의 정상 동작이 유지되지 않아 회사의 개인위치정보 수집에 지장이 발생한 경우에는 해당 대상 단말기의 보수, 교환 등의 처리를 하여 회사의 서비스 제공을 위한 위치정보 수집이 정상적으로 이루어지도록 합니다.
  <br/>③ 고객은 다음 각 호의 어느 하나에 해당하는 행위를 하여서는 아니 됩니다.
  <span class="terms_pdl">
    1. 개인위치정보 수집과 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위
    <br/>2. 타인으로 가장하는 행위 및 타인과의 관계를 허위로 명시하는 행위
    <br/>3. 자기 또는 타인에게 재산상의 이익을 주거나 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
    <br/>4. 타인의 개인위치정보를 무단으로 유용 또는 유출하는 행위
    <br/>5. 기타 불법적이거나 부당한 행위
  </span>
  ④ 고객은 관계 법령, 이 약관의 규정, 이용안내 및 서비스 상에 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
</p>



<h5>제16조. 회사의 연락처</h5>
<p>
  회사의 상호, 주소, 전화 번호 그 밖의 연락처는 다음과 같습니다.
  <span class="terms_pdl">
    1. 상호: (주)라익카 대표
    <br/>2. 주소: 서울틀별시 강남구 역삼동 쌍용빌딩 90층
    <br/>3. 대표전화: 000-0000-0000
  </span>
</p>



<h5>제17조. 위치정보 관리책임자</h5>
<p>
  회사의 위치정보관리책임자는 다음과 같습니다.
  <span class="terms_pdl">
    1. 직위: 경영관리본부 본부장
    <br/>2. 전화번호: 000-0000-0000
  </span>
</p>



<h5>제18조. 손해배상</h5>
<p>
  ① 고객 또는 위치기반서비스사업자가 고의나 과실에 의해 이 약관의 규정을 위반함으로 인하여 회사에 손해가 발생하게 되는 경우, 이 약관을 위반한 당사자는 회사에 발생한 손해를 배상하여야 합니다.
  <br/>② 고객의 불법 행위나 약관 위반행위로 인하여 회사가 제3자로부터 손해배상청구 또는 소송을 비롯한 각종 이의제기를 받는 경우 당해 불법행위 또는 약관 위반행위를 한 자는 자신의 책임과 비용으로 회사를 면책시켜야 하며, 회사가 면책되지 못한 경우 그로 인하여 회사에 발생한 손해를 배상하여야 합니다.
  <br/>③ 회사가 위치정보의보호및이용등에관한법률 제15조 내지 제26조의 규정을 위반하여 고객에게 손해가 발생한 경우 회사가 고의 또는 과실이 없음을 입증하지 아니하면 고객의 손해에 대해 책임을 집니다.
</p>



<h5>제19조. 면책사항</h5>
<p>
  ① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 개인위치정보를 수집할 수 없는 경우 이에 관한 책임이 면제됩니다.
  <br/>② 회사는 고객의 귀책사유로 인하여 회사가 개인위치정보를 수집하지 못하거나 잘못 수집하여 발생하는 서비스의 이용 장애에 대하여 책임을 지지 않습니다.
</p>



<h5>제20조. 분쟁의 해결</h5>
<p>
  ① 개인위치정보의 수집과 관련하여 회사와 고객 사이에 분쟁이 발생한 경우, 회사와 고객은 분쟁의 해결을 위해 성실히 협의합니다.
  <br/>② 제1항의 협의에도 불구하고 회사와 고객간 분쟁이 해결되지 않을 경우 양 당사자는 개인정보보호법 제43조의 규정에 의한 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.
</p>


<h5>부칙</h5>
<p>
  위치정보관리책임자는 2017년 3월을 기준으로 다음과 같이 지정합니다.
  <span class="terms_pdl">
    1.소속 : (주)라익카 플랫폼본부
    <br/>2.연락처 : 02-0000-0000
  </span>
  <br/>
  <br/>부칙 (2019. 02. 22)
  <br/>(시행일) 이 약관은 2019년 2월 22일부터 시행한다.
  <br/>
  <br/>부칙 (2021. 01. 21)
  <br/>(시행일) 이 약관은 2021년 1월 21일부터 시행한다.
</p>
          </div>
          </div>
          <!-- //위치기반 서비스 이용약관 -->



  

<!-- -------------------------------tos5---------------------------- -->

<hr>
<div class="terms-info">
  <div class="tab-pane fade show active" name="context" style="padding:  20px 100px;" id="tos5"> 

<h5>제1조. 목적</h5>
<p>본 약관은 (주)라익카 (이하 '회사'라 합니다.)가 각종 위치기반서비스(이하 통칭하여 ‘서비스’라 합니다)를 회사와 이용 계약을 체결한 ‘고객’에게 제공하기 위하여 위치정보의보호 및 이용 등에 관한 법률의 규정에 의거 회사가 고객의 개인위치정보를 수집하고 제공함에 있어 필요한 회사와 고객 간의 권리 및 의무, 기타 제반사항을 정함을 목적으로 합니다.</p>


<h5>제2조. 약관 외 준칙</h5>
  <p>본 약관에 명시되지 않은 사항에 대해서는 위치정보의 보호 및 이용 등에 관한 법률, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계 법령과 회사가 별도로 정한 서비스의 세부이용지침 등의 규정에 따릅니다.</p>


<h5>제3조. 회사의 연락처</h5>
<p>
  회사의 상호, 주소, 전화 번호 그 밖의 연락처는 다음과 같습니다.
  <br/>
  <br/>1. 상호: 주식회사 라익카 
  <br/>2. 주소: 서울틀별시 강남구 역삼동 쌍용빌딩 90층
  <br/>3. 대표전화: 080-0000-0000
</p>


<h5>제4조. 개인위치정보 수집에 관한 동의</h5>
<p>회사는 위치기반서비스를 제공하기 위하여 고객의 개인위치정보를 수집하며, 고객은 본 약관에 동의함으로써 이에 동의한 것으로 간주됩니다. </p>


<h5>제5조. 개인위치정보 수집에 관한 동의의 철회</h5>
<p>고객은 서비스 해지 등의 방법을 통하여 개인위치정보의 수집에 관한 동의를 철회 할 수 있습니다.</p>


<h5>제6조. 개인위치정보 수집방법</h5>
<p>
  ①  회사는 GPS, DR, BLE 를 이용하여 운행정보 수집 장치를 통해 주기적, 간헐적 무선 전송  방식으로 위치
  정보를 수집합니다.
  <br/>② 제1항에서 정한 위치정보의 수집방법이 변경되는 경우 회사는 인터넷에 공지하거나 고객에게 통지합니다.
  다만, 회사가 통제할 수 없는 사유가 발생하여 사전 통지가 불가능한 경우에는 사후에 통지합니다.
</p>


<h5>제7조. 위치정보서비스의 내용</h5>
<p>
  ①  회사가 고객의 위치정보를 이용하여 제공하는 서비스 내용은 아래와 같습니다.
  <br/>
  <br/>1. 인근 그린존 위치 및 할인 정보
  <br/>2. 차량 반납 위치 반경 확인 및 이상 결과 통지
  <br/>3. 이용자 보호 및 부정 이용 방지 목적으로 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여
  <br/>권한없는 자의 비정상적인 서비스 이용 시도 등을 차단
  <br/>② 회사는 고객에게 새로운 서비스를 제공하기 위하여 수집된 위치정보를 이용 할 수 있습니다.
</p>


<h5>제8조. 개인위치정보의 제공</h5>
<p>① 방송통신위원회에 신고된 위치기반서비스사업자는 위치정보의 보호 및 이용 등에 관한 법률 제20조의
  규정에 의거 동법에 따른 개인위치정보주체의 동의를 얻어 회사에게 해당 개인위치 정보주체의
  개인위치정보 제공을 요청 할 수 있습니다.
  <br/>② 위치기반서비스사업자는 다음 각호의 사항을 갖추어 회사에게 개인위치정보를 요청하여야 합니다.
  <span class="terms_pdl">
    1. 개인위치정보주체의 동의를 얻은 사실
    <br/>2. 개인위치정보의 범위 및 기간
  </span>
  <br/>③ 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사 기관의 요구가 있는 경우 등에는 개인의 위치정보를
  제공 할 수 있습니다.
  <br/>④ 회사는 위치기반서비스사업자가 제1항의 규정에 의한 동의 없이 개인위치정보 주체의 개인위치정보를
  요청하거나, 회사의 확인 결과 개인위치정보주체의 개인위치정보의 제공에 관한 동의가 없는 것으로
  판명되거나 또는 당해 요청이 관련 법령에 위배되는 요청으로 판단되는 경우 당해 개인위치정보주체의
  개인위치정보 제공을 거절할 수 있습니다.
</p>


<h5>제9조. 고객의 개인위치정보 보호</h5>
<p>회사는 관련법령이 정하는 바에 따라서 고객의 개인위치정보를 보호하기 위하여 노력합니다. </p>


<h5>제10조. 개인위치정보 수집⋅이용⋅제공 사실 확인자료의 보유, 이용기간</h5>
<p>
  ① 회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 고객에 대한 위치정보의
  수집‧이용‧제공 사실 확인자료를 위치정보시스템에 자동으로 기록하며, 관련 자료는 위치정보서비스
  제공을 위해 고객의 서비스 가입 시점부터 서비스 해지 시점까지 보유합니다.
  <br/>② 회사는 위치정보의 보호 및 이용 등에 관한 법률 제24조 제4항의 규정에 의하여 회사는 고객이 동의의
  전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보의 수집·이용·제공사실
  확인자료(동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 이용·제공사실
  확인자료에 한합니다)를 지체없이 파기합니다. 다만, 고객이 별도로 동의하거나 고객의 불만/분쟁 처리 또는
  국세기본법, 법인세법, 부가가치세법 기타 관계법령의 규정에 의하여 보존할 필요성이 있는 경우에는
  관계법령에 따라 보존합니다.
</p>


<h5>제11조. 법정대리인의 권리</h5>
<p>
  ① 회사는 14세 미만의 아동으로부터 위치정보의 보호 및 이용 등에 관한 법률 제18조 제1항,
  제19조 제1항‧제2항 또는 제21조의 규정에 의하여 개인위치정보를 수집‧이용 또는 제공하고자 하는
  경우에는 아동 본인 및 그 법정대리인의 동의를 얻어야 합니다.
  <br/>② 본 약관 제14조(고객의 권리)의 규정은 위치정보의 보호 및 이용 등에 관한 법률 제25조 제2항의 규정에
  의하여 법정대리인이 동의를 하는 경우에 이를 준용합니다. 이 경우, '고객'은 '법정대리인'으로 봅니다.
</p>


<h5>제12조. 8세 이하의 아동 등의 보호를 위한 위치 정보이용⋅동의조건</h5>
<p>
  ① 다음 각 호의 어느 하나에 해당하는 자(이하 '8세 이하의 아동 등'이라 합니다)의 보호의무자가 8세 이하의
  아동 등의 생명 또는 신체의 보호를 위하여 8세 이하의 아동 등의 개인위치정보의 수집‧이용 또는 제공에
  동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.
  <span class="terms_pdl">
      1. 8세 이하의 아동
      <br/>2. 금치산자
      <br/>3. 장애인 복지법 제2조 제2항 제2호의 규정에 의한 정신적 장애를 가진 자로서 장애인 고용촉진 및
      직업재활법 제2조 제2호의 규정에 의한 중증장애인에 해당하는 자
      <br/>(장애인복지법 제32조의 규정에 의하여 장애인등록을 한 자에 한정)
  </span>
  ② 본 약관 제14조(고객의 권리)의 규정은 위치정보의 보호 및 이용 등에 관한 법률 제25조 제2항의 규정에
  의하여 법정대리인이 동의를 하는 경우에 이를 준용합니다. 이 경우, '고객'은 '법정대리인'으로 보며
  위치정보의 보호 및 이용 등에 관한 법률 제26조 제4항의 규정에 의하여 보호의무자가 동의하는 경우에도
  적용됩니다. 이 경우 '고객'은 ‘보호의무자’로 간주합니다.
  ③ 8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 수집‧이용 또는 제공에 동의를
  하고자 하는 자는 서면동의서에 8세 이하의 아동 등의 보호의무자임을 증명하는 서면을 첨부하여 회사에
  제출하여야 하며 서면동의서에는 다음 사항을 기재하고 그 보호의무자가 기명날인 또는 서명하여야 합니다.
  <span class="terms_pdl">
    1. 8세 이하의 아동 등의 성명, 주소 및 생년월일
    <br/>2. 보호의무자의 성명, 주소 및 연락처
    <br/>3. 개인위치정보 수집, 이용 또는 제공의 목적이 8세 이하의 아동 등의 생명 또는 신체의 보호에 한정된다는사실
    <br/>4. 동의의 연월일
  </span>
</p>


<h5>제13조. 회사의 의무</h5>
<p>
  ① 회사는 고객의 개인위치정보 수집과 관련한 고객의 불만사항이 접수되는 경우 이를 신속하게 처리하여야
  하며, 신속한 처리가 곤란한 경우 그 사유와 처리 일정을 고객에게 통지합니다.
  <br/>② 회사는 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률,
  통신비밀보호법, 전기통신사업법 등 고객의 개인위치정보 수집과 관련이 있는 법규를 준수합니다.
  <br/>③ 회사는 위치정보의 보호 및 이용 등에 관한 법률 제20조 제1항에 따라 위치기반 서비스사업자가 요청하는
  개인위치정보를 정당한 사유 없이 제공 거절 할 수 없습니다.
</p>


<h5>제14조. 고객의 권리</h5>
<p>
  ① 고객은 회사의 고객 개인위치정보의 수집에 대한 동의의 전부 또는 일부에 대하여 철회 할 수 있습니다.
  <br/>② 고객은 회사의 고객 개인위치정보 수집의 일시적인 중지를 요구 할 수 있습니다.
  <br/>③ 고객은 제1항 및 제2항에 의한 개인위치정보 수집에 대한 동의철회 및 중지를 전화, 우편, APP를 통해
  요청 할 수 있습니다.
  <br/>④ 고객이 제1항 또는 제2항에 따라 개인위치정보 수집에 대한 동의를 철회 또는 중지하는 경우 고객에 대한
  회사의 각종 서비스의 제공이 불가능하게 될 수 있습니다.
  <br/>⑤ 고객은 회사를 방문하여 다음과 같은 자료 등의 열람 또는 고지를 요구 할 수 있고 당해 자료 등에 오류가
  있는 경우에는 그 정정을 요구 할 수 있습니다.
  <span class="terms_pdl">
    1. 고객에 대한 위치정보 수집‧이용‧제공사실 확인자료
    <br/>2. 고객의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률의 규정에 의하여
    제3자에게 제공된 이유 및 내용
  </span>
</p>


<h5>제15조. 고객의 의무</h5>
<p>
  ① 고객은 서비스의 제공을 위하여 회사가 개인위치정보를 수집하는데 필요한 제반 정보를 제공, 등록 할 경우
  현재의 사실과 일치하는 완전한 정보를 제공‧등록하여야 하며, 변경사항이 발생할 경우 즉시 갱신하여야
  합니다.
  <br/>② 고객은 회사가 위치정보를 수집하여 제공하는 서비스를 원활하게 이용하기 위하여 운행 정보 수집장치 등
  위치정보수집 단말장치(이하 '대상 단말기'라 합니다)가 정상 동작을 유지하도록 관리하여야 하며,
  대상 단말기의 정상 동작이 유지되지 않아 회사의 개인위치정보 수집에 지장이 발생한 경우에는 해당
  대상 단말기의 보수, 교환 등의 처리를 하여 회사의 서비스 제공을 위한 위치정보 수집이 정상적으로
  이루어지도록 합니다.
  <br/>③ 고객은 다음 각 호의 어느 하나에 해당하는 행위를 하여서는 아니 됩니다.
  <span class="terms_pdl">
    1. 개인위치정보 수집과 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스
    감염 자료를 등록 또는 유포하는 행위
    <br/>2. 타인으로 가장하는 행위 및 타인과의 관계를 허위로 명시하는 행위
    <br/>3. 자기 또는 타인에게 재산상의 이익을 주거나 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
    <br/>4. 타인의 개인위치정보를 무단으로 유용 또는 유출하는 행위
    <br/>5. 기타 불법적이거나 부당한 행위
  </span>
  ④ 고객은 관계 법령, 이 약관의 규정, 이용안내 및 서비스 상에 공지한 주의사항, 회사가 통지하는 사항 등을
  준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다.
</p>


<h5>제16조. 위치정보 관리책임자</h5>
<p>
  회사의 위치정보관리책임자는 다음과 같습니다.
  <span class="terms_pdl">
    1. 직위: 경영관리본부 본부장
    <br/>2. 전화번호: 000-0000-0000
  </span>
</p>


<h5>제17조. 양도금지</h5>
<p>
  고객, 회사는 본 약관상의 지위 또는 권리‧의무의 전부 또는 일부를 제3자에게 양도, 위임하거나 담보제공
  등의 목적으로 처분할 수 없습니다.
</p>


<h5>제18조. 손해배상</h5>
<p>
  ① 고객 또는 위치기반서비스사업자가 고의나 과실에 의해 이 약관의 규정을 위반함으로 인하여 회사에
  손해가 발생하게 되는 경우, 이 약관을 위반한 당사자는 회사에 발생한 손해를 배상하여야 합니다
  <br/>② 고객의 불법 행위나 약관 위반행위로 인하여 회사가 제3자로부터 손해배상청구 또는 소송을 비롯한
  각종 이의제기를 받는 경우 당해 불법행위 또는 약관 위반행위를 한 자는 자신의 책임과 비용으로 회사를
  면책시켜야 하며, 회사가 면책되지 못한 경우 그로 인하여 회사에 발생한 손해를 배상하여야 합니다.
  <br/>③ 회사가 위치정보의보호및이용등에관한법률 제15조 내지 제26조의 규정을 위반하여 고객에게 손해가
  발생한 경우 회사가 고의 또는 과실이 없음을 입증하지 아니하면 고객의 손해에 대해 책임을 집니다.
</p>


<h5>제19조. 면책사항</h5>
<p>
  ① 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 개인위치정보를 수집할 수 없는 경우 이에 관한
  책임이 면제됩니다.
  <br/>② 회사는 고객의 귀책사유로 인하여 회사가 개인위치정보를 수집하지 못하거나  잘못 수집하여 발생하는
  서비스의 이용 장애에 대하여 책임을 지지 않습니다.
</p>


<h5>제20조. 분쟁의 해결</h5>
<p>
  ① 개인위치정보의 수집과 관련하여 회사와 고객 사이에 분쟁이 발생한 경우, 회사와 고객은 분쟁의 해결을
  위해 성실히 협의합니다.
  <br/>② 제1항의 협의에도 불구하고 회사와 고객간 분쟁이 해결되지 않을 경우 양 당사자는 개인정보보호법
  제43조의 규정에 의한 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.
</p>


<h5>부칙</h5>
<p>
  부칙 (2021.01.21)
  <br/>(시행일) 이 약관은 2021년 1월 21일부터 시행한다.
</p>
          <!-- //위치정보 사업자 이용약관 -->
        </div>
      </div>
      <!-- //이용약관 -->




 <!-- ======= Footer ======= -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>