package com.multi.mvc.event.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.event.model.mapper.EventMapper;
import com.multi.mvc.event.model.vo.Event;

@Service
public class EventService {
	
	@Autowired
	EventMapper mapper;
	
	
	public int getEventCount(String searchValue){
		Map<String, String> param = new HashMap<String, String>();
		param.put("searchValue", searchValue);
		return mapper.selectEventCount(param);
	}
	
	
	public List<Event> findEventList(PageInfo pageInfo, String searchValue){
		Map<String, String> param = new HashMap<String, String>();
		param.put("searchValue", searchValue);
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectEventList(param);
	}
	
	public Event findEventById(int eNo){
		return mapper.selectEventById(eNo);
	}
	
}
