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
		
		String url = "/post/gganboo_insert_success";
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		int idx = member.getUser_idx();
		String nickname = member.getNickname();
		String post_content = request.getParameter("content");
		
		try {
			
			PostVO post = new PostVO();
			post.setUser_idx(idx);
			post.setNickname(nickname);
			post.setTitle("깐부 모집중");
			post.setPost_content(post_content);
			post.setLiked(0);
			post.setHit_count(0);
			post.setCategory(3);
			post.setPost_add_date(new Date());
			post.setPost_mod_date(new Date());
			
			postService.postInsert(post);
			
		}catch (Exception e) {
			e.printStackTrace();
			url = "/post/gganboo_insert_fail";
		}
		
		return url;
	}

}
