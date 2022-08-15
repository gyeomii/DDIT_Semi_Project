package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.command.MemberRegistCommand;
import com.surt.command.MemberUpdateCommand;
import com.surt.controller.HttpRequestParameterAdapter;
import com.surt.dto.MemberVO;
import com.surt.service.MemberService;

public class MemberUpdateAction implements Action {
	
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 화면
				String url = "/member/update_success";

				// 입력
				try {
					request.setCharacterEncoding("utf-8");
					MemberUpdateCommand command = HttpRequestParameterAdapter.execute(request, MemberUpdateCommand.class);
					MemberVO oldMember = command.toMemberVO();
					// 처리
					memberService.modify(oldMember);
					
					MemberVO member = memberService.getMember(oldMember.getUser_id());					
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", member);

				} catch (Exception e) {
					e.printStackTrace();
					// exception처리...
					url = "/member/update_fail";
				}

				return url;
	}

}
