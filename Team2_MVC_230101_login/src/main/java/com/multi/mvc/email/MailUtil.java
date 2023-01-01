package com.multi.mvc.email;

import org.apache.commons.mail.HtmlEmail;

import com.multi.mvc.member.model.vo.Member;

public class MailUtil {
	
//	@Autowired
//	private MemberMapper mapper;
	
	public void sendEmail(Member member) throws Exception{
		
		//Mail Server 설정
		String charSet="utf-8";
		String hostSMTP="smtp.gmail.com";
		String hostSMTPid="testtest01090"; //관리자 이메일 아이디
		String hostSMTPpw="uzudaxtcjzvtpkqy"; //관리자 이메일 비밀번호
		
		//보내는 사람 
		String fromEmail="testtest01090@gmail.com"; //보내는 사람 이메일 
		String fromName="나만의박물관 관리자"; //보내는 사람 이름
		
		String subject=""; //메일 제목
		String msg="";
		
		subject="[나만의 박물관] 임시 비밀번호 발급 안내입니다.";
		msg += "<div align='lift'";
		msg += "<h3>";
		msg += member.getId() + "님의 임시 비밀번호입니다. <br>로그인 후 비밀번호를 변경해 주세요</h3>";
		msg += "<p>임시 비밀번호 : ";
		msg += member.getPassword() + "</p></div>";
		
		//email전송
		String mailRecipient = member.getEmail();//받는 사람 이메일 주소
//		String mailRecipient = "qwqqwwqqq@gmail.com";//받는 사람 이메일 주소
		try {
			//객체 선언
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); //SSL 사용(TLS가 없는 경우에 SSL사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(465); //SMTP 포트번호
			mail.setAuthentication(hostSMTPid, hostSMTPpw);
			mail.setStartTLSEnabled(true); //TLS 사용
			mail.addTo(mailRecipient,charSet);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
			
		}catch(Exception e) {

			e.printStackTrace();
		}
	}
//	public void findPw(HttpServletResponse response, Member member) {
//		response.setContentType("text/html;charset=utf-8");
//		
//	}

}
