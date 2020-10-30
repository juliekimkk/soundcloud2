package com.soundcloud.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.List;
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

	/*
	 * @RequestMapping(value = "/getuser", method = RequestMethod.GET) public String
	 * getuser(Model model, @RequestParam("user_name") String user_name) throws
	 * Exception {
	 * 
	 * model.addAttribute("songList", perpageDao.getsongsbyuserno(user_name));
	 * model.addAttribute("user", userDao.getuserbyuserno(user_name));
	 * 
	 * byte[] pro =
	 * Base64.getDecoder().decode(userDao.getuserbyuserno(user_name).get(0).
	 * getUser_pic());
	 * 
	 * String prostring = new String(pro, "UTF-8");
	 * 
	 * model.addAttribute("image",prostring);
	 * 
	 * // System.out.println(pro);
	 * 
	 * 
	 * byte[] song = null;
	 * 
	 * String as = null;
	 * 
	 * ArrayList<String> asr = new ArrayList<String>();
	 * 
	 * 
	 * 
	 * for(int i = 0; i < perpageDao.getsongsbyuserno(user_name).size();i++) {
	 * 
	 * song =
	 * Base64.getDecoder().decode(perpageDao.getsongsbyuserno(user_name).get(i).
	 * getSong().getBytes());
	 * 
	 * as = new String(song,"UTF-8");
	 * 
	 * // System.out.println(as);
	 * 
	 * asr.add(as);
	 * 
	 * //System.out.println(song); } // // System.out.println(asr);
	 * //System.out.println(song);
	 * 
	 * model.addAttribute("stringsong",asr);
	 * 
	 * 
	 * return "perpage/getuser"; }
	 */

	@RequestMapping(value = "/getuser", method = RequestMethod.GET)
	public String getuser(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("songList", perpageDao.getsongsbyuserno(user_name));
		model.addAttribute("user", userDao.getuserbyuserno(user_name));

		return "perpage/getuser";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("user", userDao.getuserbyuserno(user_name));

	}

	@PostMapping("/saveImage")
	public String saveImage(@RequestParam(value = "songpic") MultipartFile song_pic,
			@RequestParam(value = "song_") MultipartFile song, @ModelAttribute perPageVO vo, Model model)
			throws Exception {

		/*
		 * String path2 = "C:\\project\\src\\main\\webapp\\resources\\upload\\";
		 * 
		 * String stringpath="/resources/upload/";
		 * 
		 * File folder2 = new File(path2);
		 * 
		 * if (!folder2.exists()) { folder2.mkdir(); }
		 * 
		 * String path = path2 + vo.getUser_name();
		 * 
		 * File folder = new File(path);
		 * 
		 * if (!folder.exists()) { folder.mkdir(); }
		 * 
		 * Calendar cal = Calendar.getInstance(); String dateyear; String datemonth;
		 * String dateday;
		 * 
		 * dateyear = String.format("%04d", cal.get(Calendar.YEAR)); datemonth =
		 * String.format("%02d", cal.get(Calendar.MONTH) + 1); dateday =
		 * String.format("%02d", cal.get(Calendar.DAY_OF_MONTH));
		 * 
		 * String yearpath = path + "\\" + dateyear + "\\"; File yearfolder = new
		 * File(yearpath); if (!yearfolder.exists()) { yearfolder.mkdir(); }
		 * 
		 * String monthpath = yearpath + "\\" + datemonth + "\\"; File monthfolder = new
		 * File(monthpath); if (!monthfolder.exists()) { monthfolder.mkdir(); }
		 * 
		 * String daypath = monthpath + "\\" + dateday + "\\"; File dayfolder = new
		 * File(daypath); if (!dayfolder.exists()) { dayfolder.mkdir(); }
		 * 
		 * String picpath = song_pic.getOriginalFilename();
		 * 
		 * UUID picuuid = UUID.randomUUID();
		 * 
		 * File picfile = new File(daypath, picuuid.toString() + "_" + picpath);
		 * 
		 * song_pic.transferTo(picfile);
		 * 
		 * String songpath = song.getOriginalFilename();
		 * 
		 * UUID songuuid = UUID.randomUUID();
		 * 
		 * File songfile = new File(daypath, songuuid + "_" + songpath);
		 * 
		 * song.transferTo(songfile);
		 * 
		 * byte[] pic = null; String imagePath = picuuid.toString() + "_" + picpath;
		 * File image = new File(daypath + imagePath); InputStream is = new
		 * FileInputStream(image); pic = new byte[is.available()]; is.read(pic);
		 */
//		String getImage = Base64.getEncoder().encodeToString((stringpath+vo.getUser_name()+"/"+dateyear+"/"+datemonth+"/"+dateday+"/"+imagePath).getBytes());
		/*
		 * String getImage = Base64.getEncoder().encodeToString(pic);
		 * 
		 * byte[] song2 = null; String songPath = songuuid.toString() + "_" + songpath;
		 * File song1 = new File(daypath + songPath); InputStream sis = new
		 * FileInputStream(song1); song2 = new byte[sis.available()]; sis.read(song2);
		 */
//		String getSong = Base64.getEncoder().encodeToString((stringpath+vo.getUser_name()+"/"+dateyear+"/"+datemonth+"/"+dateday+"/"+songPath).getBytes());
		/*
		 * String getSong = Base64.getEncoder().encodeToString(song2);
		 * 
		 * vo.setSong_pic(getImage);
		 * 
		 * vo.setSong(getSong);
		 * 
		 * perpageDao.insertsong(vo);
		 */
		String path2 = "C:\\project\\src\\main\\webapp\\resources\\upload\\";

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

		String yearpath = path + "\\" + dateyear + "\\";
		File yearfolder = new File(yearpath);
		if (!yearfolder.exists()) {
			yearfolder.mkdir();
		}

		String monthpath = yearpath + "\\" + datemonth + "\\";
		File monthfolder = new File(monthpath);
		if (!monthfolder.exists()) {
			monthfolder.mkdir();
		}

		String daypath = monthpath + "\\" + dateday + "\\";
		File dayfolder = new File(daypath);
		if (!dayfolder.exists()) {
			dayfolder.mkdir();
		}

		String stringpath = "/resources/upload/" + vo.getUser_name() + "/" + dateyear + "/" + datemonth + "/" + dateday
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

		/*
		 * byte[] getImage = null; File pic = new File(pic_name2); InputStream pis = new
		 * FileInputStream(pic); getImage = new byte[pis.available()];
		 * pis.read(getImage);
		 */

		vo.setSong_pic(pic_name2);

		/*
		 * byte[] getSong = null; File songn = new File(song_name); InputStream sis =
		 * new FileInputStream(songn); getSong = new byte[sis.available()];
		 * sis.read(getSong);
		 */

		vo.setSong(song_name2);
		
		vo.setPath(stringpath);

		perpageDao.insertsong(vo);

		return "redirect:getuser?user_name=" + vo.getUser_name();
	}

	@RequestMapping(value = "/userupdate", method = RequestMethod.GET)
	public void userupdate(Model model, @RequestParam("user_name") String user_name) throws Exception {

		model.addAttribute("userList", userDao.getuserbyuserno(user_name));
		model.addAttribute("songList", perpageDao.getsongsbyuserno(user_name));

	}

	@PostMapping("/userupdateaction")
	public String userupdateaction(Model model, userVO vo, perPageVO pvo, @RequestParam("user_name") String user_name,
			@RequestParam(value = "userpic") MultipartFile user_pic) throws Exception {

		String path2 = "C:\\project\\src\\main\\webapp\\resources\\user_pic\\";

		String tagpath = "/resources/user_pic";

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

		String yearpath = path + "\\" + dateyear + "\\";
		File yearfolder = new File(yearpath);
		if (!yearfolder.exists()) {
			yearfolder.mkdir();
		}

		String monthpath = yearpath + datemonth + "\\";
		File monthfolder = new File(monthpath);
		if (!monthfolder.exists()) {
			monthfolder.mkdir();
		}

		String daypath = monthpath + dateday + "\\";
		File dayfolder = new File(daypath);
		if (!dayfolder.exists()) {
			dayfolder.mkdir();
		}

		String picpath = user_pic.getOriginalFilename();

		UUID picuuid = UUID.randomUUID();

		File picfile = new File(daypath, picuuid.toString() + "_" + picpath);

		user_pic.transferTo(picfile);

		byte[] pic = null;
		String imagePath = picuuid.toString() + "_" + picpath;
		File image = new File(daypath + imagePath);
		InputStream is = new FileInputStream(image);
		pic = new byte[is.available()];
		is.read(pic);
//		String getImage = Base64.getEncoder().encodeToString((tagpath+"/"+vo.getUser_name()+"/"+dateyear+"/"+datemonth+"/"+dateday+"/"+imagePath).getBytes());

		String getImage = Base64.getEncoder().encodeToString(pic);

		vo.setUser_pic(getImage);

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

}
