package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import com.surt.command.Criteria;
import com.surt.dto.BoardVO;
import com.surt.dto.MemberVO;

public interface BoardDAO {

	List<BoardVO> selectGganbooBoardList(Criteria cri)throws SQLException;
	
	int selectGganbooBoardListCount(Criteria cri)throws SQLException;

	public void insert(BoardVO board)throws SQLException ;
	
}
