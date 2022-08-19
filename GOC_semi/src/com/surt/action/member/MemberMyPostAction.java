package com.surt.action.member;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.surt.action.Action;
import com.surt.command.Criteria;
import com.surt.dto.MemberVO;
import com.surt.service.PostService;

public class MemberMyPostAction implements Action {

	private PostService service;

	public void setPostService(PostService service) {
		this.service = service;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/member/mypost";

		String pageParam = request.getParameter("page");
		String perPageNumParam = request.getParameter("perPageNum");
		String keyword = request.getParameter("keyword");
		String searchType = request.getParameter("searchType");

		boolean criFlag = true;

		criFlag = criFlag && pageParam != null && !pageParam.isEmpty() && perPageNumParam != null
				&& !perPageNumParam.isEmpty();

		Criteria cri = new Criteria();
		if (criFlag) {
			try {
				cri.setPage(Integer.parseInt(pageParam));
				cri.setPerPageNum(Integer.parseInt(perPageNumParam));
				cri.setKeyword(keyword);
				cri.setSearchType(searchType);
			} catch (Exception e) {
				response.sendError(response.SC_BAD_REQUEST);
				return null;
			}
		}

		try {
			HttpSession session = request.getSession();
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			Map<String, Object> myAllPostList = service.getAllMyPostList(loginUser.getUser_idx());
			request.setAttribute("myAllPostList", myAllPostList);
		} catch (SQLException e) {
			e.printStackTrace();
			url = "/error/500";
		}

		return url;
	}

}
