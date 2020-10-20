package com.soundcloud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

	@Setter(onMethod_ = @Autowired)
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void register(MemberVO member) {

		log.info("register......" + member);

		bCryptPasswordEncoder = new BCryptPasswordEncoder();
		 
		 String pw = member.getUserpw();
		 member.setUserpw(bCryptPasswordEncoder.encode(pw));
		

		mapper.insert(member);
		mapper.insert_useauth(member);
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