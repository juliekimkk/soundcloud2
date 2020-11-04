package com.soundcloud.mainpage;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;
import com.soundcloud.user.dao.userDAO;
import com.soundcloud.user.domain.userVO;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class mainpageController {

	@Inject
	private perPageDAO perpageDao;

	@Inject
	private userDAO userDao;


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
		List<perPageVO> theme;
		if (theme2 == null || theme2.equals("")) {
			theme = perpageDao.getsongsbythemeNone();
			model.addAttribute("theme", theme);
		} else {
			theme = perpageDao.getsongsbytheme(theme2);
			model.addAttribute("theme", theme);
		}

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
	

	@RequestMapping(value = "/playpage", method = RequestMethod.GET)
	public String test(Model model, @RequestParam("song_no") int song_no, @RequestParam("user_name") String user_name, @RequestParam("play_list") String play_list) throws Exception {
		List<perPageVO> song = perpageDao.getsongs();
		model.addAttribute("songList", song);

		List<perPageVO> viewcnt2 = perpageDao.viewcnt2();;
		model.addAttribute("viewcnt2", viewcnt2);
		
		List<perPageVO> songno = perpageDao.getsongbysongno(song_no);
		model.addAttribute("songno", songno);


		List<userVO> username = userDao.getuserbyusername(user_name);
		model.addAttribute("user_name", user_name);
		
		List<perPageVO> playlist = perpageDao.getsongbyplaylist(play_list);
		model.addAttribute("playlist", playlist);
		
		return "/playpage";


	}
	


	
	@RequestMapping(value = "/playlist", method = RequestMethod.GET)
	public String playlist(Model model) throws Exception {
		List<perPageVO> song = perpageDao.getsongs();
		model.addAttribute("songList", song);

		List<perPageVO> viewcnt2 = perpageDao.viewcnt2();
		log.info(viewcnt2.toString());
		model.addAttribute("viewcnt2", viewcnt2);
		
		return "/playlist";

	}
	
	
	@RequestMapping(value = "/MainpagePlaylist", method = RequestMethod.GET)
	public String MainpagePlaylist(Model model, @RequestParam("particular_singer") String particular_singer) throws Exception {
		List<perPageVO> viewcnt2 = perpageDao.viewcnt2();
		model.addAttribute("viewcnt2", viewcnt2);
		


		List<perPageVO> particularsinger = perpageDao.getparticularsinger(particular_singer);
		/*
		 * System.out.println("--------------1: " + particular_singer); 값이 들어있는지 확인하는 로그
		 * System.out.println("--------------2: " +
		 * particularsinger.get(0).getSong_name());
		 */
		return "/MainpagePlaylist";
	}
	
	
	@RequestMapping(value = "/ParticularSinger", method = RequestMethod.GET)
	public String ParticularSinger(Model model, @RequestParam("particular_singer") String particular_singer) throws Exception {
		
		List<perPageVO> particularsinger = perpageDao.getparticularsinger(particular_singer);
		model.addAttribute("particularsinger", particularsinger);

		return "/ParticularSinger";
	}
	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String get3D(@RequestParam(value="song_singer")String song_singer) throws Exception {
				
		return "/test";

	}
	
	
	@RequestMapping(value = "/navbar", method = RequestMethod.GET)
	public String navbar() throws Exception {
				
		return "/navbar";


}
}