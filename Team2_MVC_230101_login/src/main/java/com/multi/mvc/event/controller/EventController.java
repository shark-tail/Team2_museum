package com.multi.mvc.event.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.event.model.service.EventService;
import com.multi.mvc.event.model.vo.Event;

@Controller
public class EventController {
	
	@Autowired
	EventService service;
	

	@RequestMapping("/event-main")
	public String e_main(Model model, @RequestParam Map<String, String> param) {
		String searchValue = null; 
		int page = 1;
		
		try {
			searchValue = param.get("searchValue");
			page = Integer.parseInt(param.getOrDefault(page, "1"));
		} catch (Exception e) {
		}
		
		
		int count = service.getEventCount(searchValue);
		PageInfo pageinfo = new PageInfo(page, 10, count, 12);
		List<Event> list = service.findEventList(pageinfo, searchValue);
		model.addAttribute("list", list);
		model.addAttribute("searchValue", searchValue);
		return "event/eventMain"; 
	}
	
	//${path}/event-detail?no=${item.e_no}
	
	@RequestMapping("/event-detail")
	public String e_detail(Model model, @RequestParam("no") int no) {
		Event event = service.findEventById(no);
		model.addAttribute("event", event);
		return "event/eventDetail"; 
	}


}
