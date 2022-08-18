package com.surt.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.controller.FileDownloadResolver;
import com.surt.controller.GetUploadPath;
import com.surt.dto.MemberVO;
import com.surt.service.MemberService;

public class GetPictureAction implements Action {
	
	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = null;
		
		String id = request.getParameter("id");
		try {
			MemberVO member = memberService.getMember(id);
			
			String fileName = member.getPicture();
			String savedPath = GetUploadPath.getUploadPath("member.picture.upload");
			
			FileDownloadResolver.sendFile(fileName, savedPath, request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		
		return url;
	}

}
