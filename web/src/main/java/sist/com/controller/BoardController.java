package sist.com.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import sist.com.bean.BoardBean;
import sist.com.dao.BoardDao;



	@Controller
	@RequestMapping("/board/*")
	public class BoardController {

		
		@Inject
		BoardDao dao;
		
		// 게시판 글 작성 화면
		@RequestMapping(value = "/board/writeView", method = RequestMethod.GET)
		public void writeView() {
			
			
		}
		
		// 게시판 글 작성
		@RequestMapping(value = "/web/write.do", method = RequestMethod.POST)
		public String write(BoardBean boardBean) {
			
			dao.write(boardBean);
			
			return "redirect:/";
		}
		
	}
