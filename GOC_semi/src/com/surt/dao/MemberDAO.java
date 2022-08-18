package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSessionException;

import com.surt.command.Criteria;
import com.surt.dto.MemberVO;

public interface MemberDAO {
	// 회원 검색
	MemberVO selectMemberById(String id)throws SQLException;
	MemberVO selectMemberByNickname(String nickname)throws SQLException;
	//회원 추가
	public void insertMember(MemberVO member) throws SqlSessionException;
	//회원 수정
	public void updateMember(MemberVO member) throws SqlSessionException;	
	//회원 삭제
	public void deleteMember(String id) throws SqlSessionException;
	
	int selectMBTI(String mbti) throws SqlSessionException;
	
}
