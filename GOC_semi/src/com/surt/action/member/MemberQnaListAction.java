package com.surt.action.member;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.dto.QuestionVO;
import com.surt.service.QuestionService;

public class MemberQnaListAction implements Action {

	private  QuestionService questionService;
	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
		
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/qnaList";
		
		HttpSession session = request.getSession();

		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String id = member.getUser_id();
		
		try {
			List<QuestionVO> questionList = questionService.getQuestionList(id);
			request.setAttribute("questionList", questionList);
		} catch (SQLException e) {
			e.printStackTrace();
			url = "/error/500";
		}
		return url;
	}

}
