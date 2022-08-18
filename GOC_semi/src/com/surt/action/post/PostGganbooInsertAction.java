package com.surt.action.post;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.dto.PostVO;
import com.surt.service.PostService;

public class PostGganbooInsertAction implements Action {

	private PostService postService;
	
	public void setPostService(PostService postService) {
		this.postService = postService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String id = member.getUser_id();
		int user_idx = member.getUser_idx();
		
		String url="/board/insert_success";
		
		try {
			request.setCharacterEncoding("utf-8");
			
			String post_content = request.getParameter("content");
			
			
			PostVO post = new PostVO();

			//postid는 시퀸스라 여기서 안해도 괜춘?
			post.setUser_idx(user_idx);
			post.setTitle(null);
			post.setPost_content(post_content);
			post.setLiked(0);
			post.setHit_count(0);
			post.setCategory(3);
			post.setPost_add_date(new Date());
			post.setPost_mod_date(null);
			
			postService.postInsert(post);
			
		}catch (Exception e) {
			e.printStackTrace();
			url = "/member/regist_fail";
		}
		
		
		return url;
	}

}
