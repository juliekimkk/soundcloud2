package com.soundcloud.service;

import org.springframework.stereotype.Service;

import com.soundcloud.domain.MemberVO;

@Service

public interface MemberService {

	public void register(MemberVO vo) throws Exception;
	public MemberVO get(String userid);
	public boolean modify(MemberVO vo);
	public boolean remove(int mid);
	public String userIdCheck(String user_id);//중복아이디체크
}
