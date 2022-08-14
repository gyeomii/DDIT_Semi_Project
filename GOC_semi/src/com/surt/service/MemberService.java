package com.surt.service;

import java.sql.SQLException;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.dto.MemberVO;

public interface MemberService {

	// 회원목록조회
	Map<String, Object> getMemberList(Criteria cri) throws SQLException;

	// 회원상세조회
	MemberVO getMember(String id) throws SQLException;
	MemberVO checkNickname(String nickname)throws SQLException;

	// 회원등록
	public void regist(MemberVO member) throws Exception;

	// 회원수정
	public void modify(MemberVO member) throws Exception;

	// 회원탈퇴
	public void remove(String id) throws Exception;
}
