package com.surt.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSessionException;

import com.surt.dto.QuestionVO;

public interface QuestionService {

	// 질문 목록 조회
	List<QuestionVO> getQuestionList(String id) throws SQLException;

	// 질문 검색
	QuestionVO getQuestion(int idx) throws SQLException;

	// 질문 추가
	public void regist(QuestionVO question) throws SqlSessionException;
}
