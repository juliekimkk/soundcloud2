package com.soundcloud.perPage.dao;

import java.util.List;

import com.soundcloud.perPage.domain.perPageVO;

public interface perPageDAO {

	public List<perPageVO> getsongs() throws Exception;
	
	public List<perPageVO> getsongsbyusername(String user_name) throws Exception;
	
	public List<perPageVO> getsongsbyuserno(int user_no) throws Exception;
	
	public perPageVO getsongbysongno2(int user_no) throws Exception;

	public int insertsong(perPageVO pagevo) throws Exception;
	
	public int deletesong(int song_no) throws Exception;
	
	public int updatesong(perPageVO pagevo) throws Exception;
	
	public int updatesonguser(perPageVO pagevo) throws Exception;
	
	public int viewcnt(int song_no) throws Exception;
	
	public List<perPageVO> viewcnt2() throws Exception;
	
	public List<perPageVO> getsongsbytheme(String theme) throws Exception;
	
	public List<perPageVO> getsongsbythemeNone() throws Exception;
	
	public List<perPageVO> getsongbysongno(int song_no) throws Exception;
	
	public List<perPageVO> getsongbyplaylist(String playlist) throws Exception;
	
	public List<perPageVO> getparticularsinger(String particular_singer) throws Exception;
	
	public List<perPageVO> getnextsong (perPageVO pagevo) throws Exception;

	public List<perPageVO> getprevsong (perPageVO pagevo) throws Exception;

}
