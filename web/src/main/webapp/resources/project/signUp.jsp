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
     
     

   <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script type="text/javascript">
   function idCheck(){
      window.open("/web/resources/project/idcheck.jsp","idCheck","left=100,top=200,width=397.5px,height=281.5px"); //경로,팝업이름,옵션
   }
   function basicOption(){
      //비밀번호 일치 확인
      $("input#pwCheck").blur(function(){
         if($("input#pwOri").val()==$("input#pwCheck").val()){
            $("input#password").val($("input#pwCheck").val());            
         }else{
            $("font#pw").html("비밀번호를 확인해주세요");
            $("input#pwOri").val('');
            $("input#pwCheck").val('');
            $("input#pwOri").focus();
         }
      });
      //이름 형식 확인
      $("input#name").blur(function(){
         if(!isNaN($("input#name").val())){            
            $("font#name").html("문자형식으로 입력해주세요");
            $("input#name").val('');
            $("input#name").focus();
         }
      });         
      //전화번호 길이값,입력값 확인
      $("input#tel").blur(function(){
         if($("input#tel").val().split('-')[0].length<2 
               ||$("input#tel").val().split('-')[0].lenght>3
               ||isNaN($("input#tel").val().split('-')[0])){
            $("font#tel").html('전화번호 형식을 확인해주세요');
            $("input#tel").val('');
         }
         if($("input#tel").val().split('-')[1].length<3 
               ||$("input#tel").val().val().split('-')[1].lenght>4
               ||isNaN($("input#tel").val().split('-')[1])){
            $("font#tel").html('전화번호 형식을 확인해주세요');
            $("input#tel").val('');
         }
         if($("input#tel").val().split('-')[2].length!=4
               ||isNaN($("input#tel").val().split('-')[2])){
            $("font#tel").html('전화번호 형식을 확인해주세요');
            $("input#tel").val('');
         }
      }); 
      //생일 길이값,입력값 확인
      $("input#birth").blur(function(){
         if($("input#birth").val().split('/')[0].length!=4
               ||isNaN($("input#birth").val().split('/')[0])){
            $("font#birth").html('생년월일 형식을 확인해주세요');
            $("input#birth").val('');
         }
         if($("input#birth").val().split('/')[1].length<1 
               ||$("input#birth").val().val().split('/')[1].lenght>2
               ||isNaN($("input#birth").val().split('/')[1])){
            $("font#birth").html('생년월일 형식을 확인해주세요');
            $("input#birth").val('');
         }
         if($("input#birth").val().split('-')[2].length<1
               ||$("input#birth").val().val().split('/')[2].lenght>2
               ||isNaN($("input#birth").val().split('/')[2])){
            $("font#birth").html('생년월일 형식을 확인해주세요');
            $("input#birth").val('');
         }
      }); 

   }
   function licenceOption(){      
      //등록일 길이값,입력값 확인
      $("input#enroll_date").blur(function(){
         if($("input#enroll_date").val().split('/')[0].length!=4
               ||isNaN($("input#enroll_date").val().split('/')[0])){
            $("font#enroll_date").html('등록일 형식을 확인해주세요');
            $("input#enroll_date").val('');
         }
         if($("input#enroll_date").val().split('/')[1].length<1 
               ||$("input#enroll_date").val().val().split('/')[1].lenght>2
               ||isNaN($("input#enroll_date").val().split('/')[1])){
            $("font#enroll_date").html('등록일 형식을 확인해주세요');
            $("input#enroll_date").val('');
         }
         if($("input#enroll_date").val().split('-')[2].length<1
               ||$("input#enroll_date").val().val().split('/')[2].lenght>2
               ||isNaN($("input#enroll_date").val().split('/')[2])){
            $("font#enroll_date").html('등록일 형식을 확인해주세요');
            $("input#enroll_date").val('');
         }
      }); 
      //만료일 길이값,입력값 확인
      $("input#expire_date").blur(function(){
         if($("input#expire_date").val().split('/')[0].length!=4
               ||isNaN($("input#expire_date").val().split('/')[0])){
            $("font#expire_date").html('만료일 형식을 확인해주세요');
            $("input#expire_date").val('');
         }
         if($("input#expire_date").val().split('/')[1].length<1 
               ||$("input#expire_date").val().val().split('/')[1].lenght>2
               ||isNaN($("input#expire_date").val().split('/')[1])){
            $("font#expire_date").html('만료일 형식을 확인해주세요');
            $("input#expire_date").val('');
         }
         if($("input#expire_date").val().split('-')[2].length<1
               ||$("input#expire_date").val().val().split('/')[2].lenght>2
               ||isNaN($("input#expire_date").val().split('/')[2])){
            $("font#expire_date").html('만료일 형식을 확인해주세요');
            $("input#expire_date").val('');
         }
      }); 
      //주소 확인
      $("input#address").blur(function(){
         if(!isNaN($("input#address").val())){            
            $("font#address").html("문자형식으로 입력해주세요");
            $("input#address").val('');
            $("input#address").focus();
         }
      });
   }
   function creditOption(){
      //카드사 형식 확인
      $("input[name='card_cp']").blur(function(){
         if(!isNaN($("input[name='card_cp']").val())){            
            $("font#card_cp").html("문자형식으로 입력해주세요");
            $("input[name='card_cp']").val('');
            $("input[name='card_cp']").focus();
         }
      });
      //카드번호 길이값,입력값 확인
      $("input[name='card_num1']").keyup(function(){
         if($("input[name='card_num1']").val().length>=4){
            $("input[name='card_num2']").focus();
         }         
         if($("input[name='card_num1']").val().length>4){
            $("input[name='card_num1']").val('');
         }
      });
      $("input[name='card_num2']").keyup(function(){
         if($("input[name='card_num2']").val().length>=4){
            $("input[name='card_num3']").focus();
         }         
         if($("input[name='card_num2']").val().length>4){
            $("input[name='card_num2']").val('');
         }
      });
      $("input[name='card_num3']").keyup(function(){
         if($("input[name='card_num3']").val().length>=4){
            $("input[name='card_num4']").focus();
         }         
         if($("input[name='card_num3']").val().length>4){
            $("input[name='card_num3']").val('');
         }
      });
      $("input[name='card_num4']").keyup(function(){
         if($("input[name='card_num4']").val().length>=4){
            $("input[name='card_cvc']").focus();
         }
      });
      $("input[name='card_num4']").blur(function(){
         if(isNaN($("input[name='card_num1']").val()) || isNaN($("input[name='card_num2']").val()) 
               || isNaN($("input[name='card_num3']").val()) || isNaN($("input[name='card_num4']").val())){            
            $("font#card_num").html("숫자형식으로 입력해주세요");
            $("input[name='card_num1']").val('');
            $("input[name='card_num2']").val('');
            $("input[name='card_num3']").val('');
            $("input[name='card_num4']").val('');
            $("input[name='card_num1']").focus();
         }
         if($("input[name='card_num1']").val().length<4 || $("input[name='card_num2']").val().length<4 
               || $("input[name='card_num3']").val().length<4 || $("input[name='card_num4']").val().length<4){            
            $("font#card_num").html("카드번호형식에 맞게 입력해주세요");
            $("input[name='card_num1']").val('');
            $("input[name='card_num2']").val('');
            $("input[name='card_num3']").val('');
            $("input[name='card_num4']").val('');
            $("input[name='card_num1']").focus();
         }
         $("input#card_num").val($("input[name='card_num1']").val()+"-"+$("input[name='card_num2']").val()+"-"+$("input[name='card_num3']").val()+"-"+$("input[name='card_num4']").val());
      });
      //cvc 길이값, 입력값 확인
      $("input[name='card_cvc']").keyup(function(){
         if($("input[name='card_cvc']").val().length>=3){
            $("input[name='card_cvc']").blur();
         }         
         if($("input[name='card_cvc']").val().length>3){
            $("input[name='card_cvc']").val('');
         }
      });
      $("input[name='card_cvc']").blur(function(){
         if(isNaN($("input[name='card_cvc']").val())){            
            $("font#card_cvc").html("숫자형식으로 입력해주세요");
            $("input[name='card_cvc']").val('');
            $("input[name='card_cvc']").focus();
         }
         if($("input[name='card_cvc']").val().length<3){            
            $("font#card_cvc").html("카드번호형식에 맞게 입력해주세요");
            $("input[name='card_cvc']").val('');
            $("input[name='card_cvc']").focus();
         }
      });
      //만료일 길이값,입력값 확인
      $("input#card_expire_date").blur(function(){
         if($("input#card_expire_date").val().split('/')[0].length!=4
               ||isNaN($("input#card_expire_date").val().split('/')[0])){
            $("font#card_expire_date").html('만료일 형식을 확인해주세요');
            $("input#card_expire_date").val('');
         }
         if($("input#card_expire_date").val().split('/')[1].length<1 
               ||$("input#card_expire_date").val().val().split('/')[1].lenght>2
               ||isNaN($("input#card_expire_date").val().split('/')[1])){
            $("font#card_expire_date").html('만료일 형식을 확인해주세요');
            $("input#card_expire_date").val('');
         }
         if($("input#card_expire_date").val().split('-')[2].length<1
               ||$("input#card_expire_date").val().val().split('/')[2].lenght>2
               ||isNaN($("input#card_expire_date").val().split('/')[2])){
            $("font#card_expire_date").html('만료일 형식을 확인해주세요');
            $("input#card_expire_date").val('');
         }
      }); 
      //카드 비밀번호 길이값, 입력값 확인
      $("input[name='card_pw']").keyup(function(){
         if($("input[name='card_pw']").val().length>=2){
            $("input[name='card_pw']").blur();
         }         
         if($("input[name='card_pw']").val().length>2){
            $("input[name='card_pw']").val('');
         }
      });
      $("input[name='card_pw']").blur(function(){
         if(isNaN($("input[name='card_pw']").val())){            
            $("font#card_pw").html("숫자형식으로 입력해주세요");
            $("input[name='card_pw']").val('');
            $("input[name='card_pw']").focus();
         }
         if($("input[name='card_pw']").val().length<2){            
            $("font#card_pw").html("카드번호형식에 맞게 입력해주세요");
            $("input[name='card_pw']").focus();
         }
      });
   }
   function initpage(){
      $("div#licence").hide();
      $("div#credit").hide();
   }
   function licencepage(){
      $("div#basic").hide();
      $("div#credit").hide();
      $("div#licence").show();
      
   }
   function creditpage(){
      $("div#basic").hide();
      $("div#licence").hide();
      $("div#credit").show();
      
   }
   $(function(){
       $("button#basic").click(function(){
         if($("input#id").val()==''||$("input#password").val()==''||$("input#name").val()==''||$("input#tel").val()==''||$("input#birth").val()==''){
            alert('양식을 입력해주세요');
            return false;
         }
         $("form[name='signupfrm']").submit();
      });
      $("button#licence").click(function(){
         if($("input#lic_no").val()==''||$("select#type").val()==''||$("select#type").val()=='선택하세요'||$("input#enroll_date").val()==''||$("input#expire_date").val()==''||$("input#address").val()==''){
            alert('양식을 입력해주세요');
            return false;
         }
         $("form[name='licencefrm']").submit();
      });
      $("button#credit").click(function(){
         if($("input#card_cp").val()==''||$("input#card_num").val()==''||$("input#card_cvc").val()==''||$("input#card_expire_date").val()==''||$("input#card_pw").val()==''){
            alert('양식을 입력해주세요');
            return false;
         }
         $("form[name='creditfrm']").submit();
      }); 
      if('${job}'==''){         
         initpage();
      }
      basicOption();
      if('${job}'!='' && '${job}'=='licence'){
         licencepage();
      }
      licenceOption();
      if('${job}'!='' && '${job}'=='credit'){
         creditpage();
      }
      creditOption();
   });   
   </script>
   <style type="text/css">
   label {
      padding-top: 30px;
      text-align: left;
   }
   </style>
   
