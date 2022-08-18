package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionException;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.command.Criteria;
import com.surt.dto.MemberVO;
import com.surt.dto.QuestionVO;

public class QuestionDAOImpl implements QuestionDAO{
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<QuestionVO> selectQuestionList(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<QuestionVO> questionList = session.selectList("Question-Mapper.selectQuestionListById",id);			
			return questionList;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
	
	@Override
	public QuestionVO selectQuestionByIdx(int idx) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			QuestionVO question = session.selectOne("Question-Mapper.selectQuestionByIdx",idx);			
			return question;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
	@Override
	public void insertQuestion(QuestionVO question) throws SqlSessionException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Question-Mapper.insertQuestion", question);
		}catch (Exception e) {
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
}
