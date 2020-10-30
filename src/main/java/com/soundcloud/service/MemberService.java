package com.soundcloud.service;

import org.springframework.stereotype.Service;

import com.soundcloud.domain.MemberVO;

@Service

public interface MemberService {

	public void register(MemberVO vo);
	public MemberVO get(String userid);
	public boolean modify(MemberVO vo);
	public boolean remove(int mid);
}
