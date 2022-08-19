package com.surt.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.command.PageMaker;
import com.surt.dao.PostDAO;
import com.surt.dto.PostVO;
import com.surt.dto.MemberVO;

public class PostServiceImpl implements PostService {

	private PostDAO postDAO;

	public void setPostDAO(PostDAO postDAO) {
		this.postDAO = postDAO;
	}

	@Override
	public Map<String, Object> getGganbooPostList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = null;

		List<PostVO> postList = postDAO.selectGganbooPostList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(postDAO.selectGganbooPostListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("postList", postList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public Map<String, Object> getFreePostList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = null;

		List<PostVO> postList = postDAO.selectFreePostList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(postDAO.selectFreePostListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("postList", postList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}

	@Override
	public Map<String, Object> getNoticePostList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = null;

		List<PostVO> postList = postDAO.selectNoticePostList(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(postDAO.selectNoticePostListCount(cri));

		dataMap = new HashMap<String, Object>();
		dataMap.put("postList", postList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;

	}

	@Override
	public void postInsert(PostVO post) throws Exception {
		postDAO.postInsert(post);
	}

	@Override
	public PostVO getPost(int id) throws SQLException {
		PostVO post = postDAO.selectPostById(id);
		return post;
	}

	@Override
	public void regist(PostVO post) throws Exception {
		postDAO.insertFreePost(post);
	}

	@Override
	public void modify(PostVO post) throws Exception {
		postDAO.updatePost(post);
	}

	@Override
	public void remove(int post_id) throws Exception {
		postDAO.deletePost(post_id);
	}

	@Override
	public Map<String, Object> getAllPopularPostList() throws Exception {
		Map<String, Object> dataMap = null;

		List<PostVO> postList = postDAO.selectAllPopularPostList();

		dataMap = new HashMap<String, Object>();
		dataMap.put("postList", postList);

		return dataMap;
	}
	@Override
	public Map<String, Object> getAllNoticePostList() throws Exception {
		Map<String, Object> dataMap = null;
		
		List<PostVO> noticeList = postDAO.selectAllNoticePostList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("noticeList", noticeList);
		
		return dataMap;
	}

	@Override
	public Map<String, Object> getAllMyPostList(int user_idx) throws SQLException {
		Map<String, Object> dataMap = null;

		List<PostVO> myPostList = postDAO.selectAllMyPostList(user_idx);

		dataMap = new HashMap<String, Object>();
		dataMap.put("myPostList", myPostList);

		return dataMap;
	}

	@Override
	public Map<String, Object> getAllFreePostList() throws Exception {
		Map<String, Object> dataMap = null;
		
		List<PostVO> freeList = postDAO.selectAllFreePostList();
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("freeList", freeList);
		
		return dataMap;
	}

}
