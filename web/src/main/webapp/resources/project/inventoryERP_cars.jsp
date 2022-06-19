<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>LikeCar Admin</title>
        <link href="/web/resources/assets/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="/web/erpIndexAction.do">LikeCar</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#!" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                </li>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#!">Settings</a>
                    <a class="dropdown-item" href="#!">Activity Log</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="login.html">Logout</a>
                </div>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="/web/erpIndexAction.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                	Index
                            </a>
                            <div class="sb-sidenav-menu-heading">Contents</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                	ERP
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#homepageERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	홈페이지관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="homepageERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="javascript:alert('미구현')">문의현황</a>
                                            <a class="nav-link" href="javascript:alert('미구현')">답변관리</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#reserveERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	예약/결제관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="reserveERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/payment.do">결제대기목록</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#customerERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	고객관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="customerERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/memberListAction.do">회원계정</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#hrERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	인사관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="hrERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/adminListAction.do">직원계정</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#partnerERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	제휴사관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="partnerERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/revcomListAction.do">정비제휴사</a>
                                            <a class="nav-link" href="/web/inscomListAction.do">보험제휴사</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#inventoryERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	재고관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="inventoryERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/inventoryListAction.do">차량관리</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#accountERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	매출관리
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="accountERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/resources/project/accountERP_reports.jsp">재무제표</a>
                                            <a class="nav-link" href="/web/accountSummaryAction.do">회계요약</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#salesERP" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                    	영업분석
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="salesERP" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="/web/resources/project/salesERP_operation.jsp">가동률 분석</a>
                                            <a class="nav-link" href="/web/resources/project/salesERP_reservation.jsp">예약 상황</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        ${sessionScope.id}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">ERP</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">inventory</a></li>
                            <li class="breadcrumb-item active">cars</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                               	<div class="container">
  									<form action="/web/inventory_search.do" method="POST" id="inventory_search">
									 <div>
   										<label class="radio-inline">
   									 		<input type="radio" name="car_type_radio" value="all" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="car_type_radio" value="normal">&nbsp;일반차&nbsp;&nbsp;&nbsp;
										</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="car_type_radio" value="green">&nbsp;나눔카&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
    								<div>
   										<label class="radio-inline">
   									 		<input type="radio" name="car_size_radio" value="all" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="car_size_radio" value="small">&nbsp;소형차&nbsp;&nbsp;&nbsp;
										</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="car_size_radio" value="medium">&nbsp;중형차&nbsp;&nbsp;&nbsp;
    									</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="car_size_radio" value="large">&nbsp;대형차&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
    								<div>
   										<label class="radio-inline">
   									 		<input type="radio" name="car_energy_radio" value="all" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="car_energy_radio" value="gasolin">&nbsp;휘발유&nbsp;&nbsp;&nbsp;
										</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="car_energy_radio" value="dissel">&nbsp;경유&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
    								<div>
   										<label class="radio-inline">
   									 		<input type="radio" name="car_release_radio" value="all" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="car_release_radio" value="1">&nbsp;출고 중&nbsp;&nbsp;&nbsp;
										</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="car_release_radio" value="0">&nbsp;출고 대기&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
    								<div class="form-group">
  										<label for="sel1">Attr:</label>
 										 <select class="form-control" id="attr" name="attr">
  										   <option value="all" selected="selected">선택하세요</option>
 										   <option value="C.CAR_NAME">차종</option>
 										   <option value="C.CAR_NO">차 번호</option>
  										   <option value="C.PURCHASE_FROM">입고 출처</option>
 										 </select>
									 </div>
    								<hr>
               				 		<div class="input-group">
                 				   <input class="form-control" type="text" id="searchText" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2"/>
                 				   <div class="input-group-append">
                    			    <button class="btn btn-primary" type="button" id="searchBtn"><i class="fas fa-search"></i></button>
                				    </div>
                					</div>
								  </form>
								</div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                               		차량 목록
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>차 번호</th>
                                                <th>차종</th>
                                                <th>차 종류</th>
                                                <th>차 크기</th>
                                                <th>차 에너지원</th>
                                                <th>입고 출처</th>
                                                <th>입고일자</th>
                                                <th>취득원가</th>
                                                <th>추가기능</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>차 번호</th>
                                                <th>차종</th>
                                                <th>차 종류</th>
                                                <th>차 크기</th>
                                                <th>차 에너지원</th>
                                                <th>입고 출처</th>
                                                <th>입고일자</th>
                                                <th>취득원가</th>
                                                <th>추가기능</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                        	${list}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
       <!--  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->
        <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script type="text/javascript">
        	$(function(){
        		$("button#searchBtn").click(function(){
        			//alert('button clicked!'+$("input#searchText").val()+$("input[name='car_energy_radio']:checked").val());
        			$.ajax({
        				url:'/web/inventorySearchAction.do',
        				type:'POST',
        				dataType:'text',
        				contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        				data:{
        					type:$("input[name='car_type_radio']:checked").val(),
        					size:$("input[name='car_size_radio']:checked").val(),
        					energy:$("input[name='car_energy_radio']:checked").val(),
        					release:$("input[name='car_release_radio']:checked").val(),
        					attr:$("select#attr").val(),
        					keyword:$("input#searchText").val().length==0?'':$("input#searchText").val()
        				},
        				success:function(v){
        					$("tbody").html(v);
        				},
        				error:function(){
        					alert('error occurred!');
        				}
        			});
        		});
        	});
        	function modAction(no){
        		alert('수정할 항목만 기입해주세요');
        		var temp="";
        		temp+="<th><input type='text' size='9px' name='car_no' value='"+no+"' readonly='readonly'></th>";		
    			temp+="<th><input type='text' size='9px' name='car_name'></th>";		
    			temp+="<th><input type='text' size='9px' name='car_type'></th>";		
    			temp+="<th><input type='text' size='9px' name='car_size'></th>";		
    			temp+="<th><input type='text' size='9px' name='car_energy'></th>";		
    			temp+="<th><input type='text' size='9px' name='purchase_from'></th>";		
    			temp+="<th><input type='text' size='9px' name='purchase_date'></th>";		
    			temp+="<th><input type='text' size='9px' name='purchase_cost'></th>";		
    			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:finAction("+no+")'>Submit</a></span></th>";
        		$("tr#tr"+no).html(temp);
        	}
        	function finAction(no){
        		$.ajax({
    				url:'/web/inventoryModAction.do',
    				type:'POST',
    				dataType:'text',
    				contentType:'application/x-www-form-urlencoded;charset=UTF-8',
    				data:{
    					car_no:$("input[name='car_no']").val(),
    					car_name:$("input[name='car_name']").val(),
    					car_type:$("input[name='car_type']").val(),
    					car_size:$("input[name='car_size']").val(),
    					car_energy:$("input[name='car_energy']").val(),
    					purchase_from:$("input[name='purchase_from']").val(),
    					purchase_date:$("input[name='purchase_date']").val(),
    					purchase_cost:$("input[name='purchase_cost']").val()
    				},
    				success:function(v){
    					alert("수정 완료");
    					$("tbody").html(v);
    				},
    				error:function(){
    					alert('error occurred!');
    				}
    			});
        	}
        	function delAction(no){
        		$.ajax({
    				url:'/web/inventoryDelAction.do',
    				type:'POST',
    				dataType:'text',
    				contentType:'application/x-www-form-urlencoded;charset=UTF-8',
    				data:{
    					no:no
    				},
    				success:function(v){
    					alert("삭제 완료");
    					$("tbody").html(v);
    				},
    				error:function(){
    					alert('error occurred!');
    				}
    			});
        	}
        </script>
        <script src="" crossorigin="anonymous"></script>
        <script src="/web/resources/assets/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        
        <!-- 이게 테이블검색/테이블페이징과 관련된 bootStrap Javascript -->
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="/web/resources/assets/chart/datatables-demo.js"></script>
    </body>
</html>