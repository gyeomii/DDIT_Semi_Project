package com.surt.action.common;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.dto.MemberVO;
import com.surt.dto.PostVO;
import com.surt.service.MemberService;
import com.surt.service.PostService;

public class MainPageAction implements Action {

	private MemberService memberService;
	private PostService postService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	public void setPostService(PostService postService) {
		this.postService = postService;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/common/main";
		try {
			request.setAttribute("mbti", memberService.getMBTIList());
			// 인기게시글 게시글호출
			Map<String, Object> popularPosts = postService.getAllPopularPostList();
			request.setAttribute("postAllPopularList", popularPosts);
			// 공지게시글 게시글호출
			Map<String, Object> noticePosts = postService.getAllNoticePostList();
			request.setAttribute("postAllNoticeList", noticePosts);
			// 자유게시판 게시글 호출
			Map<String, Object> freePosts = postService.getAllFreePostList();
			request.setAttribute("postAllFreeList", freePosts);
			// 마이페이지 게시글 호출
			HttpSession session = request.getSession();
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			Map<String, Object> myAllPostList = postService.getAllMyPostList(loginUser.getUser_idx());
			request.setAttribute("myAllPostList", myAllPostList);
		} catch (Exception e) {
			e.printStackTrace();
			url = "/error/error";
		}
		return url;
	}

}
