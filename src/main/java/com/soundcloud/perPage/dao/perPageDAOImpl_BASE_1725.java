package com.soundcloud.perPage.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.soundcloud.perPage.domain.perPageVO;

@Repository("pageDAO")
public class perPageDAOImpl implements perPageDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<perPageVO> getsongs() throws Exception {

		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongs");
	}

	@Override
	public int insertsong(perPageVO pagevo) throws Exception {

		return sqlSession.insert("com.soundcloud.perPage.perPagemapper.insertsong", pagevo);
	}

	@Override
	public int deletesong(int song_no) throws Exception {

		return sqlSession.insert("com.soundcloud.perPage.perPagemapper.deletesong", song_no);
	}

	@Override
	public int updatesong(perPageVO pagevo) throws Exception {

		return sqlSession.update("com.soundcloud.perPage.perPagemapper.updatesong", pagevo);
	}

	@Override
	public int viewcnt(int song_no) throws Exception {

		return sqlSession.update("com.soundcloud.perPage.perPagemapper.viewcnt", song_no);
	}
	
}
