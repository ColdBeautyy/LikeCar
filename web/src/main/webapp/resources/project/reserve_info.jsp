<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">

  <title>make a reservation</title>
 
<!-- jquery -->
   <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   
<!-- bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="/web/resources/assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="/web/resources/assets/css/default.css" rel="stylesheet" type="text/css" />


   <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
form#frm{
margin-left: 500px;
}
</style>
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
   <script type="text/javascript">

   $(function(){
      // 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
      $('#carousel-example-generic').carousel({
      // 슬리아딩 자동 순환 지연 시간
      // false면 자동 순환하지 않는다.
      interval: 2000,
      // hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
      pause: "hover",
      // 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
      wrap: true,
      // 키보드 이벤트 설정 여부(?)
      keyboard : true
      });
      $("button#submit").click(function(){
    	  var flag = false;
    	    $("input[id='cb2']").each( function () {
    	        if (this.checked) {
    	            flag = !flag; 
    	            return false;
    	        }
    	    });

    	    if (!flag) {
    	        alert("기본 보험은 꼭 선택하셔야 합니다.");
    	        return false;
    	    }
    	  
    	  
    	  
    	 $("form#frm").submit(); 
      });
      });



    </script>
	<script type="text/javascript">
	
	  function rentalSum(frm){
		  var couponCheck = document.getElementById("coupon").value;
		  var coupon_discount = 0;
		//console.log(couponCheck);
	    var start_date = document.getElementById("car_start_date").value;
		var end_date = document.getElementById("car_end_date").value;
		var car_end_date=new Date(end_date);
	    var car_start_date=new Date(start_date);
	    var gap_date= ((car_end_date - car_start_date)/(1000*60*60)); //hour
	 //   console.log(car_start_date);	
	 //   console.log(typeof(1000*60*60)+" "+1000*60*60); 
	 	  console.log(gap_date+" "+car_end_date+" "+car_start_date+" ");
		  
 	    var rental_sum = 0;
		var car_size = document.getElementById("car_size").value;
		var car_name = document.getElementById("car_name").value;
		console.log(car_name+'car_name');
		   switch (car_name) {
		case '2020아반떼':
			rental_sum=3000+(9500 * gap_date);
			break;
		case '2021소나타':
			rental_sum=4500+(13000 * gap_date);
			break;
		case 'bmw-x7':
			rental_sum=7000+(19000 * gap_date);
			break;

		default:
			break;
		} 
		
		   switch (couponCheck) {
			case 'coupon10%':
				rental_sum = rental_sum * 0.9;
				coupon_discount = -(rental_sum * 0.1);
				break;
			case 'coupon20%':
				rental_sum = rental_sum * 0.9;
				coupon_discount = -(rental_sum * 0.2);
				break;
			case 'coupon30%':
				rental_sum = rental_sum * 0.7;
				coupon_discount = -(rental_sum * 0.3);
				break;
			
			default:
				rental_sum = rental_sum * 1;
				coupon_discount = 0;
				break;
			}
		   
		   
	  // console.log(rental_sum+" "+coupon_discount);
   	   var option_sum = 0;
   	   var premium_sum = 0;
	   var total_sum = 0 ;
	   
	   
   	   for(var i=0; i < frm.option.length; i++ ){
   	       if( frm.option[i].checked == true ){
   	    	option_sum+= parseInt(frm.option[i].value);
   	       }
   	   }
   	   
   	   
   	   for(var i=0; i < frm.premium.length; i++ ){
   	    if(frm.premium[i].checked == true){
   		premium_sum += parseInt(frm.premium[i].value);
   	    }//if 
   	   }//for  
   	   frm.rental_price.value=rental_sum;
 	   frm.premium_price.value=premium_sum;
   	   frm.option_price.value = option_sum;
   	   total_sum = premium_sum + option_sum + rental_sum; 
   	   frm.coupon_discount.value=coupon_discount; 
   	   frm.total_price.value=total_sum;
     }
	  
	  

	  
	   
	</script>

<style type="text/css">

    
section#section{
width:100%;
display: flex;
position: sticky;
}

