package com.soundcloud.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;

@Controller

@RequestMapping(value = "/perpage")
public class perpagecontroller {

	@Inject
	private perPageDAO perpageDao;
	private perPageVO pagevo;

	@RequestMapping(value = "/getsongs", method = RequestMethod.GET)
	public String getsongs(Model model) throws Exception {
		List<perPageVO> song = perpageDao.getsongs();
		model.addAttribute("songList", song);
		return "perpage/getsongs";
	}

	@RequestMapping(value = "/getuser", method = RequestMethod.GET)
	public String getuser(Model model, @RequestParam("user_no") int user_no) throws Exception {

		model.addAttribute("songList", perpageDao.getsongsbyusername(user_no));

		return "perpage/getuser";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(Model model) throws Exception {

		return "redirect:/perpage/getsongs";
	}

}
