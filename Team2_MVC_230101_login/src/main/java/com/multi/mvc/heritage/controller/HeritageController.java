package com.multi.mvc.heritage.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.heritage.model.service.HeritageService;
import com.multi.mvc.heritage.model.vo.AddCollection;
import com.multi.mvc.heritage.model.vo.AddHeritageLike;
import com.multi.mvc.heritage.model.vo.HReply;
import com.multi.mvc.heritage.model.vo.Heritage;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HeritageController {

	@Autowired
	HeritageService heritageService;
	
	// http://localhost/mvc/search?name=werwer&nameType=name&kind=%EA%B5%AD%EB%B3%B4
	@RequestMapping("/searchMain")
	public String searchMain(Model model, 
			@RequestParam(required = false) String page,
			String name, String nameType, String[] kind, String[] region, String[] time, String[] type) {
		if(page == null) {
			page = "1";
		}
		int pageNum = Integer.parseInt(page);
		System.out.println(name);
		System.out.println(nameType);
		Map<String, Object> map = new HashMap<>();
		if(kind != null) {
			System.out.println(Arrays.toString(kind));
			model.addAttribute("kind", Arrays.asList(kind));
			map.put("kind", Arrays.asList(kind));
		}
		if(region != null) {
			System.out.println(Arrays.toString(region));
			model.addAttribute("region", Arrays.asList(region));
			map.put("region", Arrays.asList(region));
		}
		if(time != null) {
			System.out.println(Arrays.toString(time));
			model.addAttribute("time", Arrays.asList(time));
			map.put("time", Arrays.asList(time));
		}
		if(type != null) {
			System.out.println(Arrays.toString(type));
			model.addAttribute("type", Arrays.asList(type));
			map.put("type", Arrays.asList(type));
		}
		model.addAttribute("name", name);
		model.addAttribute("nameType", nameType);
		map.put("name", name);
		map.put("nameType", nameType);
		int count = heritageService.getHeritageCount(map);
		
		PageInfo pageInfo = new PageInfo(pageNum, 5, count, 12);
		List<Heritage> list = heritageService.getHeritageList(pageInfo, map);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		return "/search/searchMain";
	}
	
	@RequestMapping("/searchDetail")
	public String searchDetail(Model model, int hno) {
		Heritage heritage = heritageService.findByNo(hno);
		int like = heritageService.checkHeritageLike(hno);
		if(heritage == null) {
			return "redirect:error";
		}
		List<Heritage> list = heritageService.selectHeritageRandomList();
		model.addAttribute("list", list);
		
		model.addAttribute("heritage", heritage);
		model.addAttribute("longitude", heritage.getLongitude());
		model.addAttribute("latitude", heritage.getLatitude());
//		model.addAttribute("imageList", heritage.getImages());
		model.addAttribute("like", like);
		model.addAttribute("replyList", heritage.getReplies());
		
		return "/search/searchDetail";
	}
	
	@RequestMapping("/addCollection")
	public String addCollection(Model model, 
			@ModelAttribute AddCollection col) {
		int result = heritageService.addCollection(col);
		
		if(result > 0) {
			model.addAttribute("msg", "컬렉션 등록되었습니다.");
		}else {
			model.addAttribute("msg", "컬렉션 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/searchMain");
		return "/common/msg";
	}
	
	
	@RequestMapping("/addCollection2")
	public String addCollection2(Model model, 
			@ModelAttribute AddCollection col) {
		int result = heritageService.addCollection(col);
		if(result > 0) {
			model.addAttribute("msg", "컬렉션 등록되었습니다.");
		}else {
			model.addAttribute("msg", "컬렉션 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/searchDetail?hno="+ col.getHno());
		return "/common/msg";
	}
	// 문화재 검색 페이지 내 좋아요
		@RequestMapping("/addHeritageLike")
		public String addHeritageLike(Model model, 
				@ModelAttribute AddHeritageLike hl) {
			int result = heritageService.addHeritageLike(hl);
			
			if(result > 0) {
				model.addAttribute("msg", "선택하신 문화재에 좋아요를 눌렀습니다.");
			}else {
				model.addAttribute("msg", "선택하신 문화재에 좋아요를 실패하였습니다.");
			}
			model.addAttribute("location", "/searchMain");
			return "/common/msg";
		}

		// 문화재 상세 페이지 내 좋아요
		@RequestMapping("/addHeritageLike2")
		public String addHeritageLike2(Model model, 
				@ModelAttribute AddHeritageLike hl) {
			int result = heritageService.addHeritageLike(hl);
			
			if(result > 0) {
				model.addAttribute("msg", "선택하신 문화재에 좋아요를 눌렀습니다.");
			}else {
				model.addAttribute("msg", "선택하신 문화재에 좋아요를 실패하였습니다.");
			}
			model.addAttribute("location", "/searchDetail?hno="+ hl.getHno());
			return "/common/msg";
		}
		// 리플 작성
		@RequestMapping("/reply")
		public String writeReply(Model model, 
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				@ModelAttribute HReply reply
				) {
			reply.setUno(loginMember.getNo());
			log.info("리플 작성 요청 Reply : " + reply);
			
			int result = heritageService.saveReply(reply);
			
			if(result > 0) {
				model.addAttribute("msg", "리플이 등록되었습니다.");
			}else {
				model.addAttribute("msg", "리플 등록에 실패하였습니다.");
			}
			model.addAttribute("location", "/searchDetail?hno="+reply.getHno());
			return "/common/msg";
		}
		
		// 리플 삭제
		@RequestMapping("/replyDel")
		public String deleteReply(Model model, 
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				int hrno, int hno
				){
			log.info("리플 삭제 요청");
			int result = heritageService.deleteReply(hrno);
			
			if(result > 0) {
				model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
			}else {
				model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
			}
			model.addAttribute("location", "/searchDetail?hno="+hno);
			return "/common/msg";
		}
	@RequestMapping("/deleteCollection")
	public String deleteCollection(Model model, 
			@ModelAttribute AddCollection col) {
		int result = heritageService.deleteCollection(col);
		
		if(result > 0) {
			model.addAttribute("msg", "컬렉션이 삭제되었습니다");
		}else {
			model.addAttribute("msg", "컬렉션 삭제가 실패하였습니다.");
		}
		model.addAttribute("location", "/MyCollection");
		return "/common/msg2";
	}
	
}
