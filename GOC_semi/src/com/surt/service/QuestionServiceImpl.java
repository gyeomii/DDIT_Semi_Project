package com.surt.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionException;

import com.surt.command.Criteria;
import com.surt.command.PageMaker;
import com.surt.dao.MemberDAO;
import com.surt.dao.QuestionDAO;
import com.surt.dto.MemberVO;
import com.surt.dto.QuestionVO;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;

public class QuestionServiceImpl implements QuestionService {

	private QuestionDAO questionDAO;
	public void setQuestionDAO(QuestionDAO questionDAO) {
		this.questionDAO = questionDAO;
	}
	
	@Override
	public Map<String, Object> getQuestionList(Criteria cri) throws SQLException {
		Map<String,Object> dataMap =null;
		
		//처리.......
		List<QuestionVO> questionList = questionDAO.selectQuestionList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(questionDAO.selectQuestionListCount(cri));
		
		dataMap = new HashMap<String,Object>();
		dataMap.put("questionList", questionList);
		dataMap.put("pageMaker",pageMaker);
		
		return dataMap;
	}
	@Override
	public QuestionVO getQuestion(String id) throws SQLException {
		QuestionVO question = questionDAO.selectQuestionById(id);
		return question;
	}
	@Override
	public void regist(QuestionVO question) throws SqlSessionException {
		questionDAO.insertQuestion(question);
	}
}
