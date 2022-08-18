package com.surt.action.post;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;


public class PostFormAction implements Action {
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/post/postForm";
		
		
		return url;
	}

}




