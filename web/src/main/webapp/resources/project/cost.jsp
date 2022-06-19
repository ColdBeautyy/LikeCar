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

  function search(){
    document.searchFrm.submit();
  }

  $(document).ready(function(){
    function setDiscountCharge(table, car_type_nm, non_n, night, non_w){
      console.log('test');

      var rows = $('tr', table);

      $.each(rows, function () {
        // console.log(rows);
        var This = $('td', this)[0];
        var text = $(This).text();

        if (text == car_type_nm) {
          var td1 = $('td', this)[3];
          $(td1).text(non_n);
          var td2 = $('td', this)[4];
          $(td2).text(night);
          var td3 = $('td', this)[5];
          $(td3).text(non_w);
        }
      });
    }

    //할인가격세팅
    setDiscountCharge('#tab_ba','경형','3,730원~','1,860원~','5,220원~');
    setDiscountCharge('#tab_ba','소형','4,590원~','2,290원~','6,670원~');
    setDiscountCharge('#tab_ba','준중형','4,840원~','2,420원~','7,140원~');
    setDiscountCharge('#tab_ba','중형','5,770원~','2,880원~','8,000원~');
    setDiscountCharge('#tab_ba','대형','6,620원~','3,310원~','8,830원~');
    setDiscountCharge('#tab_ba','SUV','5,980원~','2,990원~','7,980원~');
    setDiscountCharge('#tab_ba','승합','9,190원','4,590원','11,080원');
    setDiscountCharge('#tab_ba','전기차','6,580원~','3,290원~','9,780원~');


    function table_row_spanning(table, spanning_row_index) {
      var rowspan_td = false;
      var rowspan_column_name = false;
      var rowspan_count = 0;
      var rows = $('tr', table);
      $.each(rows, function () {
        var This = $('td', this)[spanning_row_index];
        var text = $(This).text();
        if (rowspan_td == false) {
          rowspan_td = This;
          rowspan_column_name = text;
          rowspan_count = 1;

          //차종별 첫번 째 row first class 추가 로직(병합과 무관)
          if(spanning_row_index == 0){
            $(rowspan_td).addClass('first');
          }
        } else if (rowspan_column_name != text) {
          //차종별 line class 추가 로직(병합과 무관)
          if(spanning_row_index == 0){
            $(this).addClass("line");
          }
          $(rowspan_td).attr('rowSpan', rowspan_count);
          rowspan_td = This;
          rowspan_column_name = text;
          rowspan_count = 1;

          //차종별 첫번 째 row first class 추가 로직(병합과 무관)
          if(spanning_row_index == 0) {
            $(rowspan_td).addClass('first');
          }
        } else {
          $(This).remove();
          rowspan_count++;
        }
      }); // 반복 종료 후 마지막 rowspan 적용
      $(rowspan_td).attr('rowSpan', rowspan_count);
    }


    //순서 변경 시 오작동
    table_row_spanning('#tab_ba', 5);
    table_row_spanning('#tab_ba', 4);
    table_row_spanning('#tab_ba', 3);
    table_row_spanning('#tab_ba', 0);

  }); 
</script>
<title >요금안내 | 라익카</title>
<style >
	div{
		padding: 10px 25px;
	}
	
</style>

