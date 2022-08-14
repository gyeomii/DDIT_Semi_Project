package com.surt.action.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.service.MemberService;

public class MemberNicknameCheckAction implements Action {

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;

		String nickname = request.getParameter("nickname");

		String resultStr = "";

		try {
			MemberVO member = memberService.checkNickname(nickname);
			if (member != null) {
				resultStr = "DUPLICATED";
			}

			response.setContentType("text/plain;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(resultStr);
			out.close();
		} catch (Exception e) {
			response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		return url;
	}
}
