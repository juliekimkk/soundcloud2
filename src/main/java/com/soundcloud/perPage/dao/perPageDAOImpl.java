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
	public List<perPageVO> getsongsbyuserno(int user_no) throws Exception{
		
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongsbyuserno", user_no);
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
	public int updatesonguser(perPageVO pagevo) throws Exception {

		return sqlSession.update("com.soundcloud.perPage.perPagemapper.updatesonguser", pagevo);
	}

	@Override
	public int viewcnt(int song_no) throws Exception {

		return sqlSession.update("com.soundcloud.perPage.perPagemapper.viewcnt", song_no);
	}
	
	@Override
	public List<perPageVO> viewcnt2() throws Exception {

		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.viewcnt2");
	}
	
	@Override
	public List<perPageVO> getsongsbytheme(String theme) throws Exception {
		
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongsbytheme", theme);
	}

	@Override
	public List<perPageVO> getsongsbythemeNone() throws Exception {
		
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongsbythemeNone", "");
	}
	
	@Override
	public List<perPageVO> getsongbysongno(int song_no) throws Exception{
		
		System.out.println("-----------------------------1");
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongbysongno", song_no);
	}

	@Override
	public List<perPageVO> getsongbyplaylist(String playlist) throws Exception{
		
		System.out.println("-----------------------------1");
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongbyplaylist", playlist);
	}
	

}
