package sist.com.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import sist.com.project.bean.AdminErpBean;
import sist.com.project.bean.FsBean;
import sist.com.project.bean.FsDataBean;
import sist.com.project.bean.InscomBean;
import sist.com.project.bean.InventoryBean;
import sist.com.project.bean.MemberErpBean;
import sist.com.project.bean.RevcomBean;
import sist.com.project.dao.ErpDao;

@RestController
public class LikeCar_TaeRestController {
	@Resource(name="erpDao")
	private ErpDao erpDao;
	
	@PostMapping(value="inventorySearchAction.do", produces="application/text; charset=utf-8")
	public String inventorySearchAction(
			@RequestParam(value="type", required=false, defaultValue="all")String type,
			@RequestParam(value="size", required=false, defaultValue="all")String size,
			@RequestParam(value="energy", required=false, defaultValue="all")String energy,
			@RequestParam(value="release", required=false, defaultValue="all")String release,
			@RequestParam(value="attr", required=false, defaultValue="all")String attr,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("car_type", type);
		map.put("car_size", size);
		map.put("car_energy", energy);
		map.put("release", release);
		map.put("attr", attr);
		map.put("keyword", keyword);
		List<InventoryBean>list=erpDao.getInventoryList(map);
		return makingTable(list);
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
	
	@PostMapping(value="inventoryModAction.do", produces="application/text; charset=utf-8")
	public String inventoryModAction(
			@RequestParam(value="car_no")String car_no,
			@RequestParam(value="car_name", required=false, defaultValue="")String car_name,
			@RequestParam(value="car_type", required=false, defaultValue="")String car_type,
			@RequestParam(value="car_size", required=false, defaultValue="")String car_size,
			@RequestParam(value="car_energy", required=false, defaultValue="")String car_energy,
			@RequestParam(value="purchase_from", required=false, defaultValue="")String purchase_from,
			@RequestParam(value="purchase_date", required=false, defaultValue="")String purchase_date,
			@RequestParam(value="purchase_cost", required=false, defaultValue="")String purchase_cost){
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("car_no", car_no);
		map.put("car_name", car_name);
		map.put("car_type", car_type);
		map.put("car_size", car_size);
		map.put("car_energy", car_energy);
		map.put("purchase_from", purchase_from);
		map.put("purchase_date", purchase_date);
		map.put("purchase_cost", purchase_cost);
		erpDao.updateInventoryList(map);
		return makingTable(erpDao.getInventoryAllList());
	}
	
	@PostMapping(value="inventoryDelAction.do", produces="application/text; charset=utf-8")
	public String inventoryDelAction(@RequestParam(value="no")int no) {
		erpDao.deleteInventoryList(no);
		return makingTable(erpDao.getInventoryAllList());
	}
	
	@PostMapping(value="reportSearchAction.do", produces="application/text; charset=utf-8")
	public String reportSearchAction(
			@RequestParam(value="type", defaultValue="year")String fiscal_type,
			@RequestParam(value="year")int year,
			@RequestParam(value="month", required=false)int month,
			@RequestParam(value="fs")String fs_type) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("fiscal_type", fiscal_type);
		String date=String.valueOf(year);
		if(fiscal_type.equals("month")) {
			map.put("month", month);
			date+="."+String.valueOf(month);
		}
		
		map.put("year", year);
		map.put("fs_type", fs_type);
		if(fs_type.equals("bs")) {
			return makingFs(processingFs(erpDao.getFsReportData(map), date));
		} else if(fs_type.equals("is")) {
			return makingIs(erpDao.getFsReportData(map), date);
		}
		return "error";
	}
	
