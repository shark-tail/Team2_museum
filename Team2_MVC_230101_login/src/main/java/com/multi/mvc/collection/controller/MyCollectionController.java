package com.multi.mvc.collection.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.heritage.model.service.HeritageService;
import com.multi.mvc.heritage.model.vo.Heritage;
import com.multi.mvc.member.model.vo.Member;

@Controller
public class MyCollectionController {
	
	@Autowired
	HeritageService service;
	
	@RequestMapping("/Collection")
	public String Collection() {
		return"collection/collection-main";
	}
	
	@RequestMapping("/collection-detail")
	public String myCollection(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember
			) {
		// 예외처리 코드
		// 로그인 안되어있을 때 알람창을 띄우고 메인으로 보냄
		try {
			int uno = loginMember.getNo();
			List<Heritage> list = service.selectCollectionListByUNO(uno);
			model.addAttribute("nick", loginMember.getNickname());
			model.addAttribute("list", list);
			return "collection/collection-detail";
			
		} catch (NullPointerException e) {
			model.addAttribute("msg", "로그인을 먼저해주세요");
			model.addAttribute("location", "/searchMain");
			return "common/msg";
		}
	}
	
	
	@RequestMapping("/collection_view")
	public String view(Model model, HttpSession session) {
		Member loginMember = (Member) session.getAttribute("loginMember");
		int uno = 1;
		if(loginMember != null) {
			uno = loginMember.getNo();
		}
		List<Heritage> list = service.selectCollectionListByUNO(uno);
		model.addAttribute("list", list);
		return "collection/collection-view-all";
	}
}
