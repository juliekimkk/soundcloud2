package com.soundcloud.user.dao;

import java.util.List;

import com.soundcloud.user.domain.userVO;

public interface userDAO {

	public List<userVO> getuser() throws Exception;

	public int insertuser(userVO uservo) throws Exception;

	public int updateuser(userVO uservo) throws Exception;

	public int deleteuser(int user_no) throws Exception;

}
