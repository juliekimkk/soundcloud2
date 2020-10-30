package com.soundcloud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soundcloud.domain.MemberVO;
import com.soundcloud.service.MemberService;
import com.soundcloud.user.dao.userDAO;
import com.soundcloud.user.domain.userVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
public class MemberRegister {
	@Autowired
	private userVO vo;
	@Autowired
	private userDAO dao;
	@Autowired
	private MemberService service;

	@GetMapping("/join")
	public void memberJoin() {

		log.info("회원가입하면 : ");

	}

//	@RequestMapping(value = "/joinAction", method = RequestMethod.POST) //등록
	@PostMapping("/register") // 등록
	public String register(MemberVO membervo) throws Exception {

		System.out.println(membervo.toString());
		log.info("============================== ");

		String pw = membervo.getUserpw();

		log.info("register pw: " + pw);

		service.register(membervo);

		vo.setUser_id(membervo.getUserid());
		vo.setE_mail(membervo.getUseremail());
		vo.setUser_name(membervo.getUserName());
		vo.setUser_id(membervo.getUserid());
		vo.setUser_password(membervo.getUserpw());

		dao.insertuser(vo);

		/* rttr.addFlashAttribute("result", member.getUserName()); */

		return "redirect:/customLogin";
	}

}
