package com.surt.action.common;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.PostVO;
import com.surt.service.MemberService;
import com.surt.service.PostService;

public class MainPageAction implements Action {

	private MemberService memberService;
	private PostService postService;

	public void setMemberService(MemberService service) {
		this.memberService = service;
	}

	public void setPostService(PostService service) {
		this.postService = service;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/common/main";
		
		request.setAttribute("mbti", memberService.getMBTIList());
		// 인기게시글 게시글호출
		Map<String, Object> posts = postService.getAllPopularPostList();
		System.out.println(posts.get("postList"));

		request.setAttribute("postAllPopularList", posts);

		try {

		} catch (Exception e) {
			e.printStackTrace();
			url = "/error/error";
		}
		return url;
	}

}
