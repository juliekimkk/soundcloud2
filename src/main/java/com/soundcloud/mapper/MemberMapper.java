package com.soundcloud.mapper;

import org.springframework.stereotype.Service;

import com.soundcloud.domain.MemberVO;


public interface MemberMapper {

	public MemberVO read(String userid);
}