	public List<FsDataBean> processingFs(List<FsBean>list, String date){
		List<FsDataBean>newList=new ArrayList<FsDataBean>();
		String[]fsList= {"토지","건물","건물감가상각누계액","장기차입금","자본금","예수금","현금","이익잉여금","이월결손금"};
		String[]fsTypeList= {"자산","자산","자산","부채","자본","부채","자산","자본","자본"};
		int[]sum=new int[6];
		
		for (int i = 0; i < fsList.length; i++) {
			int current=0;
			int last=0;
			FsDataBean bean=new FsDataBean();
			for (int j = 0; j < list.size(); j++) {
				if(fsList[i].equals(list.get(j).getAcc_name()) && Double.parseDouble(date)>=Double.parseDouble(list.get(j).getAcc_date().substring(0, 6).replace('/', '.')))
					current+=list.get(j).getAcc_value();
				if(fsList[i].equals(list.get(j).getAcc_name()) && Double.parseDouble(date)-1>=Double.parseDouble(list.get(j).getAcc_date().substring(0, 6).replace('/', '.')))
					last+=list.get(j).getAcc_value();
			}
			switch (fsTypeList[i]) {
			case "자산":
				sum[0]+=current;
				sum[1]+=last;
				break;
			case "부채":
				sum[2]+=current;
				sum[3]+=last;
				break;
			case "자본":
				sum[4]+=current;
				sum[5]+=last;
				break;
			default:
				break;
			}
			newList.add(new FsDataBean(fsTypeList[i], fsList[i], current, last, current-last));
		}
		newList.add(new FsDataBean("합계", "자산", sum[0], sum[1], sum[0]-sum[1]));
		newList.add(new FsDataBean("합계", "부채", sum[2], sum[3], sum[2]-sum[3]));
		newList.add(new FsDataBean("합계", "자본", sum[4], sum[5], sum[4]-sum[5]));
		return newList;
	}
	
	public String makingFs(List<FsDataBean>list) {
		String temp="<br>";
		String[] typeList= {"자산","부채","자본"};
		for (int i = 0; i < typeList.length; i++) {
			temp+="<div class=\"card mb-4\">";
			temp+="<div class=\"card-header\"><i class=\"fas fa-table mr-1\"></i>"+typeList[i]+"</div>";
			temp+="<div class=\"card-body\"><div class=\"table-responsive\"><table class=\"table table-bordered\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\">";
			temp+="<thead><tr><th>계정과목</th><th>기준연도</th><th>비교연도</th><th>차이</th></tr></thead>";
			temp+="<tfoot><tr><th>합계</th><th>";
			for (int j = 0; j < list.size(); j++) {
				if(list.get(j).getAcc_type().equals("합계") && list.get(j).getAcc_name().equals(typeList[i]))
					temp+=String.valueOf(list.get(j).getCurrent_value())+"</th><th>"+String.valueOf(list.get(j).getLast_value())+"</th><th>"+String.valueOf(list.get(j).getDifference())+"</th></tr></tfoot><tbody>";
			}
			for (int k = 0; k < list.size(); k++) {
				if(list.get(k).getAcc_type().equals(typeList[i])) {
					temp+="<tr><th>"+list.get(k).getAcc_name()+"</th>";
					temp+="<th>"+String.valueOf(list.get(k).getCurrent_value())+"</th>";
					temp+="<th>"+String.valueOf(list.get(k).getLast_value())+"</th>";
					temp+="<th>"+String.valueOf(list.get(k).getDifference())+"</th></tr>";
				}
			}
			temp+="</tbody></table></div></div></div><hr><br>";
		}
		return temp;
	}
	
