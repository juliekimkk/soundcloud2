package com.soundcloud.mapper;

import com.soundcloud.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String userid);
}
