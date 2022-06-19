package sist.com.project.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.com.project.bean.LikecarPaymentBean;
import sist.com.project.bean.Reserve_ReserveBean;
import sist.com.project.dao.ReserveDao;
import sist.com.project.bean.FsBean;

@Controller
public class ReserveController {

	@Resource(name="reserveDao")
	private ReserveDao dao;

	@RequestMapping(value="firstReserve.do")
	public String infoSelectData(int no,Model m,String car_end_date,String car_start_date) {
		System.out.println("no=="+no+" "+car_end_date+" "+car_start_date);
		//dao.infoListData(no);
		m.addAttribute("list",dao.infoListData(no));
		m.addAttribute("car_end_date",car_end_date);
		m.addAttribute("car_start_date",car_start_date);
		
		return "/resources/project/reserve_info";
	}
	@RequestMapping(value="secondReserve.do") 
	public String reserveSuccess(LikecarPaymentBean bean,HttpSession session,HttpServletRequest request,String option_price,String premium_price,Model m,String total_price ) {
		//System.out.println(bean);
		String car_no = request.getParameter("car_no");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		String res_no = request.getParameter("res_no");
		String car_name = request.getParameter("car_name");
		String car_type = request.getParameter("car_type");
		String car_energy = request.getParameter("car_energy");
		String car_size = request.getParameter("car_size");
		String boardable_count = request.getParameter("boardable_count");
		String car_start_date = request.getParameter("car_start_date");
		String car_end_date = request.getParameter("car_end_date");
	
		bean.setCar_no(Integer.parseInt(car_no));
		bean.setCar_start_date(car_start_date);
		bean.setEnd_date(car_end_date);
		bean.setRes_no(Integer.parseInt(res_no));
		bean.setCar_name(car_name);
		bean.setCar_type(car_type);
		bean.setCar_energy(car_energy);
		bean.setCar_size(car_size);
		bean.setBoardable_count(Integer.parseInt(boardable_count));
		bean.setCar_start_date(car_start_date);
		bean.setCar_end_date(car_end_date);

		switch (option_price) {
		case "0":
		bean.setOption_value("None");	
		break;

		case "500":
			bean.setOption_value("Radio");	
		break;
		
		case "700":
			bean.setOption_value("Bluetooth");	
		break;
		
		case "1000":
			bean.setOption_value("Navigation");	
		break;
	
		case "1200":
			bean.setOption_value("Radio & Bluetooth");	
		break;
		
		case "1500":
			bean.setOption_value("Radio & Navigation");	
		break;
		
		case "1700":
			bean.setOption_value("Bluetooth & Navigation");	
		break;
		
		case "2200":
			bean.setOption_value("full Option");	
		break;
		
		
		default:
			break;
		}
		
		switch (premium_price) {
		
		case "5000":
			bean.setPremium_value("Basic insurance");
			break;

		case "15000":
			bean.setPremium_value("Upgrade insurance");
			break;

		default:
			break;
		}
		bean.setReserve_name((String)session.getAttribute("name"));
		//System.out.println(bean);
		dao.insertDataResult(bean);
		m.addAttribute("car_name",car_name);
		m.addAttribute("car_start_date",car_start_date);
		m.addAttribute("car_end_date",car_end_date);
		m.addAttribute("price",total_price);
		
		int price = Integer.parseInt(total_price);
		
		dao.insertAccountAssets(price);
		dao.insertAccountFan(price);		
		return "/resources/project/reserve_complete";
	}
	@RequestMapping(value="reserveCompleteList.do")
	public String reserveCompleteList(Model m,HttpSession session) {
	String name = (String)session.getAttribute("name");
	HashMap<String, Object>map = new HashMap<String,Object>();
	map.put("name", name);
	System.out.println(name);
	m.addAttribute("list",dao.reserveCompleteList(map));
	return "/resources/project/reserve_payment";
	}
	
	@RequestMapping(value="reserveCompleteListAll.do")
	public String reserveCompleteListAll(Model m) {
		m.addAttribute("list",dao.reserveCompleteListAll());
		return "/resources/project/reserve_payment";
	}

	@GetMapping(value="updateComplete.do")//Í≤∞Ï†ú ?äπ?ù∏
	public String updateComplete(@RequestParam(value="no",required=false)int no) {
		String reserve_name =dao.getReserve_Name(no);
		int price = dao.priceAll(no);
		int MinusPrice = (price* -1);
		
		double point = (price * 0.01);
		double beforePoint = dao.pointSelect(reserve_name);
		double afterPoint = (point + beforePoint);
		HashMap<String, Object>map = new HashMap<String,Object>();
		map.put("afterPoint", afterPoint);
		map.put("reserve_name", reserve_name);
		dao.updatePoint(map);
		dao.updateComplete(no);
		
		dao.AccountMinusPaymentAssets(MinusPrice);
		dao.AccountMinusFanAssets(MinusPrice);
		dao.AccountPlusPaymentAssets(price);
		dao.AccountPlusPaymentRevenue(price);
		
		return "redirect:payment.do";	
	}
	@RequestMapping(value="deleteComplete.do")
	public String deleteComplete(int no) {
		dao.deleteComplete(no);
		return "redirect:payment.do";
	}
	@RequestMapping(value="goHome.do")
	public String goHome() {
		return "/resources/project/index";
	}
	@RequestMapping(value="goReserve.do")
	public String goReserve() {
		return "resources/project/reserve_search_test";
	}
}
