package com.soundcloud.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.soundcloud.user.domain.userVO;

@Repository("userDAO")
public class userDAOImpl implements userDAO {

	@Inject
	private SqlSession sqlSession;

	@Override
	public List<userVO> getuser() throws Exception {

		return sqlSession.selectList("com.soundcloud.user.usermapper.getuser");
	}

	@Override
	public int insertuser(userVO uservo) throws Exception {

		return sqlSession.insert("com.soundcloud.user.usermapper.insertuser", uservo);
	}


	@Override
	public int updateuser(userVO uservo) throws Exception {

		return sqlSession.update("com.soundcloud.user.usermapper.updateuser", uservo);
	}

	@Override
	public int deleteuser(int user_no) throws Exception {
		
		return sqlSession.insert("com.soundcloud.user.usermapper.deleteuser", user_no);
	}

}
