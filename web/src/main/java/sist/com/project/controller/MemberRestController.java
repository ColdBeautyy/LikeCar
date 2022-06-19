package sist.com.project.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sist.com.project.bean.ZipcodeBean;
import sist.com.project.dao.MemberDao;

@RestController
public class MemberRestController {
	@Resource(name="memdao")
	MemberDao dao;
	
	@RequestMapping(value="idOverlapCheck.do")
	public HashMap<String, String> idOverlapCheck(String id) {
		HashMap<String, String>map=new HashMap<String, String>();
		map.put("idcheck", String.valueOf(dao.idOverlapCheck(id)));
		map.put("id", id);
		return map;
	}

}
