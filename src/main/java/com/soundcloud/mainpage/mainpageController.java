package com.soundcloud.mainpage;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;

/**
 * Handles requests for the application home page.
 */
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
		
	
	@RequestMapping(value = "/LoginIndex", method = RequestMethod.GET) //post방식
	public String LoginIndex(Model model) throws Exception {
		model.addAttribute("mainsonglist", perpageDao.getsongs());
		return "/LoginIndex";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
		public String index(Model model) throws Exception {		
			List<perPageVO> song = perpageDao.getsongs();		
			model.addAttribute("songList", song);
			return "/index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) throws Exception {		
		return "/test";
	}
	
	
	
	
	
	
}