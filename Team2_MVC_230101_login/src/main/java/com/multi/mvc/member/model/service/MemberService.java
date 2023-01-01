package com.multi.mvc.member.model.service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.multi.mvc.email.MailUtil;
import com.multi.mvc.member.model.mapper.MemberMapper;
import com.multi.mvc.member.model.vo.Member;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder; //  SHA-256 hash code로 패스워드 일방향 암호 지원 모듈
	// 1234 -> nsikldvnisoldjhv2423jo23 (평문 -> hashCode)
	
	public Member login(String id, String pw) {
		Member member = mapper.selectMember(id);
		if(member == null) {
			return null;
		}
		
		// passwordEncoder 활용법
		System.out.println(member.getPassword()); // hash로 암호화된 코드가 들어있다.
		System.out.println(pwEncoder.encode(pw)); // encode를 통해 평문에서 hash 코드로 변환
		System.out.println(pwEncoder.matches(pw, member.getPassword())); // 평문 변환하고 비교까지
		
		if(id.equals("admin")) { // admin 테스트를 위한 코드
			return member;
		}
		
		if(member != null && pwEncoder.matches(pw, member.getPassword()) == true) {
			// 성공
			return member;
		}else {
			// 로그인 실패
			return null;
		}
	}
	// 회원가입 or 회원수정
	// @Transactional : DB 트랜잭션 관리를 위한 AOP 어노테이션. 만일 오류가 발생하면 롤백. 아니면 커밋
	// (rollbackFor = Exception.class) : 사용하지 않은 경우 트랜잭션 코드가 정상적으로 작동하지 않을수 있다.
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		if(member.getNo() == 0) { // 회원가입
			String encodePW = pwEncoder.encode(member.getPassword());
			member.setPassword(encodePW);
			result = mapper.insertMember(member);
		}else { // 회원 수정
			result = mapper.updateMember(member);
		}
		return result;
	}
	
	//아이디 중복확인 관련?
	public boolean validate(String userId) {
		return this.findById(userId) != null;
	}
	//아이디 중복확인 관련?
	public Member findById(String id) {
		return mapper.selectMember(id);
	}

	//닉네임 중복확인 관련?
	public boolean validate2(String userNickname) {
		return this.findByNickname(userNickname) != null;
	}
	//닉네임 중복확인 관련?
	public Member findByNickname(String nickname) {
		return mapper.selectMember2(nickname);
	}
	//회원 탈퇴
	@Transactional(rollbackFor = Exception.class)
	public int delete(int no) {
		return mapper.deleteMember(no);
	}
	//비밀번호 변경
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(Member loginMember, String userPW) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("no", "" + loginMember.getNo());
		map.put("newPwd", pwEncoder.encode(userPW));
		return mapper.updatePwd(map);
	}
	//아이디 찾기
	public Member findId(String name, String email) {
		return mapper.findId(name,email);
	}
	
	//비밀번호 찾기
//	public Member findPw(String name, String id, String email) {
//		return mapper.findPw(name,id,email);
//	}
	
	//비밀번호 찾기 - 임시메일 보내기
//	public int modifyPw(String findName, String findId, String findEmail) {
		public Member findPw(String findName, String findId, String findEmail) {
		//비밀번호 암호화
		BCryptPasswordEncoder encoder= new BCryptPasswordEncoder();
		Member member = mapper.findPw(findName, findId, findEmail);
		System.out.println("--------비밀번호찾기 입력해서 찾은 정보 : "+ member);
		
		
		if(member.getNo() != 0) { // 성공. 일치하는 member 있음;
			System.out.println("------member.getNo() 찾아서 성공!! 비밀번호 생성--------");
			//임시 비밀번호 생성(UUID이용- 특수문자는 못넣음)
//			String tempPw="1234";//-를 제거
			String tempPw=UUID.randomUUID().toString().replace("-", "");//-를 제거
			tempPw = tempPw.substring(0,10);//tempPw를 앞에서부터 10자리 잘라줌
			System.out.println("---------임시 비밀번호 확인 : " + tempPw);
			
			//user객체에 임시 비밀번호 담기
			member.setPassword(tempPw);
			
			//메일 전송
			MailUtil mail = new MailUtil();
			try {
				System.out.println("----------sendEmail 시작-----------");
				mail.sendEmail(member);
				System.out.println("--@@@@---sendEmail 종료--@@@@@--");
			} catch (Exception e) {
				System.out.println("----------sendEmail 오류-----------");
				e.printStackTrace();
			}
			
			//회원 비밀번호를 암호화하여  user객체에 다시 저장
			String securePw = encoder.encode(member.getPassword());
			member.setPassword(securePw);
			System.out.println("-------member에 넣는비번 : " + member.getPassword());
			// 임시비밀번호로 바꿔주기
			mapper.modifyPw(member); 
			System.out.println("---------db에 변경, 저장된 비밀번호 : " + member.getPassword());
			
			return member; 
		}
		return null;
		
		
	}
		
	//카카오 로그인
	public Member loginKaKao(String kakaoToken) {
		Member member = mapper.selectMemberByKakaoToken(kakaoToken);
		if(member != null ) {
			// 성공일때!
			return member;
		}else {
			// 인증 실패했을때
			return null;
		}
	}
	
}
