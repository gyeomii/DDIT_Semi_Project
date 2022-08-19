package com.surt.dao;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.surt.command.Criteria;
import com.surt.dto.PostVO;
import com.surt.dto.MemberVO;

public class PostDAOImpl implements PostDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<PostVO> selectGganbooPostList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset, limit);

			List<PostVO> postList = session.selectList("Post-Mapper.selectGganbooPostList", cri, rowBounds);
			return postList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectGganbooPostListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {

			int count = session.selectOne("Post-Mapper.selectGganbooPostListCount", cri);
			return count;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void postInsert(PostVO post) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Post-Mapper.postInsert", post);
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null) {
				session.close();
			}
		}

	}

	@Override
	public List<PostVO> selectFreePostList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset, limit);

			List<PostVO> postList = session.selectList("Post-Mapper.selectFreePostList", cri, rowBounds);

			return postList;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}

	}

	@Override
	public int selectFreePostListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {

			int count = session.selectOne("Post-Mapper.selectFreePostListCount", cri);
			return count;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}

	}
	
	@Override
	public List<PostVO> selectNoticePostList(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int offset = cri.getStartRowNum();
			int limit = cri.getPerPageNum();
			RowBounds rowBounds = new RowBounds(offset, limit);
			
			List<PostVO> postList = session.selectList("Post-Mapper.selectNoticePostList", cri, rowBounds);
			
			return postList;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		
	}
	
	@Override
	public int selectNoticePostListCount(Criteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			
			int count = session.selectOne("Post-Mapper.selectNoticePostListCount", cri);
			return count;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
		
	}

	@Override
	public PostVO selectPostById(int id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			PostVO post = session.selectOne("Post-Mapper.selectPostById", id);
			return post;
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertFreePost(PostVO post) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Post-Mapper.insertFreeBoardPost", post);
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void updatePost(PostVO post) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Post-Mapper.updatePost", post);
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void deletePost(int post_id) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			session.update("Post-Mapper.deletePost", post_id);
		} catch (Exception e) {
			// 에러처리
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	@Override
	public List<PostVO> selectAllPopularPostList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<PostVO> allPopularPostList = session.selectList("Post-Mapper.selectAllPopularPostList");
			return allPopularPostList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	@Override
	public List<PostVO> selectAllNoticePostList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<PostVO> allNoticePostList = session.selectList("Post-Mapper.selectAllNoticePostList");
			return allNoticePostList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public List<PostVO> selectAllMyPostList(int user_idx) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<PostVO> myPostList = session.selectList("Post-Mapper.selectMyPostList",user_idx);
			return myPostList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public List<PostVO> selectAllFreePostList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			List<PostVO> allNoticePostList = session.selectList("Post-Mapper.selectFreePostList");
			return allNoticePostList;
		} catch (Exception e) {
			throw e;
		} finally {
			if (session != null)
				session.close();
		}
	}


}
