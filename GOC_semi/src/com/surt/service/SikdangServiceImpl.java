package com.surt.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.surt.command.Criteria;
import com.surt.command.PageMaker;
import com.surt.dao.MemberDAO;
import com.surt.dao.SikdangDAO;
import com.surt.dto.MemberVO;
import com.surt.dto.SikdangVO;

public class SikdangServiceImpl implements SikdangService {

	private SikdangDAO sikdangDAO;
	
	
	public void setSikdangDAO(SikdangDAO sikdangDAO) {
		this.sikdangDAO = sikdangDAO;
	}


	@Override
	public List<SikdangVO> getSikdangList() throws SQLException {
		
		List<SikdangVO> sikdangList = sikdangDAO.selectSikdangList();
		
		return sikdangList;
		
	}

	

}
