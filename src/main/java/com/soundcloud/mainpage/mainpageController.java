package com.soundcloud.mainpage;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soundcloud.perPage.dao.perPageDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class mainpageController {
	
	@Inject
	private perPageDAO perpageDao;

	private static final Logger logger = LoggerFactory.getLogger(mainpageController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	
	
	@RequestMapping(value = "/getsongs", method = RequestMethod.GET)
	   public String getsongs(Model model) throws Exception {
	      model.addAttribute("songList",perpageDao.getsongs());
	      return "perpage/getsongs";
	   }
	
	
	@RequestMapping(value = "/LoginIndex", method = RequestMethod.GET) //post방식
	public String LoginIndex(Model model) throws Exception {
		model.addAttribute("mainsonglist", perpageDao.getsongs());
		return "/LoginIndex";
	}
	
}