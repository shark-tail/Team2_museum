package com.multi.mvc.event.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.event.model.vo.Event;

@Mapper
public interface EventMapper {
	List<Event> selectEventList(Map<String, String> map);
	int selectEventCount(Map<String, String> map);
	Event selectEventById(int eNo);
	
}
