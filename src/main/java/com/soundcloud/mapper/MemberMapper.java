package com.soundcloud.mapper;

import org.springframework.stereotype.Service;

import com.soundcloud.domain.MemberVO;


public interface MemberMapper {

	public MemberVO read(String userid);
	public int insert(MemberVO membervo);
	public int update(MemberVO membervo);
	public int delete(int mid);
}
