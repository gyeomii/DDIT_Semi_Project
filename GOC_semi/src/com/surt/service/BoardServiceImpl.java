package com.surt.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.command.PageMaker;
import com.surt.dao.BoardDAO;
import com.surt.dto.BoardVO;
import com.surt.dto.MemberVO;

public class BoardServiceImpl implements BoardService {

	private BoardDAO boardDAO;
	
	
	public void setBoardDAO(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	@Override
	public Map<String,Object> getBoardList(Criteria cri) throws SQLException {
		Map<String,Object> dataMap = null;
		
		List<BoardVO> boardList = boardDAO.selectGganbooBoardList(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardDAO.selectGganbooBoardListCount(cri));
		
		dataMap = new HashMap<String, Object>();
		dataMap.put("boardList", boardList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public void insert(BoardVO board) throws Exception {
		boardDAO.insert(board);
	}

	@Override
	public Map<String, Object> getAllBoardList() throws SQLException {
		return null;
	}
}
