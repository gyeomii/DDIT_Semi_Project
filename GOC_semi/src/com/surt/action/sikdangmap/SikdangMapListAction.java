package com.surt.action.sikdangmap;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.dto.SikdangVO;
import com.surt.service.SikdangService;

public class SikdangMapListAction implements Action {

	private SikdangService sikdangService;
	
	public void setSikdangService(SikdangService sikdangService) {
		this.sikdangService = sikdangService;
	}


	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/sikdang/sikdanglist";
		
		List<SikdangVO> sikdangList = sikdangService.getSikdangList();
		request.setAttribute("sikdangList", sikdangList);
		
		return url;
	}

}
