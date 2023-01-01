package com.multi.mvc.heritage.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Heritage {
	private int hno; // h_no
	private int uno; // h_no // 컬랙션 용
	private String ccmaName; // 문화재종목
	private String ccbaMnm1; // 문화재명
	private String gcodeName; // 문화재분류
	private String bcodeName; // 문화재분류2
	private String mcodeName; // 문화재분류3
	private String scodeName; // 문화재분류4
	private String ccbaQuan; // 수량
	private String ccbaAsdt; // 지정(등록일)
	private String ccbaCtcdNm; // 시도명
	private String ccsiName; // 시군구명
	private String ccbaLcad; // 소재지 상세
	private String ccceName; // 시대
	private String ccbaPoss; // 소유자
	private String longitude; // 경도 ( 0일 경우 : 위치 값 없음 )
	private String latitude; // 위도 ( 0일 경우 : 위치 값 없음 )
	private String ccbaAdmin; // 관리자
	private String imageUrl; // 메인노출이미지URL
	private String content; // 내용
	private HImage images; // 이미지
	private List<HReply> replies;
}
