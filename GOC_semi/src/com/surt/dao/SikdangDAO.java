package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import com.surt.dto.SikdangVO;

public interface SikdangDAO {

	List<SikdangVO> selectSikdangList()throws SQLException;
	
	
	
}
