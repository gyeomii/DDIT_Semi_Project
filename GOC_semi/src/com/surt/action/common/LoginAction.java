package com.surt.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;
import com.surt.service.MemberService;

public class LoginAction implements Action {
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/common/main.do";
		
		//입력
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		
		System.out.println(id +" : " + pwd);
		
		try {
			memberService.login(id, pwd);
			
			MemberVO member = memberService.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", member);
			session.setMaxInactiveInterval(6*60);//6분동안 사용자 요청이 없으면 server가 session 갱신
			
		}catch(NotFoundIdException | InvalidPasswordException e) {
			request.setAttribute("message", e.getMessage());
			url = "/common/login_fail";
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
		return url;
	}

}
