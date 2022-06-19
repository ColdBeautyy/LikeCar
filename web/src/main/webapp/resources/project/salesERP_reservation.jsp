<%@ page language="java" contentType="text/html; charset=utf-8"
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
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
 		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 		 		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/series-label.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		<style type="text/css">
		.highcharts-figure, .highcharts-data-table table {
 			 min-width: 360px; 
 			 max-width: 800px;
 			 margin: 1em auto;
		}

		.highcharts-data-table table {
			font-family: Verdana, sans-serif;
			border-collapse: collapse;
			border: 1px solid #EBEBEB;
			margin: 10px auto;
			text-align: center;
			width: 100%;
			max-width: 500px;
		}
		.highcharts-data-table caption {
		 	padding: 1em 0;
 			font-size: 1.2em;
 			color: #555;
		}
		.highcharts-data-table th {
			font-weight: 600;
 		 	padding: 0.5em;
		}
		.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
  			padding: 0.5em;
		}
		.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
  			background: #f8f8f8;
		}
		.highcharts-data-table tr:hover {
  			background: #f1f7ff;
		}
	</style>
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
                            <li class="breadcrumb-item"><a href="index.html">analysis</a></li>
                            <li class="breadcrumb-item active">reservation</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                               	<div class="container">
  									<form action="/web/inventory_search.do" method="POST" id="inventory_search">
									<div>
  										<label>검색 기간&nbsp;&nbsp;&nbsp;</label>
   										<label class="radio-inline">
   									 		<input type="radio" name="date_radio" value="all" disabled="disabled">&nbsp;전체&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="date_radio" value="select" checked="checked">&nbsp;선택&nbsp;&nbsp;&nbsp;
										</label>
    								</div>
  									<div id="data_option">
  										<label>기간 선택&nbsp;&nbsp;&nbsp;</label>
										<input type="datetime-local" id="start_date" name="start_date">
										&nbsp;&nbsp;-&nbsp;&nbsp;
										<input type="datetime-local" id="end_date" name="end_date">
									</div>
    								<hr>
    								<div>
  										<label>기간 기준&nbsp;&nbsp;&nbsp;</label>
   										<label class="radio-inline">
   									 		<input type="radio" name="date_standard_radio" value="day">&nbsp;일간&nbsp;&nbsp;&nbsp;
    									</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="date_standard_radio" value="month">&nbsp;월간평균&nbsp;&nbsp;&nbsp;
    									</label>
   									 	<label class="radio-inline">
   									   		<input type="radio" name="date_standard_radio" value="year" checked="checked">&nbsp;연간평균&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
    								<div>
  										<label>분석 대상&nbsp;&nbsp;&nbsp;</label>
   										<label class="radio-inline">
   									 		<input type="radio" name="age_radio" value="all" disabled="disabled">&nbsp;전체&nbsp;&nbsp;&nbsp;
   									 		<input type="radio" name="age_radio" value="twenty" checked="checked">&nbsp;20대 이하&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="age_radio" value="thirty">&nbsp;30대&nbsp;&nbsp;&nbsp;
										</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="age_radio" value="fourty">&nbsp;40대&nbsp;&nbsp;&nbsp;
										</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="age_radio" value="fifty">&nbsp;50대&nbsp;&nbsp;&nbsp;
										</label>
  									 	<label class="radio-inline">
   									  		<input type="radio" name="age_radio" value="sixty">&nbsp;60대 이상&nbsp;&nbsp;&nbsp;
										</label>
    								</div>
    								<hr>
    								<div>
  										<label>비교 대상&nbsp;&nbsp;&nbsp;</label>
   										<label class="radio-inline">
   									 		<input type="checkbox" name="compare_checkbox" value="twenty">&nbsp;20대 이하&nbsp;&nbsp;&nbsp;
    									</label>
  									 	<label class="radio-inline">
   									  		<input type="checkbox" name="compare_checkbox" value="thirty">&nbsp;30대&nbsp;&nbsp;&nbsp;
										</label>
   									 	<label class="radio-inline">
   									   		<input type="checkbox" name="compare_checkbox" value="fourty">&nbsp;40대&nbsp;&nbsp;&nbsp;
    									</label>
   									 	<label class="radio-inline">
   									   		<input type="checkbox" name="compare_checkbox" value="fifty">&nbsp;50대&nbsp;&nbsp;&nbsp;
    									</label>
   									 	<label class="radio-inline">
   									   		<input type="checkbox" name="compare_checkbox" value="sixty">&nbsp;60대 이상&nbsp;&nbsp;&nbsp;
    									</label>
    								</div>
    								<hr>
	                    			<div class="input-group">
                 				   		<input class="form-control" type="text" id="searchText" placeholder="Click right button for searching... " aria-label="Search" aria-describedby="basic-addon2" readonly="readonly"/>
                 				   		<div class="input-group-append">
                    			    		<button class="btn btn-primary" type="button" id="searchBtn"><i class="fas fa-search"></i></button>
                				    	</div>
                					</div>
								  </form>
								</div>
                            </div>
                        </div>
                        
                        
                        
                        <div class="card-header">
                        	<i class="fas fa-chart-area mr-1"></i>
                        	분석 결과(Chart)
                        </div>
                        <figure class="highcharts-figure">
  							<div id="container"></div>
						</figure>
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
        		$("input[type='datetime-local']").blur(function(){
					if(($("#start_date").val()!='' && $("#end_date").val()!='') && $("#start_date").val()>=$("#end_date").val()){
						alert('기간 설정 에러');
						$("#start_date").val("");
						$("#end_date").val("");
					}
				});
				
				$("input[name='date_radio']").click(function(){
					if($(this).val()=='all'){
						$("div#data_option").hide(1000);
					}
					else if($(this).val()=='select'){
						$("div#data_option").show(1000);
					}
				});
				
				$("button#searchBtn").click(function(){
					var temp="";
					$("input[name='compare_checkbox']:checked").each(function(){
						temp+=$(this).val()+" ";
					});
					$.ajax({
						url:'/web/reservationChartAction.do',
						type:'POST',
						dataType:'script',
						contentType:'application/x-www-form-urlencoded;charset=UTF-8',
	    				data:{
	    					date_type:$("input[name='date_radio']:checked").val(),
	    					start_date:$("#start_date").val(),
	    					end_date:$("#end_date").val(),
	    					date_standard:$("input[name='date_standard_radio']:checked").val(),
	    					compare_age:temp,
	    					select_age:$("input[name='age_radio']:checked").val(),
	    					//keyword:$("#searchText").val()
	    				},
						success:function(v){
							console.log(v)
						},
						error:function(){
							alert('error occurred!');
						}
					});
				});
        	
        	});
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>