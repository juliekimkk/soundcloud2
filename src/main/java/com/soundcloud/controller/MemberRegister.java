package com.soundcloud.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

		log.info("?åÏõêÍ∞Ä?ÖÌïòÎ©? : ");

	}

//	@RequestMapping(value = "/joinAction", method = RequestMethod.POST) //?±Î°ù
	@PostMapping("/register") //?±Î°ù
	public String register(MemberVO membervo) {

		System.out.println(membervo.toString());
		log.info("============================== ");
		
		String pw = membervo.getUserpw();
		
		log.info("register pw: " + pw);

		service.register(membervo);

		/* rttr.addFlashAttribute("result", member.getUserName()); */

		return "redirect:/customLogin";
	}
	
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public @ResponseBody String checkSignup(HttpServletRequest request, Model model){

		String id = request.getParameter("id");
		System.out.println("idddddddddddddd: 1" + id);

		return service.userIdCheck(id);
	
	}
}
