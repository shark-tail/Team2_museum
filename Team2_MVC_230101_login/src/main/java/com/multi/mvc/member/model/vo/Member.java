package com.multi.mvc.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int no;
	private String id;
	private String password;
	private String name;
	private String nickname;	
	private String status;
	private String email;
	private String role;
	private String kakaoToken;
	private String naverToken;
	private String googleToken;
	private Date enrollDate;
	private Date modifyDate;
	
}
