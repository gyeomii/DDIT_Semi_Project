package com.surt.service;

import java.sql.SQLException;
import java.util.List;

import com.surt.dto.SikdangVO;

public interface SikdangService {
	
	//회원목록조회
	List<SikdangVO> getSikdangList() throws SQLException;
	
	
}
