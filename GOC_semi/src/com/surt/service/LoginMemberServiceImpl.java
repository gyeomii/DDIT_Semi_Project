package com.surt.service;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.dao.MemberDAO;
import com.surt.dto.MemberVO;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;

public class LoginMemberServiceImpl extends MemberServiceImpl implements LoginMemberService {
	private MemberDAO memberDAO;

	public void setSearchMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException, SQLException {
		
		MemberVO member = memberDAO.selectMemberById(id);
			
			if (member == null) {
				throw new NotFoundIdException();
			}
			if (!pwd.equals(member.getPassword())) {
				throw new InvalidPasswordException();
			}
	}
}