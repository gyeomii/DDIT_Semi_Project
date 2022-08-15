package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;
import com.surt.service.LoginMemberService;

public class MemberLoginAction implements Action {
	
private LoginMemberService memberService;
	
	public void setLoginMemberService(LoginMemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/main";
		
		//입력
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		
		System.out.println(id +" : " + pwd);
		
		try {
			MemberVO member = memberService.login(id, pwd);
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", member);
		}catch(NotFoundIdException | InvalidPasswordException e) {
			request.setAttribute("message", e.getMessage());
			url = "/member/login_fail";
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
		return url;
	}

}
