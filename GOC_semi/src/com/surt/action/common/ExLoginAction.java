package com.surt.action.common;

import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;
import com.surt.service.MemberService;

public class ExLoginAction implements Action {

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "redirect:/member/list.do";

		// 입력
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String retUrl = request.getParameter("retUrl");

		System.out.println(retUrl);

		if (retUrl != null)
			url = "redirect:" + URLDecoder.decode(retUrl, "utf-8");

		try {
			memberService.login(id, pwd);

			HttpSession session = request.getSession();
			session.setAttribute("loginUser", memberService.getMember(id));
			session.setMaxInactiveInterval(10);

		} catch (NotFoundIdException | InvalidPasswordException e) {
			// e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			url = "/common/login_fail";

		} catch (Exception e) {
			e.printStackTrace();
			// Exceptin 처리
			throw e;
		}

		return url;
	}

}
