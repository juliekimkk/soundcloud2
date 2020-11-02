package com.soundcloud.user.dao;

import java.util.List;

import com.soundcloud.user.domain.userVO;

public interface userDAO {

	public List<userVO> getuser() throws Exception;
	
	public List<userVO> getuserbyuserno(int user_no) throws Exception;
	
	public List<userVO> getuserbyusername(String user_name) throws Exception;
	
	public List<userVO> getuserbyuserno2(int user_no) throws Exception;

	public int insertuser(userVO uservo) throws Exception;

	public int updateuser(userVO uservo) throws Exception;

	public int deleteuser(int user_no) throws Exception;

}
