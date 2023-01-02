package com.multi.mvc.collection.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.heritage.controller.HeritageController;
import com.multi.mvc.heritage.model.service.HeritageService;
import com.multi.mvc.heritage.model.vo.CoReply;
import com.multi.mvc.heritage.model.vo.HReply;
import com.multi.mvc.heritage.model.vo.Heritage;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;
@Slf4j
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
		List<CoReply> co =  service.selectCoLists();
		// 예외처리 코드
		// 로그인 안되어있을 때 알람창을 띄우고 메인으로 보냄
		try {
			
			int uno = loginMember.getNo();
			List<Heritage> list = service.selectCollectionListByUNO(uno);
			model.addAttribute("nick", loginMember.getNickname());
			model.addAttribute("replyList", co);
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
	// 리플 작성
			@RequestMapping("/Co_reply")
			public String writeReply(Model model, 
					@SessionAttribute(name = "loginMember", required = false) Member loginMember,
					@ModelAttribute CoReply reply
					) {
				reply.setUno(loginMember.getNo());
				log.info("리플 작성 요청 Reply : " + reply);
				
				int result = service.saveReply2(reply);
				
				if(result > 0) {
					model.addAttribute("msg", "리플이 등록되었습니다.");
				}else {
					model.addAttribute("msg", "리플 등록에 실패하였습니다.");
				}
				model.addAttribute("location", "/collection-detail?hrno="+reply.getHrno());
				return "/common/msg";
			}
			
			// 리플 삭제
			@RequestMapping("/Co_replyDel")
			public String deleteReply(Model model, 
					@SessionAttribute(name = "loginMember", required = false) Member loginMember,
					int hrno, CoReply core
					){
				log.info("리플 삭제 요청");
				int result = service.deleteReply(hrno);
				
				if(result > 0) {
					model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
				}else {
					model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
				}
				model.addAttribute("location", "/collectionDetail+hno="+core.getHno());
				return "/common/msg";
			}
}
