package com.soundcloud.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Base64;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;
import com.soundcloud.user.dao.userDAO;
import com.soundcloud.user.domain.userVO;

@Controller

@RequestMapping(value = "/perpage")
public class perpagecontroller {

	@Inject
	private perPageDAO perpageDao;
	@Inject
	private userDAO userDao;

	private static final Logger log = LoggerFactory.getLogger(perpagecontroller.class);

	@RequestMapping(value = "/getsongs", method = RequestMethod.GET)
	public String getsongs(Model model) throws Exception {
		List<perPageVO> song = perpageDao.getsongs();
		model.addAttribute("songList", song);
		return "perpage/getsongs";
	}

	

	@RequestMapping(value = "/getuser", method = RequestMethod.GET)
	public String getuser(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("songList", perpageDao.getsongsbyusername(user_name));
		model.addAttribute("user", userDao.getuserbyusername(user_name));

		return "perpage/getuser";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("user", userDao.getuserbyusername(user_name));

	}

	@PostMapping("/saveImage")
	public String saveImage(@RequestParam(value = "songpic") MultipartFile song_pic,
			@RequestParam(value = "song_") MultipartFile song, @ModelAttribute perPageVO vo, Model model, MultipartHttpServletRequest request)
			throws Exception {
		
		String path3 = request.getSession().getServletContext().getRealPath("/") + "upload/";
		
		File folder3 = new File(path3);

		if (!folder3.exists()) {
			folder3.mkdir();
		}
		
		String path11 = path3+ vo.getUser_name()+"/";

		File folder2 = new File(path11);

		if (!folder2.exists()) {
			folder2.mkdir();
		}


		Calendar cal = Calendar.getInstance();
		String dateyear;
		String datemonth;
		String dateday;

		dateyear = String.format("%04d", cal.get(Calendar.YEAR));
		datemonth = String.format("%02d", cal.get(Calendar.MONTH) + 1);
		dateday = String.format("%02d", cal.get(Calendar.DAY_OF_MONTH));

		String yearpath = path11 + "/" + dateyear + "/";
		File yearfolder = new File(yearpath);
		if (!yearfolder.exists()) {
			yearfolder.mkdir();
		}

		String monthpath = yearpath + "/" + datemonth + "/";
		File monthfolder = new File(monthpath);
		if (!monthfolder.exists()) {
			monthfolder.mkdir();
		}

		String daypath = monthpath + "/" + dateday + "/";
		File dayfolder = new File(daypath);
		if (!dayfolder.exists()) {
			dayfolder.mkdir();
		}

		String stringpath = "/upload/" + vo.getUser_name() + "/" + dateyear + "/" + datemonth + "/" + dateday
				+ "/";

		String pic_name = song_pic.getOriginalFilename();

		UUID picuid = UUID.randomUUID();

		String pic_name2 = picuid + pic_name;

		String song_name = song.getOriginalFilename();

		UUID songuid = UUID.randomUUID();

		String song_name2 = songuid + song_name;

		File picfile = new File(daypath, pic_name2);

		song_pic.transferTo(picfile);

		File songfile = new File(daypath, song_name2);

		song.transferTo(songfile);

		vo.setSong_pic(pic_name2);

		vo.setSong(song_name2);
		
		vo.setPath(stringpath);

		perpageDao.insertsong(vo);

		return "redirect:getuser?user_name=" + vo.getUser_name();
	}

	@RequestMapping(value = "/userupdate", method = RequestMethod.GET)
	public void userupdate(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("userList", userDao.getuserbyusername(user_name));
		model.addAttribute("songList", perpageDao.getsongsbyusername(user_name));

	}

	@PostMapping("/userupdateaction")
	public String userupdateaction(Model model, userVO vo, perPageVO pvo, @RequestParam("user_name") String user_name,
			@RequestParam(value = "userpic") MultipartFile user_pic,MultipartHttpServletRequest request) throws Exception {

		String path2 = request.getSession().getServletContext().getRealPath("/") + "userpic/";

		File folder2 = new File(path2);

		if (!folder2.exists()) {
			folder2.mkdir();
		}

		String path = path2 + vo.getUser_name();

		File folder = new File(path);

		if (!folder.exists()) {
			folder.mkdir();
		}

		Calendar cal = Calendar.getInstance();
		String dateyear;
		String datemonth;
		String dateday;

		dateyear = String.format("%04d", cal.get(Calendar.YEAR));
		datemonth = String.format("%02d", cal.get(Calendar.MONTH) + 1);
		dateday = String.format("%02d", cal.get(Calendar.DAY_OF_MONTH));

		String yearpath = path + "/" + dateyear + "/";
		File yearfolder = new File(yearpath);
		if (!yearfolder.exists()) {
			yearfolder.mkdir();
		}

		String monthpath = yearpath + datemonth + "/";
		File monthfolder = new File(monthpath);
		if (!monthfolder.exists()) {
			monthfolder.mkdir();
		}

		String daypath = monthpath + dateday + "/";
		File dayfolder = new File(daypath);
		if (!dayfolder.exists()) {
			dayfolder.mkdir();
		}

		String picpath = user_pic.getOriginalFilename();

		UUID picuuid = UUID.randomUUID();
		
		String stringpath = "/userpic/" + vo.getUser_name() + "/" + dateyear + "/" + datemonth + "/" + dateday
				+ "/";

		File picfile = new File(daypath, picuuid.toString() + "_" + picpath);

		String imagePath = picuuid.toString() + "_" + picpath;
		
		user_pic.transferTo(picfile);

		vo.setUser_pic(picuuid + picpath);
		vo.setPath(stringpath);

		userDao.updateuser(vo);

		perpageDao.updatesonguser(pvo);

		return "redirect:getuser?user_name=" + vo.getUser_name();
	}

	@RequestMapping(value = "/songdelete", method = RequestMethod.GET)
	public String songdelete(Model model, perPageVO vo, @RequestParam(value = "song_no") int song_no,
			@RequestParam(value = "user_name") String user_name) throws Exception {

		perpageDao.deletesong(song_no);

		return "redirect:getuser?user_name=" + user_name;

	}
	
	
	@RequestMapping(value = "/userpage", method = RequestMethod.GET)
	public String userpage() throws Exception {
		return "perpage/userpage";
	}
	
	@RequestMapping(value ="/getsongno" , method = RequestMethod.GET)
	public String getsongno(@RequestParam(value="song_no") int song_no) throws Exception{
		String path = perpageDao.getsongbysongno(song_no).get(0).getPath();
		String songname = perpageDao.getsongbysongno(song_no).get(0).getSong();
		
		String getsong = path + songname;
		
		return getsong;
	}
	
	@RequestMapping(value ="/updatesongpro", method = RequestMethod.GET)
	public String updatesong(@ModelAttribute perPageVO vo,@RequestParam(value="song_no")int song_no,
			@RequestParam(value = "songpic") MultipartFile song_pic,
			@RequestParam(value = "song_") MultipartFile song) throws Exception{
		
		return "redirect:getuser?user_name=" + vo.getUser_name();
	}
	
	/*
	 * @RequsetMapping(value ="/updatesong", method + RequestMethod.POST) pubplic
	 * String
	 * 
	 */
}
