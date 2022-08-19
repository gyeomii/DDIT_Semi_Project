package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.command.Criteria;
import com.surt.dto.BoardVO;
import com.surt.dto.MemberVO;

public class BoardDAOImpl implements BoardDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<BoardVO> selectGganbooBoardList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset, limit);

			List<BoardVO> boardList = session.selectList("Board-Mapper.selectGganbooBoardList", cri, rowBounds);
			return boardList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	
	@Override
	public int selectGganbooBoardListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {

			int count = session.selectOne("Board-Mapper.selectGganbooBoardListCount", cri);
			return count;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)session.close();
		}
	}

	@Override
	public void insert(BoardVO board) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Board-Mapper.insertPost", board);
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null) {
				session.close();
			}
		}
		
	}
}
