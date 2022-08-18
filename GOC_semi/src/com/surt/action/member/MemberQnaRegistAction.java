package com.surt.action.member;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.dto.QuestionVO;
import com.surt.service.MemberService;
import com.surt.service.QuestionService;

public class MemberQnaRegistAction implements Action {
	
	private QuestionService questionService;
	private MemberService memberService;

	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/qnaRegist_success";
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO oldMember = (MemberVO) session.getAttribute("loginUser");
		
		String id = oldMember.getUser_id();
		
		String qType = request.getParameter("qType");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// 입력
		try {
			request.setCharacterEncoding("utf-8");
			QuestionVO question = new QuestionVO();
						
			question.setUser_id(id);
			question.setQuestion_title(title);
			question.setQuestion_type(qType);
			question.setQuestion_content(content);
			question.setQuestion_regdate(new Date());
			
			// 처리
			questionService.regist(question);
			
			MemberVO member = memberService.getMember(id);
			session.setAttribute("loginUser", member);
			
		} catch (Exception e) {
			e.printStackTrace();
			// exception처리...
			url = "/member/qnaRegist_fail";
		}

		return url;
	}

}
