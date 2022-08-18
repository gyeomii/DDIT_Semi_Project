package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSessionException;

import com.surt.command.Criteria;
import com.surt.dto.MemberVO;
import com.surt.dto.QuestionVO;

public interface QuestionDAO {
	// 질문 목록 조회
	List<QuestionVO> selectQuestionList(Criteria cri) throws SQLException;

	// 일반 질문리스트 전체 개수
	int selectQuestionListCount(Criteria cri) throws SQLException;

	// 질문 검색
	QuestionVO selectQuestionById(String id) throws SQLException;

	// 질문 추가
	public void insertQuestion(QuestionVO question) throws SqlSessionException;

}
