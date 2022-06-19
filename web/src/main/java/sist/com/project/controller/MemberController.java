package sist.com.project.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import sist.com.project.bean.MemberBean;
import sist.com.project.bean.ZipcodeBean;
import sist.com.project.dao.MemberDao;

@Controller
public class MemberController {

	@Resource(name="memdao")
	MemberDao dao;
	
	//sign in
	@PostMapping(value="signMember.do")
	public String memberCheck(String mem_id,String mem_pw,HttpSession session,
							@RequestParam(value="job",required=false)String job) {
		if(dao.memberCheck(mem_id, mem_pw)) {
			session.setAttribute("id", mem_id);
			session.setAttribute("name", dao.selectMemberName(mem_id));			
			session.setMaxInactiveInterval(60*60);
			return "redirect:/resources/project/index.jsp";
		}else {			
			return "redirect:/resources/project/login.jsp";
		}
	}
	//admin login
	@PostMapping(value="signAdmin.do")
	public String adminCheck(String mem_id,String mem_pw,HttpSession session,
			@RequestParam(value="job",required=false)String job) {
		if(dao.adminCheck(mem_id, mem_pw)) {
			session.setAttribute("id", mem_id);	
			session.setMaxInactiveInterval(60*60);
			return "redirect:erpIndexAction.do";
		}else {			
			return "redirect:/resources/project/login.jsp";
		}
	}
	//log out
	@RequestMapping(value="logoutProcess.do")
	public String logoutProcess(HttpSession session) {
		System.out.println("id="+session.getAttribute("id"));
		System.out.println("name="+session.getAttribute("name"));
		session.invalidate();
		return "redirect:/resources/project/index.jsp";
		
	}

	@RequestMapping(value="signupProcess.do")
		public String signupProcess() {
			return "/resources/project/signUp";
	}

		@RequestMapping(value="signUpBasic.do")
	public String basicOptionSignUp(@RequestParam(value="mem_id",required=true)String mem_id,
									@RequestParam(value="mem_pw",required=true)String mem_pw,
									@RequestParam(value="mem_name",required=true)String mem_name,
									@RequestParam(value="mem_tel",required=true)String mem_tel,
									@RequestParam(value="mem_birth",required=true)String mem_birth,
									Model model,HttpSession session){
		HashMap<String, Object>map=new HashMap<String,Object>();
		map.put("mem_id",mem_id);
		map.put("mem_pw",mem_pw);
		map.put("mem_name",mem_name);
		map.put("mem_tel",mem_tel);
		map.put("mem_birth",mem_birth);
		model.addAttribute("job", "licence");
		model.addAttribute("job", "licence");
		session.setAttribute("map", map);
		session.setMaxInactiveInterval(60*10);
		return "/resources/project/signUp";
	}

	@RequestMapping(value="signUpLicence.do")
	public String licenceOptionSignUp(Model model,HttpSession session,
									@RequestParam(value="lic_no",required=true)String lic_no,
									@RequestParam(value="type",required=true)String type,
									@RequestParam(value="enroll_date",required=true)String enroll_date,
									@RequestParam(value="expire_date",required=true)String expire_date,
									@RequestParam(value="address",required=true)String address) {
		HashMap<String, Object>map=(HashMap<String, Object>)session.getAttribute("map");
		map.put("lic_no", lic_no);
		map.put("type", type);
		map.put("enroll_date", enroll_date);
		map.put("expire_date", expire_date);
		map.put("address", address);
		model.addAttribute("job", "credit");
		return "/resources/project/signUp";
	}
	@RequestMapping(value="signUpCredit.do")
	public String creditOptionSignUp(HttpSession session,
									@RequestParam(value="card_cp",required=true)String card_cp,
									@RequestParam(value="card_num",required=true)String card_num,
									@RequestParam(value="card_cvc",required=true)String card_cvc,
									@RequestParam(value="card_expire_date",required=true)String card_expire_date,
									@RequestParam(value="card_pw",required=true)String card_pw) {
		HashMap<String, Object>map=(HashMap<String, Object>)session.getAttribute("map");
		map.put("card_cp", card_cp);
		map.put("card_num", card_num);
		map.put("card_cvc", card_cvc);
		map.put("card_expire_date", card_expire_date);
		map.put("card_pw", card_pw);
		dao.insertMemberSignUp(map);
		return "/resources/project/signUp_success";
	}
	
	@RequestMapping(value="mypageInfo.do")
	public String mypageInfoProcess(Model model,HttpSession session) {
		String id=(String)session.getAttribute("id");
		model.addAttribute("mem", dao.mypageInfo(id));
		System.out.println("con="+dao.mypageInfo(id));
		return "/resources/project/mypage";
	}
	
	@RequestMapping(value="memAccountUpdate.do")
	public String memAccountUpdate(HttpSession session,
									@RequestParam(value="mem_id",required=true)String mem_id,
									@RequestParam(value="mem_tel",required=true)String mem_tel,
									@RequestParam(value="type",required=true)String type,
									@RequestParam(value="lic_no",required=true)String lic_no,
									@RequestParam(value="address",required=true)String address) {
		String id=(String)session.getAttribute("id");
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("id",id);
		map.put("mem_id", mem_id);
		map.put("mem_tel", mem_tel);
		map.put("type", type);
		map.put("lic_no", lic_no);
		map.put("address", address);
		dao.memAccountUpdate(map);
		session.setAttribute("id", mem_id);
		return "redirect:mypageInfo.do";
	}
	@RequestMapping(value="mempasswordUpdate.do")
	public String mempasswordUpdate(HttpSession session,
									@RequestParam(value="new_pw",required=true)String new_pw) {
		String id=(String)session.getAttribute("id");
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("id",id);
		map.put("new_pw",new_pw);
		dao.mempasswordUpdate(map);
		return "redirect:mypageInfo.do";
	}
}