div#slider{
width: 50%;
color: black;
margin-left: 0px;
}
div#frm{
width:48%;
}
/* section#section1{
width:100%;
display: flex;
position: sticky;
}
div#fulloption{
margin-left: 150px;
width: 50%;
margin-top: 50px;
}
div#sum{
width: 50%;
margin-right: 0px;
margin-left:250px;
} */

form#formdata{
 float:left;
}
fieldset#field{
border: 1px solid black;
width: 80%;
}
div#reserve{
margin-right: 130px;
}
.cb{
margin-bottom: 30px;
}
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
   <jsp:include page="/resources/project/header.jsp"></jsp:include> 


  <!-- ========Body=========== -->
  



 <div class="container">
<%--  ${list }
 ${car_start_date }
 ${car_end_date } --%>
  <h2>< ${list.reserve_carListBean.car_name }></h2>
  <p>Highlights, Space, Convenience,Driving</p>            
  
 
   
   
   
<section id="section">
<div id="slider">
<div id="carousel-example-generic" class="carousel slide" >
<ol class="carousel-indicators">
<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="3" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="4" class="active"></li>
</ol>


<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="/web/resources/assets/img/carimage/${list.reserve_carListBean.car_filename1}">
<div class="carousel-caption">
</div>
</div>

<div></div>
<div class="item">
<img src="/web/resources/assets/img/carimage/${list.reserve_carListBean.car_filename2}">
<div class="carousel-caption">
</div>
</div>

<div class="item">
<img src="/web/resources/assets/img/carimage/${list.reserve_carListBean.car_filename3}">
<div class="carousel-caption">
</div>
</div>

<div class="item">
<img src="/web/resources/assets/img/carimage/${list.reserve_carListBean.car_filename4}">
<div class="carousel-caption">
</div>
</div>

<div class="item">
<img src="/web/resources/assets/img/carimage/${list.reserve_carListBean.car_filename5}">
<div class="carousel-caption">
</div>
</div>
</div>
</div>
</div>



