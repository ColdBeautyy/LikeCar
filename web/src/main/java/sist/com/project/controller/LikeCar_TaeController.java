package sist.com.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.project.bean.AdminErpBean;
import sist.com.project.bean.FsBean;
import sist.com.project.bean.InscomBean;
import sist.com.project.bean.InventoryBean;
import sist.com.project.bean.MemberErpBean;
import sist.com.project.bean.OperationBean;
import sist.com.project.bean.ReservationErpBean;
import sist.com.project.bean.RevcomBean;
import sist.com.project.dao.ErpDao;
import sist.com.project.dao.ReserveDao;

@Controller
public class LikeCar_TaeController {
	@Resource(name="erpDao")
	private ErpDao erpDao;
	@Resource(name="reserveDao")
	private ReserveDao reserveDao;
	
	@RequestMapping(value="inventoryListAction.do")
	public String inventoryListAction(Model model) {
		List<InventoryBean>list=erpDao.getInventoryAllList();
		model.addAttribute("list", makingTable(list));
		return "/resources/project/inventoryERP_cars";
	}
	
	public String makingTable(List<InventoryBean>list) {
		String temp="";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr id='tr"+list.get(i).getCar_no()+"'>";
			temp+="<th>"+list.get(i).getCar_no()+"</th>";		
			temp+="<th>"+list.get(i).getCar_name()+"</th>";		
			temp+="<th>"+list.get(i).getCar_type()+"</th>";		
			temp+="<th>"+list.get(i).getCar_size()+"</th>";		
			temp+="<th>"+list.get(i).getCar_energy()+"</th>";		
			temp+="<th>"+list.get(i).getPurchase_from()+"</th>";		
			temp+="<th>"+list.get(i).getPurchase_date()+"</th>";		
			temp+="<th>"+list.get(i).getPurchase_cost()+"</th>";		
			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:modAction("+list.get(i).getCar_no()+")'>MOD</a></span>&nbsp;&nbsp;";
			temp+="<span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:delAction("+list.get(i).getCar_no()+")'>&nbsp;DEL&nbsp;</a></span></th>";
			temp+="</tr>";
		}
		return temp;
	}
	
	@PostMapping(value="operationChartAction.do")
	public String operationChartAction(Model model,
			@RequestParam(value="date_type", defaultValue="all")String date_type,
			@RequestParam(value="start_date", required=false)String start_date,
			@RequestParam(value="end_date", required=false)String end_date,
			@RequestParam(value="date_standard", defaultValue="all")String date_standard,
			@RequestParam(value="compare_model",required=false)String compare_model,
			@RequestParam(value="select_model", defaultValue="all")String select_model,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("date_type", date_type);
		if(date_type.equals("select")) {
			start_date=start_date.split("T")[0];
			end_date=end_date.split("T")[0];
			map.put("start_date", start_date.replace("-", "/"));
			map.put("end_date", end_date.replace("-", "/"));
			map.put("date_collection", makingDateList(start_date, end_date, date_standard));
		}
		map.put("date_standard", date_standard);
		String[] compare_models=compare_model.split(" ");
		map.put("compare_models", compare_models);
		map.put("select_model", select_model);
		map.put("keyword", keyword);
		
		ArrayList<String>dateList=makingDateList(start_date, end_date, date_standard);
		HashMap<String, List<OperationBean>>list=erpDao.getOperationList(map);
		HashMap<String, HashMap<String, Double>>hopeMap=new HashMap<String, HashMap<String, Double>>();
		Iterator<Entry<String, List<OperationBean>>>i=list.entrySet().iterator();
		
		while(i.hasNext()) {
			Entry<String, List<OperationBean>>entry=i.next();
			String tempKey=entry.getKey();
			List<OperationBean>tempList=entry.getValue();
			HashMap<String, Double>tempMap=new HashMap<String, Double>();
			for (int j = 0; j < tempList.size(); j++) {
				OperationBean tempBean=tempList.get(j);
				tempMap.put(tempBean.getStandard_date(), tempBean.getRate());
			}
			for (int j = 0; j < dateList.size(); j++) {
				if(!tempMap.containsKey(dateList.get(j))) {
					tempMap.put(dateList.get(j), 0.0);
				}
			}
			hopeMap.put(tempKey, tempMap);
		}
		
		model.addAttribute("start_date", dateList.get(0));
		model.addAttribute("end_date", dateList.get(dateList.size()-1));
		model.addAttribute("date_collection", dateList);
		model.addAttribute("map", hopeMap);
		
		return "/resources/assets/chart/operationChart";
	}
	
	public ArrayList<String> makingDateList(String start_date, String end_date, String date_standard){
		ArrayList<String>list=new ArrayList<String>();
		String startDt=start_date.replaceAll("-", "");
		int endDt=Integer.parseInt(end_date.replaceAll("-", ""));
		
		int startYear = Integer.parseInt(startDt.substring(0,4));
        int startMonth= Integer.parseInt(startDt.substring(4,6));
        int startDate = Integer.parseInt(startDt.substring(6,8));
 
        Calendar cal = Calendar.getInstance();
        cal.set(startYear, startMonth -1, startDate);
        switch (date_standard) {
		case "day":
			list.add(new SimpleDateFormat("yyyy/MM/dd").format(cal.getTime()));
			break;
		case "month":
			list.add(new SimpleDateFormat("yyyy/MM").format(cal.getTime()));
			break;
		case "year":
			list.add(new SimpleDateFormat("yyyy").format(cal.getTime()));
			break;
		default:
			break;
		}
        
        while(true) {
            switch (date_standard) {
			case "day":
				cal.add(Calendar.DATE, 1);
				if(getDateByInteger(cal.getTime()) > endDt) break;
				list.add(new SimpleDateFormat("yyyy/MM/dd").format(cal.getTime()));
				break;
			case "month":
				endDt=Integer.parseInt(String.valueOf(endDt).substring(0, 6).concat("31"));
				cal.add(Calendar.MONTH, 1);
				if(getDateByInteger(cal.getTime()) > endDt) break;
				list.add(new SimpleDateFormat("yyyy/MM").format(cal.getTime()));
				break;
			case "year":
				endDt=Integer.parseInt(String.valueOf(endDt).substring(0, 4).concat("1231"));
				cal.add(Calendar.YEAR, 1);
				if(getDateByInteger(cal.getTime()) > endDt) break;
				list.add(new SimpleDateFormat("yyyy").format(cal.getTime()));
				break;
			default:
				break;
			}
            if(getDateByInteger(cal.getTime()) > endDt) break;
        }
    
		return list;
	}
	public int getDateByInteger(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return Integer.parseInt(sdf.format(date));
	}
		
	public String getDateByString(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		return sdf.format(date);
	}
	
	@PostMapping(value="reservationChartAction.do")
	public String reservationChartAction(Model model,
			@RequestParam(value="date_type", defaultValue="all")String date_type,
			@RequestParam(value="start_date", required=false)String start_date,
			@RequestParam(value="end_date", required=false)String end_date,
			@RequestParam(value="date_standard", defaultValue="all")String date_standard,
			@RequestParam(value="compare_age",required=false)String compare_age,
			@RequestParam(value="select_age", defaultValue="all")String select_age) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("date_type", date_type);
		start_date=start_date.split("T")[0];
		end_date=end_date.split("T")[0];
		map.put("start_date", start_date.replace("-", "/"));
		map.put("end_date", end_date.replace("-", "/"));
		
		ArrayList<String>dateList=makingDateList(start_date, end_date, date_standard);
		for (int j = 0; j < dateList.size(); j++) {
			String temp=dateList.get(j).replace("/", ".");
			dateList.remove(j);
			dateList.add(j, temp);
		}
		map.put("date_collection", dateList);
		map.put("date_standard", date_standard);
		String[] compare_ages=compare_age.split(" ");
		map.put("compare_ages", compare_ages);
		map.put("select_age", select_age);
		
		HashMap<String, List<ReservationErpBean>>list=erpDao.getReservationAgeList(map);
		System.out.println("list: "+list);
		HashMap<String, HashMap<String, Integer>>hopeMap=new HashMap<String, HashMap<String, Integer>>();
		Iterator<Entry<String, List<ReservationErpBean>>>i=list.entrySet().iterator();
		
		while(i.hasNext()) {
			Entry<String, List<ReservationErpBean>>entry=i.next();
			String tempKey=entry.getKey();
			List<ReservationErpBean>tempList=entry.getValue();
			HashMap<String, Integer>tempMap=new HashMap<String, Integer>();
			for (int j = 0; j < tempList.size(); j++) {
				ReservationErpBean tempBean=tempList.get(j);
				tempMap.put(tempBean.getStandard_date(), tempBean.getCount());
			}
			for (int j = 0; j < dateList.size(); j++) {
				if(!tempMap.containsKey(dateList.get(j))) {
					tempMap.put(dateList.get(j), 0);
				}
			}
			hopeMap.put(tempKey, tempMap);
		}
		
		model.addAttribute("start_date", dateList.get(0));
		model.addAttribute("end_date", dateList.get(dateList.size()-1));
		model.addAttribute("date_collection", dateList);
		model.addAttribute("map", hopeMap);
		
		return "/resources/assets/chart/reservationChart";
	}
	
	@RequestMapping(value="accountSummaryAction.do")
	public String accountSummaryAction(Model model) {
		String today=new SimpleDateFormat("yyyy/MM/dd").format(System.currentTimeMillis());
		List<FsBean>list=erpDao.getSummaryData(today);
		String temp="<div class=\"card mb-4\"><div class=\"card-header\"><i class=\"fas fa-table mr-1\"></i>금일 거래</div><div class=\"card-body\"><div class=\"table-responsive\">";
		temp+="<table class=\"table table-bordered\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\">";
		temp+="<thead><tr><th>거래시간</th><th>분류</th><th>계정과목</th><th>계상액</th></tr></thead>";
		temp+="<tfoot><tr><th>거래시간</th><th>분류</th><th>계정과목</th><th>계상액</th></tr></tfoot><tbody>";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr><th>"+list.get(i).getAcc_date()+"</th>";
			temp+="<th>"+list.get(i).getAcc_type()+"</th>";
			temp+="<th>"+list.get(i).getAcc_name()+"</th>";
			temp+="<th>"+String.valueOf(list.get(i).getAcc_value())+"</th></tr>";
		}
		temp+="</tbody></table></div></div></div>";
		model.addAttribute("today", today);
		model.addAttribute("list", temp);
		return "/resources/project/accountERP_summary";
	}
	
	@RequestMapping(value="erpIndexAction.do")
	public String erpIndexAction(Model model){
		int qna=0;
		int reservation=erpDao.selectReserveCount();
		
		String today=new SimpleDateFormat("yyyy/MM/dd").format(System.currentTimeMillis());
		List<FsBean>list=erpDao.getSummaryData(today);
		int revenue=0;
		int expense=0;
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getAcc_type().equals("수익"))
				revenue+=list.get(i).getAcc_value();
			else if(list.get(i).getAcc_type().equals("비용"))
				expense+=list.get(i).getAcc_value();
		}
		System.out.println(reservation);
		model.addAttribute("qna", qna);
		model.addAttribute("reservation", reservation);
		model.addAttribute("revenue", revenue);
		model.addAttribute("expense", expense);
		return "/resources/project/indexERP";
	}
	
	@RequestMapping(value="payment.do")
	public String paymentListERP(Model model) {
		model.addAttribute("list",reserveDao.reserveCompleteListAll());
		return "/resources/project/reservationERP";
	}
	
	@RequestMapping(value="memberListAction.do")
	public String memberListAction(Model model) {
		List<MemberErpBean>list=erpDao.getMemberDataList();
		model.addAttribute("list", makingMemberTable(list));
		return "/resources/project/memberERP";
	}
	
	public String makingMemberTable(List<MemberErpBean>list) {
		String temp="";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr id='tr"+list.get(i).getMem_no()+"'>";
			temp+="<th>"+list.get(i).getMem_no()+"</th>";		
			temp+="<th>"+list.get(i).getMem_name()+"</th>";		
			temp+="<th>"+list.get(i).getMem_id()+"</th>";		
			temp+="<th>"+list.get(i).getMem_pw()+"</th>";		
			temp+="<th>"+list.get(i).getMem_tel()+"</th>";		
			temp+="<th>"+list.get(i).getPoint()+"</th>";		
			temp+="<th>"+list.get(i).getVip_no()+"</th>";		
			temp+="<th>"+list.get(i).getLic_no()+"</th>";		
			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:modAction("+list.get(i).getMem_no()+")'>MOD</a></span>&nbsp;&nbsp;";
			temp+="<span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:delAction("+list.get(i).getMem_no()+")'>&nbsp;DEL&nbsp;</a></span></th>";
			temp+="</tr>";
		}
		return temp;
	}
	
	@RequestMapping(value="adminListAction.do")
	public String adminListAction(Model model) {
		List<AdminErpBean>list=erpDao.getAdminDataList();
		model.addAttribute("list", makingAdminTable(list));
		return "/resources/project/adminERP";
	}
	
	public String makingAdminTable(List<AdminErpBean>list) {
		String temp="";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr id='tr"+list.get(i).getEmp_no()+"'>";
			temp+="<th>"+list.get(i).getEmp_no()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_name()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_id()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_pw()+"</th>";		
			temp+="<th>"+list.get(i).getDeptno()+"</th>";		
			temp+="<th>"+list.get(i).getPosition()+"</th>";		
			temp+="<th>"+list.get(i).getHiredate()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_comtel()+"</th>";		
			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:modAction("+list.get(i).getEmp_no()+")'>MOD</a></span>&nbsp;&nbsp;";
			temp+="<span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:delAction("+list.get(i).getEmp_no()+")'>&nbsp;DEL&nbsp;</a></span></th>";
			temp+="</tr>";
		}
		return temp;
	}
	
	@RequestMapping(value="revcomListAction.do")
	public String revcomListAction(Model model) {
		List<RevcomBean>list=erpDao.getRevcomDataList();
		model.addAttribute("list", makingRevcomTable(list));
		return "/resources/project/partnerERP_rev";
	}
	
	public String makingRevcomTable(List<RevcomBean>list) {
		String temp="";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr id='tr"+list.get(i).getRevcom_no()+"'>";
			temp+="<th>"+list.get(i).getRevcom_no()+"</th>";		
			temp+="<th>"+list.get(i).getRevcom_name()+"</th>";		
			temp+="<th>"+list.get(i).getRevcom_charge()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_name()+"</th>";		
			temp+="<th>"+list.get(i).getRevcom_start()+"</th>";		
			temp+="<th>"+list.get(i).getRevcom_end()+"</th>";		
			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:modAction("+list.get(i).getRevcom_no()+")'>MOD</a></span>&nbsp;&nbsp;";
			temp+="<span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:delAction("+list.get(i).getRevcom_no()+")'>&nbsp;DEL&nbsp;</a></span></th>";
			temp+="</tr>";
		}
		return temp;
	}
	
	@RequestMapping(value="inscomListAction.do")
	public String inscomListAction(Model model) {
		List<InscomBean>list=erpDao.getInscomDataList();
		model.addAttribute("list", makingInscomTable(list));
		return "/resources/project/partnerERP_ins";
	}
	
	public String makingInscomTable(List<InscomBean>list) {
		String temp="";
		for (int i = 0; i < list.size(); i++) {
			temp+="<tr id='tr"+list.get(i).getInscom_no()+"'>";
			temp+="<th>"+list.get(i).getInscom_no()+"</th>";		
			temp+="<th>"+list.get(i).getInscom_name()+"</th>";		
			temp+="<th>"+list.get(i).getInscom_charge()+"</th>";		
			temp+="<th>"+list.get(i).getEmp_name()+"</th>";		
			temp+="<th>"+list.get(i).getInscom_start()+"</th>";		
			temp+="<th>"+list.get(i).getInscom_end()+"</th>";		
			temp+="<th><span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:modAction("+list.get(i).getInscom_no()+")'>MOD</a></span>&nbsp;&nbsp;";
			temp+="<span style='background-color:black; padding:5px;'><a style='color:white; text-decoration:none' href='javascript:delAction("+list.get(i).getInscom_no()+")'>&nbsp;DEL&nbsp;</a></span></th>";
			temp+="</tr>";
		}
		return temp;
	}
	
	
}