<style>
  /* table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
  } */
  
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
          <h2 style="font-weight: bold;">요금안내</h2>
        </div>
      </div>
    </div>
    <hr>
    <div class="content-body">
      <div class="breadcrumb">
        <div class="breadcrumb-inner">
        </div>
      </div>

      <div class="section">
        <!-- 요금 구성 -->
        <div class="section-box first">
          <div class="section-tit">
            <h3 class="page-tit" style="font-weight: bold; ">요금 구성</h3>
          </div>

          <table class="board-view">
            <caption><!-- 요금 구성 --></caption>
            <colgroup>
              <col style="width:50%;">
              <col style="width:50%;">
            </colgroup>
            <thead>
              <tr>
                <th scope="col" class="first">대여 전</th>
                <th scope="col">반납 후</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="first">
                  <dl>
                    <dt>대여요금</dt>
                    <dd>10분 단위로 설정한 대여시간 만큼 발생합니다.<br>반납위치를 대여위치와 다르게 설정하는 ‘편도’ 서비스의 경우,<br>반납위치에 따라 요금이 추가됩니다.</dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dt>주행요금</dt>
                    <dd>대여 중 운행하신 거리에 따라 부과되는 요금입니다.<br>라익카를 반납하시면 자동으로 주행거리를 계산해 등록하신 카드로 결제됩니다.</dd>
                  </dl>
                </td>
              </tr>
              <tr>
                <td class="first">
                  <dl>
                    <dt>보험료</dt>
                    <dd>운전 중 발생하는 사고에 대비해 자동차 종합보험(대인, 대물, 자손)과<br>차량손해 면책제도를 제공합니다.<br>대여시간에 비례해 보험료가 책정됩니다.</dd>
                  </dl>
                </td>
                <td>
                  <dl>
                    <dt>하이패스 통행료 / 주차비</dt>
                    <dd>통행료가 발생하는 고속도로를 이용하시거나 유료주차장을 차량 내 비치된<br>하이패스 카드로 이용하신 경우, 사용하신 금액이 청구됩니다.</dd>
                  </dl>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- //요금 구성 -->

        <!-- 차종별 기본요금 -->
        <p>
        <br>
        </p>
        <br>
        <div class="section-box">
          <div class="section-tit">
            <h3 class="page-tit" style="font-weight: bold;" >차종별 기본요금</h3>
            <p class="page-dsc">다양한 이벤트와 쿠폰을 활용해 더 저렴하게 그린카를 이용하실 수 있습니다.</p>
          </div>

          <div class="u-summary">
            <p class="tit"><span class="bul"></span>요금적용 기준 시간 안내</p>
            <ul>
              <li><span class="bul"></span>주중: 대여시작 시간이 일요일 19:00 ~ 금요일 18:50 이내인 경우</li>
              <li><span class="bul"></span>주말: 대여시작 시간이 금요일 19:00 ~ 일요일 18:50 이내인 경우 (공휴일은 주말 요금 적용)</li>
              <li><span class="bul"></span>심야 : 주중 00:00 ~ 06:50 (주말/공휴일 제외)</li>
            </ul>
          </div>

        
        
        
        
        
          <table id="tab_ba" class="board-view2 bg">
            <%-- <caption>차종별 기본요금</caption> --%>
            <colgroup>
              <col style="width:16%;">
              <col style="width:24%;">
              <col style="width:12%;">
              <col style="width:12%;">
              <col style="width:12%;">
              <col style="width:12%;">
              <col style="width:12%;">
            </colgroup>
            <thead>
              <tr>
                <th scope="col" rowspan="2" class="first">차종</th>
                <th scope="col" rowspan="2">모델</th>
                <th scope="col" rowspan="2">대여요금<br>(1시간당)</th>
                <th scope="col" colspan="3">할인대여요금</th>
                <th scope="col" rowspan="2">주행요금<br>(1km 당)</th>
              </tr>
              <tr>
                <th scope="col">주중</th>
                <th scope="col">주중 심야</th>
                <th scope="col">주말</th>
              </tr>
            </thead>
            <tbody>
            
              <tr>
                <td>경형</td>
                <td class="text-left">올 뉴 모닝</td>
                <td>7,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>경형</td>
                <td class="text-left">2018 더 넥스트 스파크</td>
                <td>7,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>경형</td>
                <td class="text-left">더 뉴 스파크</td>
                <td>7,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>경형</td>
                <td class="text-left">더 뉴 스파크(2020)</td>
                <td>7,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>경형</td>
                <td class="text-left">더 뉴 레이</td>
                <td>7,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>170원</td>
              </tr>
            
              <tr>
                <td>경형</td>
                <td class="text-left">모닝 어반</td>
                <td>7,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>소형</td>
                <td class="text-left">클리오</td>
                <td>10,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>120원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">아반떼AD</td>
                <td>9,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>160원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">올 뉴 K3</td>
                <td>9,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>160원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">더 뉴 아반떼AD</td>
                <td>9,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>160원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">올 뉴 아반떼</td>
                <td>9,500원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>160원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">벨로스터</td>
                <td>13,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>190원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">아이오닉 하이브리드</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>110원</td>
              </tr>
            
              <tr>
                <td>준중형</td>
                <td class="text-left">올 뉴 아반떼 하이브리드</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>중형</td>
                <td class="text-left">쏘나타 뉴라이즈(LPG)</td>
                <td>13,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>중형</td>
                <td class="text-left">더 뉴 말리부</td>
                <td>16,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>중형</td>
                <td class="text-left">쏘나타 DN8</td>
                <td>17,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>중형</td>
                <td class="text-left">K5 3세대</td>
                <td>18,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>중형</td>
                <td class="text-left">K5 3세대(하이브리드)</td>
                <td>19,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>대형</td>
                <td class="text-left">올 뉴 K7</td>
                <td>22,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>200원</td>
              </tr>
            
              <tr>
                <td>대형</td>
                <td class="text-left">그랜저 IG(휘)</td>
                <td>24,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>200원</td>
              </tr>
            
              <tr>
                <td>대형</td>
                <td class="text-left">K8</td>
                <td>25,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>190원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">베뉴(휘발유)</td>
                <td>10,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">올 뉴 투싼1.7</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">니로 하이브리드</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">티볼리 에어(디젤)</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">코나</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>170원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">스토닉</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>170원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">티볼리 아머(디젤)4WD</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">티볼리 아머(디젤)</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">스포티지 R2.0</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">티볼리 에어(디젤)4WD</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">티볼리 아머(휘)</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">스포티지 볼드</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">투싼1.6</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>150원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">셀토스1.6(디젤)</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>130원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">XM 3 1.6GTE</td>
                <td>17,200원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>170원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">트레일블레이저</td>
                <td>18,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>180원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">코나(하이브리드)</td>
                <td>18,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">더 뉴 코나(하이브리드)</td>
                <td>18,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>140원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">싼타페 TM</td>
                <td>21,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>220원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">쏘렌토 더 마스터</td>
                <td>21,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>220원</td>
              </tr>
            
              <tr>
                <td>SUV</td>
                <td class="text-left">G4 렉스턴</td>
                <td>29,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>220원</td>
              </tr>
            
              <tr>
                <td>승합</td>
                <td class="text-left">올뉴카니발(9인승)</td>
                <td>21,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>190원</td>
              </tr>
            
              <tr>
                <td>승합</td>
                <td class="text-left">카니발 4세대(9인승)</td>
                <td>23,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>170원</td>
              </tr>
            
              <tr>
                <td>전기차</td>
                <td class="text-left">쏘울(전기차)</td>
                <td>18,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>0원</td>
              </tr>
            
              <tr>
                <td>전기차</td>
                <td class="text-left">볼트(전기차)</td>
                <td>20,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>0원</td>
              </tr>
            
              <tr>
                <td>전기차</td>
                <td class="text-left">쏘울 부스터(전기차)</td>
                <td>20,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>0원</td>
              </tr>
            
              <tr>
                <td>전기차</td>
                <td class="text-left">코나(전기차)</td>
                <td>22,000원</td>
                <td></td>
                <td></td>
                <td></td>
                <td>0원</td>
              </tr>
            
            </tbody>
          </table>

          <div class="u-attention">
            <p class="tit"><span class="bul"></span>알려드립니다.</p>
            <ul>
              <li><span class="bul"></span>비수기/ 성수기에 따라 요금 정책이 변경되거나, 유가 변동에 따라 주행요금이 변경될 수 있습니다.</li>
              <li><span class="bul"></span>변경 전 공지사항을 통해 자세한 안내를 드리겠습니다.</li>
            </ul>
          </div>
        </div>
        <!-- //차종별 기본요금 -->

        <!-- 자동차 종합보험 -->
        <p>
        <br>
        </p>
        <div class="section-box">
          <div class="section-tit" style="margin-bottom:0;">
            <h3 class="page-tit" style="font-weight: bold;">자동차 종합보험</h3>
            <p class="page-dsc">라익카의 전 차량은 사고 발생 시,<br>자동차 종합보험(대인배상 무한 / 대물 배상 최대 1억원 / 자기신체사고 최대 1천5백만원)에 의거하여 보상해드립니다.</p>
          </div>
        </div>
        <!-- //자동차 종합보험 -->

        <!-- 차량손해 면책제도 -->
        <p>
        <br>
        </p>
        <div class="section-box">
          <div class="section-tit">
            <h3 class="page-tit" style="font-weight: bold;">차량손해 면책제도</h3>
            <p class="page-dsc">차량손해 면책제도란, 고객님의 과실에 의한 차량 사고 발생 시 선택하신 면책 상품의 한도 내에서 지불하시면 되는 제도입니다.<br>면책 상품에 대한 시간당 면책 보험료는 차량, 대여시간 등 예약 조건 및 회원님의 특성에 따라 유동적으로 산정됩니다.</p>
          </div>

          <table class="board-view2">
            <%-- <caption>차량손해 면책제도</caption> --%>
            <colgroup>
              <col style="width:19%;">
              <col style="width:27%;">
              <col style="width:27%;">
              <col style="width:27%;">
            </colgroup>
            <thead>
              <tr>
                <th scope="col" class="first">면책 상품</th>
                <th scope="col">자기부담금 5만원</th>
                <th scope="col">자기부담금 30만원</th>
                <th scope="col">자기부담금 70만원</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="first">면책 보험료</td>
                <td colspan="3" align="center">예약 조건에 따라 상이</td>
              </tr>
            </tbody>
          </table>

          <div class="u-attention">
            <p class="tit"><span class="bul"></span>알려드립니다.</p>
            <ul>
              <li><span class="bul"></span>사고 발생 미신고, 허위신고, 고객님의 고의적 파손이 확인된 경우 차량손해 면책제도를 적용받을 수 없습니다.<br>이 경우 차량 수리 비용 전액을 부담하셔야 하며 법적 조치가 진행됩니다.</li>
              <li><span class="bul"></span>차량 수리기간 동안의 영업손실에 대해, 기준 대여요금의 50%가 휴차보상료로 청구됩니다.<br>수리기간 또는 재구매 및 등록에 소요되는 기간에 따라 최대 30일분의 휴차보상료가 부과될 수 있습니다.</li>
              <li><span class="bul"></span><a href="#">차종별 휴차보상료 상세안내</a></li>
            </ul>
          </div>
        </div>
        <!-- //차종별 보험료 -->
      </div>
    </div>



  
  </div>
  <!-- // End #container -->




 <!-- ======= Footer ======= -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>