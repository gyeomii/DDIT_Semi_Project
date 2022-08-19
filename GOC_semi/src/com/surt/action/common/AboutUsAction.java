package com.surt.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;

public class AboutUsAction implements Action {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/common/aboutUs";
		
		String retUrl = request.getParameter("retUrl");
		
		request.setAttribute("retUrl", retUrl);
		
		return url;
	}

}
