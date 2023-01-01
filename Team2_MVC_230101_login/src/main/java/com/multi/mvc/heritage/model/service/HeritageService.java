package com.multi.mvc.heritage.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.heritage.model.mapper.HeritageMapper;
import com.multi.mvc.heritage.model.vo.AddCollection;
import com.multi.mvc.heritage.model.vo.AddHeritageLike;
import com.multi.mvc.heritage.model.vo.HReply;
import com.multi.mvc.heritage.model.vo.Heritage;

@Service
public class HeritageService {

	// 2. Mapper 사용시 선언
	@Autowired
	private HeritageMapper mapper;
	
	
	
//	@Transactional : 쿼리 처리중에 예외 발생시 자동으로 roll-back 시켜주는 어노테이션(AOP)
	@Transactional(rollbackFor = Exception.class)
	public int saveReply(HReply reply) {
		return mapper.insertReply(reply);
	}
	
	
	public int getHeritageCount(Map<String, Object> param) {
		return mapper.selectHeritageCount(param);
	}
	
	

	public List<Heritage> selectCollectionListByUNO(int uno){
		return mapper.selectCollectionListByUNO(uno);
	}
	
	public List<Heritage> selectCollectionList(){
		return mapper.selectCollectionList();
	}
	
	// Mysql 페이지 기반 코드
	public List<Heritage> getHeritageList(PageInfo pageInfo, Map<String, Object> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectHeritageList(param);
	}

	
	@Transactional(rollbackFor = Exception.class)
	public int addCollection(AddCollection col) {
		return mapper.insertCollection(col);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteCollection(AddCollection col) {
		return mapper.deleteCollection(col);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public Heritage findByNo(int no) {
		Heritage heritage = mapper.selectHeritageByNo(no); 
//		board.setReadCount(board.getReadCount() + 1);  
//		mapper.updateReadCount(board);
		return heritage; 
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}
	
	// 랜덤 리스트
	public List<Heritage> selectHeritageRandomList(){
		return mapper.selectHeritageRandomList();
	}
	@Transactional(rollbackFor = Exception.class)
	public int checkHeritageLike(int no) {
		return mapper.selectHeritageLikeCount(no);
	}
	
	// 문화재 좋아요 추가
	@Transactional(rollbackFor = Exception.class)
	public int addHeritageLike(AddHeritageLike hl) {
		return mapper.insertHeritageLike(hl);
	}
	
	
}