	public String makingIs(List<FsBean>list, String date) {
		String temp="<br>";
		String[] typeList= {"수익", "비용"};
		for (int i = 0; i < typeList.length; i++) {
			temp+="<div class=\"card mb-4\">";
			temp+="<div class=\"card-header\"><i class=\"fas fa-table mr-1\"></i>"+typeList[i]+"</div>";
			temp+="<div class=\"card-body\"><div class=\"table-responsive\"><table class=\"table table-bordered\" id=\"dataTable\" width=\"100%\" cellspacing=\"0\">";
			temp+="<thead><tr><th>계정과목</th><th>금액</th><th>계상일</th></tr></thead>";
			temp+="<tfoot><tr><th>합계</th><th>";
			int sum=0;
			for (int j = 0; j < list.size(); j++) {
				if(list.get(j).getAcc_type().equals(typeList[i]) && Double.parseDouble(date)>=Double.parseDouble(list.get(j).getAcc_date().substring(0, 6).replace('/', '.'))) {
					sum+=list.get(j).getAcc_value();
				}
			}
			temp+=String.valueOf(sum)+"</th><th>-</th></tr></tfoot><tbody>";
			for (int j = 0; j < list.size(); j++) {
				if(list.get(j).getAcc_type().equals(typeList[i]) && Double.parseDouble(date)>=Double.parseDouble(list.get(j).getAcc_date().substring(0, 6).replace('/', '.'))) {
					temp+="<tr><th>"+list.get(j).getAcc_name()+"</th>";
					temp+="<th>+"+String.valueOf(list.get(j).getAcc_value())+"</th>";
					temp+="<th>"+list.get(j).getAcc_date()+"</th></tr>";
				}
			}
			temp+="</tbody></table></div></div></div><hr><br>";
		}
		return temp;
	}
	
