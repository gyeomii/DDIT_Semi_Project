package com.surt.action.post;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.command.PostCommand;
import com.surt.controller.HttpRequestParameterAdapter;
import com.surt.dto.PostVO;
import com.surt.service.PostService;

public class PostAction implements Action {
	
	private PostService postService;
	public void setSearchMemberService(PostService postService) {
		this.postService=postService;
	}
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//화면
		String url="/member/regist_success";
		
		//입력
		try {
			
			request.setCharacterEncoding("utf-8");
			
			PostCommand command =HttpRequestParameterAdapter.execute(request,
							PostCommand.class );
			PostVO post = command.toPostVO();
					
			//처리
			postService.regist(post);
		
		}catch(Exception e) {
			e.printStackTrace();
			//exception 처리.....
			url="/member/regist_fail";
		}
		return url;
	}

}




