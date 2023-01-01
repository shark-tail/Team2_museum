package com.multi.mvc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.heritage.model.service.HeritageService;
import com.multi.mvc.heritage.model.vo.Heritage;
import com.multi.mvc.member.model.service.MemberService;

@Controller
public class HomeController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	HeritageService heService;
	
	@Autowired
	private MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
		// test();
		List<Heritage> list = heService.selectCollectionList();
		model.addAttribute("list", list);
		return "index";
	}
	
	public void test() {
		Map<String, String> map = new HashMap<>();
		PageInfo info = new PageInfo(1, 10, service.getBoardCount(map), 10);
		logger.info("board List : " + service.getBoardList(info, map));
	}
	
}
