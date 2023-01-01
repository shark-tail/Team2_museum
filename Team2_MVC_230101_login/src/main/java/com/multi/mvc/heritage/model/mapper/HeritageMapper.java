package com.multi.mvc.heritage.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.heritage.model.vo.AddCollection;
import com.multi.mvc.heritage.model.vo.AddHeritageLike;
import com.multi.mvc.heritage.model.vo.HReply;
import com.multi.mvc.heritage.model.vo.Heritage;


@Mapper
public interface HeritageMapper {
	// MySQL Page 기능 활용
	List<Heritage> selectHeritageList(Map<String, Object> map);
	int selectHeritageCount(Map<String, Object> map);
	Heritage selectHeritageByNo(int no);
	// 문화재 좋아요 개수 확인
	int selectHeritageLikeCount(int no);
	// 문화재 좋아요 추가
	int insertHeritageLike(AddHeritageLike hl);
	int insertCollection(AddCollection col);
	int insertReply(HReply reply);
	int deleteReply(int no);
	List<Heritage> selectCollectionListByUNO(int uno);
	int deleteCollection(AddCollection col);
	// 랜덤 리스트
	List<Heritage> selectHeritageRandomList();
	List<Heritage> selectCollectionList();
}
