<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<c:choose>
   <c:when test="${id eq '' or id eq null}">
      <c:redirect url="/resources/project/login.jsp"></c:redirect>
   </c:when>
   <c:otherwise>
          <c:out value="${id }님 반갑습니다."></c:out>
   </c:otherwise>
</c:choose>
		
  		 <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>    
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
         <script src="/web/resources/assets/js/scripts.js"></script>

           
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/web/resources/assets/chart/datatables-demo.js"></script>

<head>   
       <meta charset="utf-8" />
      
        <title>LikeCar AdminPage</title>
         <link href="/web/resources/assets/css/styles.css" rel="stylesheet" /> 
         <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" /> 

<!-- 합쳐지고 최소화된 최신 CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> 

<!-- 부가적인 테마 -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> 

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
   <!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  --> 
  <script>
 
  
        $(document).ready(function (){    
     
      var table = $('#dataTable').DataTable();
      table.destroy();
      $('#start_date, #end_date').change( function() {
          table.draw();
      });
        $('#dataTable').DataTable({ 	
        		ajax:{
        			url:'/web/selectListCar.do',
        			type:'get',
        			dataType:'json',         			
        		},
        		columns:[
        			{data:"car_no"},
        			{data:"reserve_carListBean.car_name"},
        			{data:"reserve_carListBean.car_type"},
        			{data:"reserve_carListBean.car_size"},
        			{data:"reserve_carListBean.car_energy"},
        			{data:"reserve_carListBean.boardable_count"},
        			{data:"start_date"},
        			{data:"end_date"}  			
        		],
        		columnDefs : [{
                	"targets" : 0
                	,"data" : null
                	,"render" : function (data,type,row,meta){
                		return '<input type="checkbox" name="checked_name" value="'+data+'">';
                	}
                }],
        	 });//datatables 
        $("button#nextPage").click(function(){
        	var rowData =new Array();
   			var tdArr = new Array();
   		 	var checkbox = $("input:checkbox[name='checked_name']:checked");
   		 
        	
        	
        	if($("input[name='checked_name']:checkbox:checked").length>=2){
        	alert('차량은 한대만 선택가능합니다.');
        	return false;
        	}
      	   if($("input[name='car_start_date']").val().length==0 || $("input[name='car_start_date']").val()=='' ||
      	   $("input[name='car_end_date']").val().length==0   || $("input[name='car_end_date']").val()==''	 ){
             alert('예약기간은 꼭  정해야합니다');
      	   return false;
      	   }
      	   if($("input:checkbox[name='checked_name']").is(":checked") == false){
      	   alert('한 차량 이상은 꼭 선택하셔야 합니다');
      	   return false; 
      	   } 
      	   
      	 checkbox.each(function(i){
 			var tr = checkbox.parent().parent().eq(i);
 			var td = tr.children();
 			
 			rowData.push(tr.text());
 			var car_start_date = $("input[name='car_start_date']").val();
 			var car_end_date = $("input[name='car_end_date']").val();
 			var start_date = td.eq(6).text();
 			var end_date = td.eq(7).text();
 			/* console.log(
 		    "car_Start_date = " + car_start_date +
 			"car_end_Date = " +car_end_date +  
 			"start_date = "+ start_date +
 			"end_date=" +end_date
 			); */
 			if(start_date > car_start_date){
 				alert('아직 차량이 입고되지 않았습니다. ');
 				return false;
 			}else if(end_date < car_end_date ){
 				alert('출고날짜 이전에 반납하셔야합니다.');
 				return false;
 			}else if(car_start_date > car_end_date){
 				alert('대여날짜는 반납날짜보다 이전일 이여야 합니다  ');
 				return false;
 			}else if(car_start_date < start_date < end_date < car_end_date){
 				alert('대여기간이 재고상황과 맞지않습니다');
 				return false;
 			}else if(start_date <  car_start_date && car_end_date < end_date && car_start_date < car_end_date){
 				//alert('성공');
 				document.location.href='/web/firstReserve.do?no='+$('input[type="checkbox"]:checked').val()+'&car_start_date='+$("input[name='car_start_date']").val()+'&car_end_date='+$("input[name='car_end_date']").val();
 				return true;
 			}else{
 				alert('error');
 				return false;
 			}
 			
 		 }); 
        });
        	 

       
        });
          
           
    </script>

   <script type="text/javascript">
   
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
<%--  <jsp:include page="header.jsp"></jsp:include> --%>


  <!-- ========Body=========== -->
 <body class="sb-nav-fixed"    >

              
       
             
       			<br>
       			<br>
       			<br>
       			<br>
           
				<main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Search your choice Car!</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">inventory ERP</a></li>
                            <li class="breadcrumb-item active">cars</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                  <div class="container">
                            	 <h2>Car list</h2>
 								 <p>Find the vehicle you want and board!</p>   
                             <div class="input-group">
                   				<label for="from">From</label><br>
                   				 <input id="search_from" type="datetime-local"  name="car_start_date" value="${car_start_date }" >
               				 </div>
             			     <div class="input-group">
              			  	   <label for="to">to</label><br>
              		           <input id="search_to" type="datetime-local" name="car_end_date"  value="${car_end_date }" >
               				 </div>
                             
                        </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                     예약 목록
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
   		<!-- 	 <form id="frm"> -->

				<table class="table table-bordered" id="dataTable">
                                        <thead>
                                  <tr>
                                    <th scope="col"><input type="checkbox">select</th>
                                    <th>차량 이름</th>
                                    <th>그린 카 여부</th>
                                    <th>차량 크기</th>
                                    <th>차량 연료</th>
                                    <th>차량 가용인원</th>
                                    <th>차량 입고일</th>
                                    <th>차량 출고일</th>
                                  </tr>
                                        </thead>
                                        <tfoot>
                                  <tr>
                                    <th scope="col"><input type="checkbox">select</th>
                                    <th>차량 이름</th>
                                    <th>그린 카 여부</th>
                                    <th>차량 크기</th>
                                    <th>차량 연료</th>
                                    <th>차량 가용인원</th>
                                    <th>차량 입고일</th>
                                    <th>차량 출고일</th>
                                  </tr>
                                        </tfoot>
                                  
                                    </table>
                            	  </div>
                            </div>
                        </div>
                    </div>
                </main>
    
    </body>
                                    


  <div align="right">
 <button type="button" class="btn btn-light" id="nextPage">reserve</button>
 </div>
</div>
    </form>


  



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