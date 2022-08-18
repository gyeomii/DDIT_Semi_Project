package com.surt.service;

import java.sql.SQLException;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionException;

import com.surt.command.Criteria;
import com.surt.dto.QuestionVO;

public interface QuestionService {

	// 질문 목록 조회
	Map<String, Object> getQuestionList(Criteria cri) throws SQLException;

	// 질문 검색
	QuestionVO getQuestion(String id) throws SQLException;

	// 질문 추가
	public void regist(QuestionVO question) throws SqlSessionException;
}
