package com.surt.service;

import java.sql.SQLException;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.dto.BoardVO;
import com.surt.dto.MemberVO;

public interface BoardService {
	
	
	Map<String,Object> getBoardList(Criteria criteria) throws SQLException;
	
	Map<String,Object> getAllBoardList() throws SQLException;

	public void insert(BoardVO board) throws Exception;
	
	
}
