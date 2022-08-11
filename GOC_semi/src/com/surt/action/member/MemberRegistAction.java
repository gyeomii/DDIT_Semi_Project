package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.command.MemberRegistCommand;
import com.surt.controller.HttpRequestParameterAdapter;
import com.surt.dto.MemberVO;
import com.surt.service.MemberService;

public class MemberRegistAction implements Action {
	
	private MemberService searchMemberService;

	public void setSearchMemberService(MemberService searchMemberService) {
		this.searchMemberService = searchMemberService;
	}
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 화면
		String url = "/member/regist_success";

		// 입력
		try {
			request.setCharacterEncoding("utf-8");

			MemberRegistCommand command = HttpRequestParameterAdapter.execute(request, MemberRegistCommand.class);
			MemberVO member = command.toMemberVO();

			// 처리
			searchMemberService.regist(member);

		} catch (Exception e) {
			e.printStackTrace();
			// exception처리...
			url = "/member/regist_fail";
		}

		return url;
	}

}