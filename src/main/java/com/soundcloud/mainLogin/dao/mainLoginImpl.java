package com.soundcloud.mainLogin.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.soundcloud.perPage.domain.perPageVO;

@Repository("mainLoginDAO")
public class mainLoginImpl implements mainLoginDAO{

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<perPageVO> getsongsbytheme() throws Exception {
		
		return sqlSession.selectList("com.soundcloud.perPage.perPagemapper.getsongsbytheme.theme");
	}
}
