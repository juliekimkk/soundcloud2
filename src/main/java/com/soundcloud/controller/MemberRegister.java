package com.soundcloud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soundcloud.domain.MemberVO;
import com.soundcloud.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*") 
@AllArgsConstructor
@ContextConfiguration({
	  "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	  "file:src/main/webapp/WEB-INF/spring/security-context.xml"
	  })
public class MemberRegister {

	
	private MemberService service;

	
	@GetMapping("/join")
	public void memberJoin() {

		log.info("회원가입하면 : ");

	}

//	@RequestMapping(value = "/joinAction", method = RequestMethod.POST) //등록
	@PostMapping("/register") //등록
	public String register(MemberVO membervo) {

		System.out.println(membervo.toString());
		log.info("============================== ");
		
		String pw = membervo.getUserpw();
		
		log.info("register pw: " + pw);

		service.register(membervo);

		/* rttr.addFlashAttribute("result", member.getUserName()); */

		return "redirect:/customLogin";
	}

}