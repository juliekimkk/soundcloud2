package com.soundcloud.perPage.dao;

import java.util.List;

import com.soundcloud.perPage.domain.perPageVO;

public interface perPageDAO {

	public List<perPageVO> getsongs() throws Exception;
	
	public List<perPageVO> getsongsbyusername(String user_name) throws Exception;

	public int insertsong(perPageVO pagevo) throws Exception;
	
	public int deletesong(int song_no) throws Exception;
	
	public int updatesong(perPageVO pagevo) throws Exception;
	
	public int viewcnt(int song_no) throws Exception;


}
