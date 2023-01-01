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
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
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
	public String home(Locale locale, Model model, HttpSession session, @RequestParam Map<String, String> param) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		Member loginMember = memberService.login("admin", "1212");
//		session.setAttribute("loginMember", loginMember);
		// test();
		List<Heritage> list = heService.selectCollectionList();
		model.addAttribute("list", list);
		
// 바뀐부분 시작  230102
		//공지게시판
		System.out.println("리스트 요청, param : " + param);
		int page = 1;
		// 탐색할 맵을 선언
		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = param.get("searchValue");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			}
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		searchMap.put("type", param.get("type"));
		
		int boardCount = service.getBoardCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 7, boardCount, 7);
		
		List<Board> list2 = service.getBoardList(pageInfo, searchMap);
		model.addAttribute("list2", list2);
// 바뀐부분 끝	 230102
		return "index";
	}
	
	public void test() {
		Map<String, String> map = new HashMap<>();
		PageInfo info = new PageInfo(1, 10, service.getBoardCount(map), 10);
		logger.info("board List : " + service.getBoardList(info, map));
	}
	
}
