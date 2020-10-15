package com.soundcloud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soundcloud.domain.MemberVO;
import com.soundcloud.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;

	@Override
	public void register(MemberVO member) {

		log.info("register......" + member);

		mapper.insert(member);
	}

	@Override
	public MemberVO get(String mid) {

		log.info("get......" + mid);

		return mapper.read(mid);

	}

	@Override
	public boolean modify(MemberVO board) {

		log.info("modify......" + board);

		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(int mid) {

		log.info("remove...." + mid);

		return mapper.delete(mid) == 1;
	}

}