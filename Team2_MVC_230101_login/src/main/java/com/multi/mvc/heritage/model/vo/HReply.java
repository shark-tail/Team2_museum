package com.multi.mvc.heritage.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HReply {
	private int hrno;
	private int hno; //문화재
	private int uno; //유저
	private String nickName; // 닉네임
	private String hrContent; //리플내용
	private Date hrCreateDate;
	private Date hrModifyDate;
	private String hrStatus;

}
