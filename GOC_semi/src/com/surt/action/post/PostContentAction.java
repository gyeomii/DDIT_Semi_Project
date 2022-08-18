package com.surt.action.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.surt.action.Action;
import com.surt.dto.PostVO;
import com.surt.service.PostService;

public class PostContentAction implements Action
{
	private PostService postService;
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String url = "/post/postContent";
		String id = request.getParameter("id");
		int post_id = Integer.parseInt(id);
		
		try {
			PostVO post = postService.getPost(post_id);
			
			request.setAttribute("post", post);
			
		}catch(Exception e) {
			e.printStackTrace();
			// ........
			url = "/post/detail_fail";
			//response.sendError(response.SC_INTERNAL_SERVER_ERROR);
		}
		
		return url;
	}

}
