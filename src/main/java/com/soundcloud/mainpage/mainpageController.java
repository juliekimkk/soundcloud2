package com.soundcloud.mainpage;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class mainpageController {

	@Inject
	private perPageDAO perpageDao;
	private perPageVO pagevo;

	private static final Logger logger = LoggerFactory.getLogger(mainpageController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/index", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) { return "index"; }
	 */

	@RequestMapping(value = "/LoginIndex", method = RequestMethod.GET) // post방식
	public String LoginIndex(Model model, String theme2) throws Exception {
		List<perPageVO> theme = perpageDao.getsongsbytheme("chill");
		model.addAttribute("theme", theme);
		log.info(theme.get(0).getSong_name());
		return "/LoginIndex";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) throws Exception {
		List<perPageVO> song = perpageDao.getsongs();
		model.addAttribute("songList", song);

		List<perPageVO> viewcnt2 = perpageDao.viewcnt2();
		log.info(viewcnt2.toString());
		model.addAttribute("viewcnt2", viewcnt2);

		return "/index";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) throws Exception {
		return "/test";
	}

	@RequestMapping(value = "/MainpagePlaylist", method = RequestMethod.GET)
	public String MainpagePlaylist(Model model) throws Exception {
		List<perPageVO> viewcnt2 = perpageDao.viewcnt2();
		log.info(viewcnt2.toString());
		model.addAttribute("viewcnt2", viewcnt2);
		return "/MainpagePlaylist";
	}

}