<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>

		Highcharts.chart('container', {

			  title: {
			    text: '연령대별 예약 분석 차트 in ${start_date}~${end_date}'
			  },

			  subtitle: {
			    text: 'Item : reservation'
			  },

			  yAxis: {
			    title: {
			      text: '예약 수'
			    }
			  },

			  xAxis: {
			    accessibility: {
			      rangeDescription: 'Range: ${start_date} to ${end_date}'
			    }
			  },

			  legend: {
			    layout: 'vertical',
			    align: 'right',
			    verticalAlign: 'middle'
			  },

			  plotOptions: {
			    series: {
			      label: {
			        connectorAllowed: false
			      },
			      pointStart: ${start_date}
			    }
			  },

			  series: [
			  <c:forEach var="i" items="${map}" varStatus="cnt">
			  <c:choose>
			  	<c:when test="${cnt.count eq function:length(map)}">
			  		{
			  			name: "${i.key}",
			    		data: [
			    		<c:forEach var="date" items="${date_collection}" varStatus="cntcnt">
							<c:choose>
								<c:when test="${cntcnt.count eq function:length(date_collection)}">
									${i.value[date]}
								</c:when>
								<c:otherwise>
									${i.value[date]},
								</c:otherwise>
							</c:choose>
			    		</c:forEach>
			    		]
			  		}
			  	</c:when>
			  	<c:otherwise>
			  		{
			  			name: "${i.key}",
			    		data: [
			    		<c:forEach var="date" items="${date_collection}" varStatus="cntcnt">
							<c:choose>
								<c:when test="${cntcnt.count eq function:length(date_collection)}">
									${i.value[date]}
								</c:when>
								<c:otherwise>
									${i.value[date]},
								</c:otherwise>
							</c:choose>
			    		</c:forEach>
			    		]
			  		},
			  	</c:otherwise>
			  </c:choose>
			  </c:forEach>
			  ],

			  responsive: {
			    rules: [{
			      condition: {
			        maxWidth: 500
			      },
			      chartOptions: {
			        legend: {
			          layout: 'horizontal',
			          align: 'center',
			          verticalAlign: 'bottom'
			        }
			      }
			    }]
			  }
		});