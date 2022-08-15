package com.surt.service;

import java.sql.SQLException;

import com.surt.dto.MemberVO;
import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;

public interface LoginMemberService extends MemberService{
	
	MemberVO login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException,	SQLException;
}
