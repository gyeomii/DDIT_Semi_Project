package com.surt.service;

import java.sql.SQLException;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.dto.PostVO;
import com.surt.dto.MemberVO;

public interface PostService {
	// 목록조회
	Map<String, Object> getFreePostList(Criteria cri) throws SQLException;

	Map<String, Object> getNoticePostList(Criteria cri) throws SQLException;

	Map<String, Object> getGganbooPostList(Criteria criteria) throws SQLException;

	public void postInsert(PostVO post) throws Exception;

	// 상세조회
	PostVO getPost(int id) throws SQLException;

	// 회원등록
	public void regist(PostVO post) throws Exception;

	public void modify(PostVO post) throws Exception;

	public void remove(int post_id) throws Exception;

	Map<String, Object> getAllPopularPostList() throws Exception;
	
	Map<String, Object> getAllNoticePostList() throws Exception;
	
	Map<String, Object> getAllFreePostList() throws Exception;

	Map<String, Object> getAllMyPostList(int user_idx) throws SQLException;

}
