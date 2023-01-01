package com.multi.mvc.thema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.multi.mvc.member.controller.MemberController;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언을 대신 선언 해주는 lombok 어노테이션
@SessionAttributes("loginMember") // loginMember를 Model 취급할때 세션으로 처리하도록 도와주는 어노테이션
@Controller
public class ThemeController {

	// 테마별 문화재 투어페이지 가는것
	@GetMapping("/tour-map")
	public String tourPage() {
		log.info("테마별 문화재 투어");
		return "/theme/tourMap";
	}
	
}
