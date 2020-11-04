package com.soundcloud.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soundcloud.domain.MemberVO;
import com.soundcloud.service.MemberService;
import com.soundcloud.user.dao.userDAO;
import com.soundcloud.user.domain.userVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Controller
@Log4j
@RequestMapping("/member/*") 
@ContextConfiguration({
	  "file:src/main/webapp/WEB-INF/spring/root-context.xml",
	  "file:src/main/webapp/WEB-INF/spring/security-context.xml"
	  })
@Component
public class MemberRegister {

	@Autowired
	private userDAO dao;
	@Autowired
	private userVO vo;
	@Autowired
	private MemberService service;
	
	
	@GetMapping("/join")
	public void memberJoin() {

		log.info("?�원가?�하�? : ");

	}

//	@RequestMapping(value = "/joinAction", method = RequestMethod.POST) //?�록
	@PostMapping("/register") //?�록
	public String register(MemberVO membervo) throws Exception {

		System.out.println(membervo.toString());
		log.info("============================== ");
		
		String pw = membervo.getUserpw();
		
		vo.setUser_id(membervo.getUserid());
		vo.setUser_password(membervo.getUserpw());
		vo.setUser_name(membervo.getUserName());
		vo.setE_mail(membervo.getUseremail());
		
		log.info("register pw: " + pw);

		
		service.register(membervo);	
		dao.insertuser(vo);

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
