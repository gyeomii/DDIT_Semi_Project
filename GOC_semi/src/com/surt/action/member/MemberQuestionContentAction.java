package com.surt.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.dto.PostVO;
import com.surt.dto.QuestionVO;
import com.surt.service.MemberService;
import com.surt.service.QuestionService;

public class MemberQuestionContentAction implements Action {
	
	private QuestionService questionService;

	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/questionContent";
		String q_idx = request.getParameter("idx");
		int idx = Integer.parseInt(q_idx);
		
		try {
			QuestionVO question = questionService.getQuestion(idx);
			
			request.setAttribute("question", question);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/post/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		
		return url;
	}

}
