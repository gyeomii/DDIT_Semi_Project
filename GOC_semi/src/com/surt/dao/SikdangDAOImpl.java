package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.dto.SikdangVO;

public class SikdangDAOImpl implements SikdangDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<SikdangVO> selectSikdangList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {

			List<SikdangVO> sikdangList = session.selectList("Member-Mapper.selectSikdangList");
			return sikdangList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	
}
