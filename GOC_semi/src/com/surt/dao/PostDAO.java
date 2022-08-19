package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import com.surt.command.Criteria;
import com.surt.dto.PostVO;
import com.surt.dto.MemberVO;

public interface PostDAO {

	List<PostVO> selectGganbooPostList(Criteria cri)throws SQLException;
	
	int selectGganbooPostListCount(Criteria cri)throws SQLException;

	public void postInsert(PostVO post)throws SQLException ;
	
	//자유 게시판  -- 카테고리 = 2
	
	List<PostVO> selectFreePostList(Criteria cri)throws SQLException;

	int selectFreePostListCount(Criteria cri)throws SQLException;
	
	List<PostVO> selectNoticePostList(Criteria cri)throws SQLException;
	
	int selectNoticePostListCount(Criteria cri)throws SQLException;
	
	PostVO selectPostById(int id)throws SQLException;
	
	public void insertFreePost(PostVO post) throws SQLException;
	
	// 공통 메소드
	
	public void updatePost(PostVO post) throws SQLException;
	
	void deletePost(int post_id) throws SQLException;
	
	List<PostVO> selectAllPopularPostList() throws SQLException;
	List<PostVO> selectAllNoticePostList() throws SQLException;
	
	List<PostVO> selectAllMyPostList(int user_idx) throws SQLException;

	List<PostVO> selectAllFreePostList() throws SQLException;


	
}
