package com.surt.service;

import java.sql.SQLException;

import com.surt.exception.InvalidPasswordException;
import com.surt.exception.NotFoundIdException;

public interface LoginMemberService extends MemberService{
	
	void login(String id, String pwd) throws NotFoundIdException, InvalidPasswordException,
		SQLException;
}
