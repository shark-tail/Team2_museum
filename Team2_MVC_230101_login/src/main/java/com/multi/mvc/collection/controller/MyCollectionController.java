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
		return"collection/ex-collection-main-1";
	}

	@RequestMapping("/collection-detail")
	public String myCollection(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
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
		if (loginMember != null) {
			uno = loginMember.getNo();
		}
		List<Heritage> list = service.selectCollectionListByUNO(uno);
		model.addAttribute("list", list);
		return "collection/collection-view-all";
	}
//컬렉션리스트
	@RequestMapping("/collection-list")
	public String CollectionList() {
		return "collection/collection-list";
	}

//컬렉션 리스트 -확인용
	@RequestMapping("/collection-list-nic")
	public String CollectionList2() {
		return "collection/collection-list_nic";
	}

//컬렉션 리스트 -확인용
	@RequestMapping("/collection-list-item")
	public String CollectionList3() {
		return "collection/collection-list_item";
	}
	
	
	//검색 전 백범힝구의 컬렉션 상세 조회
	@RequestMapping("/ex-collection-detail-1")
	public String exDetail1() {
		return "collection/ex-collection-detail-1";
	}
	//검색 후 전이만갑오개혁의 컬렉션 상세 조회
	@RequestMapping("/ex-collection-detail-2")
	public String exDetail2() {
		return "collection/ex-collection-detail-2";
	}
	//전이만갑오개혁의 컬렉션 전체모드로 보기
	@RequestMapping("ex-collection-view-all-1")
	public String exViewAll1() {
		return "collection/ex-collection-view-all-1";
	}
	//컬렉션 검색 후 컬렉션 리스트
	@RequestMapping("/ex-collection-list")
	public String exList1(@RequestParam("searchValue") String searchValue) {
		log.info("검색 요청 " + searchValue);
		if (searchValue.equals("경주")) {
			log.info("닉네임 검색");
			return "collection/ex-collection-list-1";
		}
		if (searchValue.equals("청자")) {
			log.info("문화재 검색");
			return "collection/ex-collection-list-2";
		}
		return "collection/ex-collection-main-1";
	}

}
