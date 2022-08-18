package com.surt.action.member;

import java.io.File;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;

import com.surt.action.Action;
import com.surt.controller.FileUploadResolver;
import com.surt.controller.GetUploadPath;
import com.surt.controller.MultipartHttpServletRequestParser;
import com.surt.dto.MemberVO;
import com.surt.exception.NotMultipartFormDataException;
import com.surt.service.MemberService;

public class MemberPictureUploadAction implements Action {
	
	// 업로드 파일 환경 설정
	private static final int MEMORY_THRESHOLD = 1024 * 500; // 500KB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 1; // 1MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 2; // 2MB

	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String url="/member/pictureChange_success";
		
		try {
			// 1. request 변환
			MultipartHttpServletRequestParser multi = 
					new MultipartHttpServletRequestParser(request, MEMORY_THRESHOLD,
																   MAX_FILE_SIZE, 
																   MAX_REQUEST_SIZE);
			// 2. 저장할 경로
			String uploadPath = GetUploadPath.getUploadPath("member.picture.upload");
			
			// 3. 업로드된 이미지 저장
			FileItem[] items = multi.getFileItems("pictureFile");
			List<File> uploadFiles =FileUploadResolver.fileUpload(items, uploadPath);
			
			String uploadFileName = uploadFiles.get(0).getName();
			
			// 4. 이전 이미지 삭제
			String oldPicture = multi.getParameter("oldPicture");
			File oldFile = new File(uploadPath + File.separator + oldPicture);
			if (oldFile.exists()) {
				oldFile.delete();
			}
			
			String id = multi.getParameter("id");
			System.out.println("id : " + id);
			MemberVO oldMember =  memberService.getMember(id);
			oldMember.setPicture(uploadFileName);
			
			memberService.modify(oldMember);
			
			MemberVO member =  memberService.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", member);
			
		} catch (NotMultipartFormDataException e) {
			response.sendError(response.SC_BAD_REQUEST); // 400
		} catch (Exception e) {
			e.printStackTrace();	
			response.sendError(response.SC_INTERNAL_SERVER_ERROR); //500			
		}	
		
		return url;
	}

}











