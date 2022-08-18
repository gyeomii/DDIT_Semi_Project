package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionException;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.command.Criteria;
import com.surt.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	private SqlSessionFactory sqlSessionFactory;	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			MemberVO member=session.selectOne("Member-Mapper.selectMemberById",id);			
			return member;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
	
	@Override
	public void insertMember(MemberVO member) throws SqlSessionException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Member-Mapper.insertMember", member);
		}catch (Exception e) {
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	@Override
	public void updateMember(MemberVO member) throws SqlSessionException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Member-Mapper.updateMember", member);
		}catch (Exception e) {
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	@Override
	public void deleteMember(String id) throws SqlSessionException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Member-Mapper.deleteMember", id);
		}catch (Exception e) {
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}

	@Override
	public MemberVO selectMemberByNickname(String nickname) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			MemberVO member=session.selectOne("Member-Mapper.selectMemberByNickname",nickname);			
			return member;			
		}catch(Exception e) {
			//에러처리
			throw e;
		}finally {
			if(session != null)session.close();
		}
	}
	
	@Override
	public int selectMBTI(String mbti) throws SqlSessionException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int getMbti = session.selectOne("Member-Mapper.selectMBTI", mbti);
			return getMbti;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

}
