package com.surt.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.controller.JSPViewResolver;
import com.surt.dto.MemberVO;

public class LoginUserCheckFilter implements Filter{

	private List<String> exURLs = new ArrayList<String>();
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String excludeURLNames = filterConfig.getInitParameter("exclude");
		
		StringTokenizer st = new StringTokenizer(excludeURLNames, ",");
		while(st.hasMoreTokens()) {
			exURLs.add(st.nextToken().trim());
		}
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		
		//제외할 url확인
		String reqUrl = httpReq.getRequestURI().substring(httpReq.getContextPath().length());
		
		if(excludeCheck(reqUrl)) {
			chain.doFilter(request, response);
			return;
		}
		
		//login check
		HttpSession session = httpReq.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		//login 확인
		if(loginUser == null) {//비로그인 상태
			httpReq.setAttribute("viewName", "redirect:/common/loginForm.do");
			JSPViewResolver.view(httpReq, httpResp);
		}else {
			chain.doFilter(request, response);
		}
	}

	private boolean excludeCheck(String url) {
		boolean result = false;
		
		result = result || url.length() <= 1;
		
		for(String exURL : exURLs) {
			result = result || url.contains(exURL);
		}
		return result;
	}

	@Override
	public void destroy() {}

}
