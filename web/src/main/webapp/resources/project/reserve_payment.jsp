<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
      <!--  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/web/resourses/assets/js/scripts.js"></script>
        
           
         <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/web/resources/assets/chart/datatables-demo.js"></script>

<head>   
       <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>LikeCar Customer</title>
        <link href="/web/resources/assets/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- jquery -->
  
<!-- bootstrap -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="/web/resources/assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


   <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
 
  <script type="text/javascript">
  function callFunction(){
	 var id='<%=(String)session.getAttribute("id")%>';
	 if(id == 'admin'){
		  document.location.href='/web/payment.do';
	  }else{
		  alert('관리자만 이용할수 있습니다');
		  return false;
	  } 
	  
  }
  
  
  </script>


<style type="text/css">

</style>
</head>
<body>



  <!-- ======= Header ======= -->
   <jsp:include page="header.jsp"></jsp:include> 


  <!-- ========Body=========== -->
   
 <body class="sb-nav-fixed"    >

              <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Costomer Reservation</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">inventory ERP</a></li>
                            <li class="breadcrumb-item active">cars</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                  <div class="container">
                             <h2>차량 예약확인 페이지</h2>
                             <p>select conditions from below selections:</p>
                             
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
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                    <th>예약번호</th>
                                    <th>차량 번호</th>
                                    <th>차량 명</th>
                                    <th>예약자 명</th>
                                    <th>차량 크기</th>
                                    <th>차량 가용인원</th>
                                    <th>차량 타입</th>
                                    <th>차량 연료</th>            
                                    <th>인수예정일</th>
                                    <th>반납 예정일</th>
                                    <th>총 가격</th>
                                    <th>사용될 옵션</th>
                                    <th>보험 가입가격</th>
                                    <th>이용 상태</th>
                                 </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                    <th>예약번호</th>
                                    <th>차량 번호</th>
                                    <th>차량 명</th>
                                    <th>예약자 명</th>
                                    <th>차량 크기</th>
                                    <th>차량 가용인원</th>
                                    <th>차량 타입</th>
                                    <th>차량 연료</th>            
                                    <th>인수예정일</th>
                                    <th>반납 예정일</th>
                                    <th>총 가격</th>
                                    <th>사용될 옵션</th>
                                    <th>보험 가입가격</th>
                                    <th>이용 상태</th>
                                 </tr>
                                        </tfoot>
                                        <tbody>
                             
                                  <c:forEach var="i"  items="${list }" varStatus="num">   
                                 <tr>         
                                    <th scope="row"><a href="javascript:callFunction(this)">${i.res_no }</a></th>
                                    <td>${i.car_no }</td>
                                    <td>${i.car_name }</td>
                                    <td>${i.reserve_name }</td>
                                    <td>${i.car_size }</td>
                                    <td>${i.boardable_count }</td>
                                    <td>${i.car_type }</td>
                                    <td>${i.car_energy }</td>
                                    <td>${i.car_start_date }</td>
                                    <td>${i.car_end_date }</td>
                                    <td>${i.total_price }</td>
                                    <td>${i.option_value }</td>
                                    <td>${i.premium_price }</td>
                                    <td>${i.state }</td>
                                 </tr>
                                 </c:forEach>  	
                                           
                              
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
    
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