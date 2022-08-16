package com.surt.action.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.service.MemberService;

public class MainPageAction implements Action{
	
	private MemberService service;
	public void setMemberService(MemberService service) {
		this.service = service;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/common/main";
		HttpSession session = request.getSession();
		
		try {

		} catch (Exception e) {
			e.printStackTrace();
			url = "/error/error";
		}
		return url;
	}

}