</head>

<body>
<!-- ======= Header ======= -->
 <jsp:include page="header.jsp"></jsp:include>

     <main id="main" >
       <!-- ======= Breadcrumbs ======= -->
        <!-- <section class="breadcrumbs">
         <div class="container">

           <div class="d-flex justify-content-between align-items-center">
             <h2 >SIGN UP</h2>
           </div>

         </div>
       </section> --><!-- End Breadcrumbs -->
 
       <section class="inner-page" style="margin-bottom: 50px;">
 <div class="container-fluid" id="grad1">
  <div class="row justify-content-center mt-0">
   <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2">
    <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
      <h2>Sign Up Your User Account</h2>
      <c:choose>
         <c:when test="${job eq null or job eq'' }">
         <div><img class="form-control" style="border-style: none;" alt="" src="/web/resources/assets/img/progress1.jpg"></div>
         </c:when>
         <c:when test="${job ne '' and job eq 'licence' }">
         <div><img class="form-control" style="border-style: none;" alt="" src="/web/resources/assets/img/progress2.jpg"></div>
         </c:when>
         <c:when test="${job ne '' and job eq 'credit' }">
         <div><img class="form-control" style="border-style: none;" alt="" src="/web/resources/assets/img/progress3.jpg"></div>
         </c:when>
      </c:choose>
     <div class="row">
      <div class="col-md-12 mx-0">

         <div id="basic" style="margin: 20px; align-items: center;">
           <p>기본정보 입력</p><hr>
           <form action="/web/signUpBasic.do" name="signupfrm" method="post">
              <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>이메일</label>
                       <input id="id" type="text" name="mem_id" placeholder="example@likecar.com" class="form-control" readonly="readonly"/>
                       <br><input type="button" value="ID CHECK" onclick="idCheck()"class="form-control" style="background: #03C4EB; color: white;" />
                       <br><span><font color="red"></font></span>
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>비밀번호</label>
                       <input type="password" id="pwOri" class="form-control" placeholder="8~15자리 영문/숫자/특수문자 조합"/>
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>비밀번호 확인</label>
                       <input type="password" id="pwCheck" class="form-control" placeholder="비밀번호 확인"/>
                       <input id="password" type="hidden" class="form-control" name="mem_pw"/><br><span><font color="red" id="pw"></font></span>
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>이름</label>
                       <input id="name" type="text" class="form-control" name="mem_name"/><br><span><font color="red" id="name"></font></span>
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>전화번호</label>
                       <input id="tel" type="text" name="mem_tel" class="form-control" placeholder="000-0000-0000"/><br><span><font color="red" id="tel"></font></span>
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>생년월일</label>
                       <input id="birth" type="text" name="mem_birth" class="form-control" placeholder="0000/00/00"/><br><span><font color="red" id="birth"></font></span>
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <button id="basic" class="form-control" style="border-color: #03C4EB; color: #03C4EB; margin-top: 50px; margin-bottom: 20px;" type="button">Submit</button>
                    </div>
               </div>
            </div>
            
           </form><hr>
         </div>
         <div id="licence" style="margin: 20px;">
           <p>면허정보 입력</p><hr>
           <form action="/web/signUpLicence.do" name="licencefrm" method="post">
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>면허번호</label>
                       <input type="text" id="lic_no" name="lic_no" class="form-control"/>
                       <br><span><font color="red"></font></span>               
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>면허유형</label>
                     <select id="type" name="type" class="form-control">                       
                          <option value="선택하세요" selected="selected">선택하세요</option>
                          <option value="1종 대형">1종 대형</option>
                          <option value="1종 보통">1종 보통</option>
                          <option value="1종 소형">1종 소형</option>
                          <option value="1종 특수">1종 특수</option>
                          <option value="2종 보통">2종 보통</option>
                          <option value="2종 소형">2종 소형</option>
                       </select>
                     <br><span><font color="red" id="type"></font></span>            
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>면허 등록일</label>
                       <input id="enroll_date" type="text" name="enroll_date" class="form-control" placeholder="0000/00/00"/>
                       <br><span><font color="red" id="enroll_date"></font></span>   
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>면허 만기일</label>
                       <input id="expire_date" type="text" name="expire_date" class="form-control" placeholder="0000/00/00"/>
                       <br><span><font color="red" id="expire_date"></font></span>   
                  </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>주소</label>
                       <input type="text" id="address" name="address" class="form-control">
                       <br><span><font color="red" id="address"></font></span>
                   </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                     <button id="licence" class="form-control" style="border-color: #03C4EB; color: #03C4EB; margin-top: 50px; margin-bottom: 20px;" type="button">Submit</button>
                  </div>
               </div>
            </div>
           </form><hr>
        </div>
         <div id="credit" style="margin: 20px;">
           <p>결제카드 등록</p><hr>
           <form action="/web/signUpCredit.do" name="creditfrm" method="post">
              <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <label>카드사</label>
                       <input type="text" id="card_cp" name="card_cp" class="form-control">                
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>카드번호</label><br>
                       <input type="text" name="card_num1" style="width: 120px">                 
                       <input type="password" name="card_num2" style="width: 120px" >
                       <input type="password" name="card_num3" style="width: 120px" >
                       <input type="text" name="card_num4" style="width: 120px" >           
                       <input id="card_num" type="hidden" name="card_num"/>
                       <br><span><font color="red" id="card_num"></font></span>      
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>CVC</label>
                       <input type="password" id="card_cvc" name="card_cvc" class="form-control" placeholder="카드 뒤 3자리">
                       <br><span><font color="red" id="card_cvc"></font></span>   
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>카드 만료일</label>
                       <input id="card_expire_date" type="text" name="card_expire_date" class="form-control" placeholder="0000/00/00"/>
                       <br><span><font color="red" id="card_expire_date"></font></span>   
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                    <label>카드 비밀번호</label>
                       <input type="password" id="card_pw" name="card_pw"   class="form-control" placeholder="비밀번호 앞 2자리">
                       <br><span><font color="red" id="card_pw"></font></span>
                    </div>
               </div>
            </div>
            <div class="row" style="margin-left: 70px">
               <div class="col-md-10">
                  <div class="form-group">
                       <button id="credit" class="form-control" style="border-color: #03C4EB; color: #03C4EB; margin-top: 50px; margin-bottom: 20px;" type="button">Submit</button>
                    </div>
               </div>
            </div>
           </form><hr>
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