	@PostMapping(value="memberSearchAction.do", produces="application/text; charset=utf-8")
	public String memberSearchAction(
			@RequestParam(value="attr", required=false, defaultValue="all")String attr,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("attr", attr);
		map.put("keyword", keyword);
		List<MemberErpBean>list=erpDao.searchMemberDataList(map);
		return makingMemberTable(list);
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
	
	@PostMapping(value="memberModAction.do", produces="application/text; charset=utf-8")
	public String memberModAction(
			@RequestParam(value="mem_no")String mem_no,
			@RequestParam(value="mem_name", required=false, defaultValue="")String mem_name,
			@RequestParam(value="mem_id", required=false, defaultValue="")String mem_id,
			@RequestParam(value="mem_pw", required=false, defaultValue="")String mem_pw,
			@RequestParam(value="mem_tel", required=false, defaultValue="")String mem_tel,
			@RequestParam(value="point", required=false, defaultValue="")String point,
			@RequestParam(value="vip_no", required=false, defaultValue="")String vip_no,
			@RequestParam(value="lic_no", required=false, defaultValue="")String lic_no){
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("mem_no", mem_no);
		map.put("mem_name", mem_name);
		map.put("mem_id", mem_id);
		map.put("mem_pw", mem_pw);
		map.put("mem_tel", mem_tel);
		map.put("point", point);
		map.put("vip_no", vip_no);
		map.put("lic_no", lic_no);
		erpDao.updateInventoryList(map);
		return makingTable(erpDao.getInventoryAllList());
	}
	
	@PostMapping(value="memberDelAction.do", produces="application/text; charset=utf-8")
	public String memberDelAction(@RequestParam(value="no")int no) {
		erpDao.deleteInventoryList(no);
		return makingTable(erpDao.getInventoryAllList());
	}
	
	@PostMapping(value="adminSearchAction.do", produces="application/text; charset=utf-8")
	public String adminSearchAction(
			@RequestParam(value="attr", required=false, defaultValue="all")String attr,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("attr", attr);
		map.put("keyword", keyword);
		List<AdminErpBean>list=erpDao.searchAdminDataList(map);
		return makingAdminTable(list);
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
	
	@PostMapping(value="adminModAction.do", produces="application/text; charset=utf-8")
	public String adminModAction(
			@RequestParam(value="emp_no")String emp_no,
			@RequestParam(value="emp_name", required=false, defaultValue="")String emp_name,
			@RequestParam(value="emp_id", required=false, defaultValue="")String emp_id,
			@RequestParam(value="emp_pw", required=false, defaultValue="")String emp_pw,
			@RequestParam(value="deptno", required=false, defaultValue="")String deptno,
			@RequestParam(value="position", required=false, defaultValue="")String position,
			@RequestParam(value="hiredate", required=false, defaultValue="")String hiredate,
			@RequestParam(value="emp_comtel", required=false, defaultValue="")String emp_comtel){
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("emp_no", emp_no);
		map.put("emp_name", emp_name);
		map.put("emp_id", emp_id);
		map.put("emp_pw", emp_pw);
		map.put("deptno", deptno);
		map.put("position", position);
		map.put("hiredate", hiredate);
		map.put("emp_comtel", emp_comtel);
		erpDao.updateAdminList(map);
		return makingAdminTable(erpDao.getAdminDataList());
	}
	
	@PostMapping(value="adminDelAction.do", produces="application/text; charset=utf-8")
	public String adminDelAction(@RequestParam(value="no")int no) {
		erpDao.deleteAdminList(no);
		return makingAdminTable(erpDao.getAdminDataList());
	}
	
	@PostMapping(value="revcomSearchAction.do", produces="application/text; charset=utf-8")
	public String revcomSearchAction(
			@RequestParam(value="attr", required=false, defaultValue="all")String attr,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("attr", attr);
		map.put("keyword", keyword);
		List<RevcomBean>list=erpDao.searchRevcomDataList(map);
		return makingRevcomTable(list);
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
	
	@PostMapping(value="revcomModAction.do", produces="application/text; charset=utf-8")
	public String revcomModAction(
			@RequestParam(value="revcom_no")String revcom_no,
			@RequestParam(value="revcom_name", required=false, defaultValue="")String revcom_name,
			@RequestParam(value="revcom_charge", required=false, defaultValue="")String revcom_charge,
			@RequestParam(value="emp_no", required=false, defaultValue="")String emp_no,
			@RequestParam(value="revcom_start", required=false, defaultValue="")String revcom_start,
			@RequestParam(value="revcom_end", required=false, defaultValue="")String revcom_end){
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("revcom_no", revcom_no);
		map.put("revcom_name", revcom_name);
		map.put("revcom_charge", revcom_charge);
		map.put("emp_no", emp_no);
		map.put("revcom_start", revcom_start);
		map.put("revcom_end", revcom_end);
		erpDao.updateRevcomList(map);
		return makingRevcomTable(erpDao.getRevcomDataList());
	}
	
	@PostMapping(value="revcomDelAction.do", produces="application/text; charset=utf-8")
	public String revcomDelAction(@RequestParam(value="no")int no) {
		erpDao.deleteRevcomList(no);
		return makingRevcomTable(erpDao.getRevcomDataList());
	}
	
	@PostMapping(value="inscomSearchAction.do", produces="application/text; charset=utf-8")
	public String inscomSearchAction(
			@RequestParam(value="attr", required=false, defaultValue="all")String attr,
			@RequestParam(value="keyword", required=false, defaultValue="")String keyword) {
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("attr", attr);
		map.put("keyword", keyword);
		List<InscomBean>list=erpDao.searchInscomDataList(map);
		return makingInscomTable(list);
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
	
	@PostMapping(value="inscomModAction.do", produces="application/text; charset=utf-8")
	public String inscomModAction(
			@RequestParam(value="inscom_no")String inscom_no,
			@RequestParam(value="inscom_name", required=false, defaultValue="")String inscom_name,
			@RequestParam(value="inscom_charge", required=false, defaultValue="")String inscom_charge,
			@RequestParam(value="emp_no", required=false, defaultValue="")String emp_no,
			@RequestParam(value="inscom_start", required=false, defaultValue="")String inscom_start,
			@RequestParam(value="inscom_end", required=false, defaultValue="")String inscom_end){
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("inscom_no", inscom_no);
		map.put("inscom_name", inscom_name);
		map.put("inscom_charge", inscom_charge);
		map.put("emp_no", emp_no);
		map.put("inscom_start", inscom_start);
		map.put("inscom_end", inscom_end);
		erpDao.updateInscomList(map);
		return makingInscomTable(erpDao.getInscomDataList());
	}
	
	@PostMapping(value="inscomDelAction.do", produces="application/text; charset=utf-8")
	public String inscomDelAction(@RequestParam(value="no")int no) {
		erpDao.deleteInscomList(no);
		return makingInscomTable(erpDao.getInscomDataList());
	}
	
	
	
}
