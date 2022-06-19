package sist.com.project.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import sist.com.project.bean.Reserve_ReserveBean;
import sist.com.project.dao.ReserveDao;

@RestController
public class ReserveRestController {
@Resource(name="reserveDao")
private ReserveDao dao;

	@RequestMapping(value="selectListCar.do")
	public @ResponseBody Object userAll(Model m,@ModelAttribute("reserve")Reserve_ReserveBean bean){
		List<Reserve_ReserveBean>data = dao.selectLikeCarListTest();
		HashMap<String, Object>map = new HashMap<String, Object>();
		map.put("data", dao.selectLikeCarListTest());
		//m.addAttribute("data",data);
		Object result= map;
		System.out.println(map);
		return result;
	}
}