<div id="frm" align="center">

					<table class="bbsList">
						<colgroup>
							<col width="100" />
                            <col width="200" />
                            <col width="" />
						</colgroup>
						<tr>	
                             <th scope="col" align="center">차량 번호</th>
                             <td>${list.car_no }</td>
                        </tr> 
						<tr>	
                             <th scope="col" align="center">차량이름</th>
                             <td>${list.reserve_carListBean.car_name}</td>
                        </tr>
                        <tr> 
                          <th scope="col" align="center">그린카여부</th>
                          <td>${list.reserve_carListBean.car_type}</td>
                        </tr>
                        <tr>
                          <th scope="col" align="center">차량 사이즈</th>
                          <td>${list.reserve_carListBean.car_size}</td>
                        </tr>
                        <tr>
                          <th scope="col" align="center">연료</th>
                          <td>${list.reserve_carListBean.car_energy }</td>
                        </tr>
                        <tr>
                          <th scope="col" align="center">차량 가용인원</th>
                          <td>${list.reserve_carListBean.boardable_count}</td>
                        </tr>
                        <tr>
                          <th scope="col" align="center">차량 입고일</th>
                          <td>${list.start_date }</td>
                        </tr>
                        <tr>
                          <th scope="col" align="center">차량 출고일</th>
                          <td>${list.end_date }</td>
                        </tr>    
                        <tr>
                          <th scope="col" align="center">렌트 시작일</th>
                          <td>${car_start_date }</td>
                        </tr>  
                        <tr>
                          <th scope="col" align="center">렌트 종료일</th>
                          <td>${car_end_date }</td>
                        </tr>                      
					</table>
					
				</div>
			</div>
    </section>

    <section id="section1">


 <div class="row">
 	<div class="span8">
 		<div class="row">
 			<div class="span4">
 			
 			<br><br>
	<span style="float: left;">
  <form id="frm" action="/web/secondReserve.do" method="post">
	<div id="fulloption">
	
   	<input name="option" type="checkbox" id="cb1" class="cb" value="1000" onclick="rentalSum(this.form)">
    <label for="cb1"><h3>Navigation +1000</h3></label>
	<br>
    <input name="option" type="checkbox" id="cb3" class="cb" value="500" onclick="rentalSum(this.form)">
    <label for="cb3"><h3 al>Radio +500</h3></label>
   <br>
    <input name="option" type="checkbox" id="cb4" class="cb" value="700" onclick="rentalSum(this.form)">
    <label for="cb4"> <h3>Bluetooth +700</h3></label>
   <br>   
    <input name="premium" type="checkbox" id="cb2" class="cb" value="5000" onclick="rentalSum(this.form)">
    <label for="cb2"><h3>Basic insurance +5000</h3></label>
  <br><input name="premium" type="checkbox" id="cb5" class="cb" value="10000" onclick="rentalSum(this.form)">
	<label for="cb5"><h3>add expensive insurance +10000</h3></label>
    <br>  
  </div>
   </span>
 			</div>
			<div class="span4">
			 <span style="float: right;">
	<div id="sum">
	
   <div id="selectcoupon">
   <br><br>
   
   <select class="coupon" onchange="rentalSum(this.form)" id="coupon">
   	<option class="coupon" value="" selected="selected">coupon</option>
   	<option class="coupon" value="coupon10%">create event 10%</option>
   	<option class="coupon" value="coupon20%">create event 20%</option>
   	<option class="coupon" value="coupon30%">create event 30%</option>
   </select><br>
   	</div>
		<fieldset id="field"><br><br>
		<input type="hidden" value="${car_end_date	}" id="car_end_date" name="car_end_date">
		<input type="hidden" value="${car_start_date	}" id="car_start_date" name="car_start_date">
		<input type="hidden" value="${list.reserve_carListBean.car_size	}" id="car_size" name="car_size">
		<input type="hidden" value="${list.reserve_carListBean.car_name	}" id="car_name" name="car_name">
		<input type="hidden" value="${list.car_no }" id="car_no"  name="car_no">
		<input type="hidden" value="${list.res_no }" id="res_no"  name="res_no">
		<input type="hidden" value="${list.reserve_carListBean.car_type}" id="car_type" name="car_type">
		<input type="hidden" value="${list.reserve_carListBean.car_energy }" id="car_energy"  name="car_energy">
		<input type="hidden" value="${list.reserve_carListBean.boardable_count}" id="boardable_count"  name="boardable_count">
		<input type="hidden" value="${list.start_date }" id="start_date" name="start_date">
		<input type="hidden" value="${list.end_date }" id="end_date" name="end_date">
		
      <input class="op1" type="text" value="rental Fee  " readonly="readonly" size="15"> :
      <input class="op1" type="text" name="rental_price" value="" readonly="readonly" size="15" lang="${list.reserve_carListBean.car_name}"> 
      <br><br>
      <input class="op1" type="text" value="premium"readonly="readonly" size="15"> :
      <input class="op1" type="text" value="" name="premium_price" readonly="readonly" size="15">
      <br><br>
      <input class="op1" type="text" value="Coupon discount" readonly="readonly" size="15"> :
      <input class="op1" type="text" value="-0" name="coupon_discount" readonly="readonly" size="15">
      <br><br>
      <input class="op1" type="text" value="Option usage price" readonly="readonly" size="15"> :
      <input class="op1" type="text" value="" name="option_price" readonly="readonly" size="15">
      <h5><a href="#" style="color: black">like car 이용안내</a></h5><br>
      <input class="op1" type="text" value="total_price" readonly="readonly" size="15"> :
      <input class="op1" type="text" value="" name="total_price"  readonly="readonly" size="15">
      <br><br>
      </fieldset>
  </div>
  </span>
 </section> 
			</form>
			
			</div>
 		</div>
 	</div>
 </div>

	
	<div align="right" id="reserve">	
 <button type="button" class="btn btn-secondary" id="submit">reserve</button>
	</div>

	
	
</body>
  

   
   
   
   
   
   
   
   
   
   
   
   
   <br>
   <br>   
   <br>   
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   
   <br>
   
   


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