package com.soundcloud.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Base64;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String getuser(Model model, @RequestParam("user_no") int user_no) throws Exception {

		model.addAttribute("songList", perpageDao.getsongsbyuserno(user_no));
		model.addAttribute("user",userDao.getuserbyuserno(user_no));

		return "perpage/getuser";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert(Model model,@RequestParam("user_no") int user_no) throws Exception {
		
		model.addAttribute("user",userDao.getuserbyuserno(user_no));

	}
	
	@PostMapping("/saveImage")
	public String saveImage(Model model,perPageVO vo) throws Exception {
		
		String path = "C:\\fakepath\\";
			
		byte[] pic = null;
		String imagePath =vo.getSong_pic();
		File image = new File(path + imagePath);
		InputStream is = new FileInputStream(image);
		pic = new byte[is.available()];
		is.read(pic);
		String getImage =Base64.getEncoder().encodeToString(pic);
		
		byte[] song = null;
		String songPath =vo.getSong();
		File song1 = new File(path + songPath);
		InputStream sis = new FileInputStream(song1);
		song = new byte[sis.available()];
		sis.read(song);
		String getSong = Base64.getEncoder().encodeToString(song);
		
				
		vo.setSong_pic(getImage);
		
		vo.setSong(getSong);
		
		perpageDao.insertsong(vo);
		                                                                                                                                                                                                    
		return "redirect:getuser"+"?user_no="+vo.getUser_no();

	}
	
	@RequestMapping(value = "/userupdate", method = RequestMethod.GET)
	public void userupdate(Model model,@RequestParam("user_no") int user_no) throws Exception {
	
		model.addAttribute("userList",userDao.getuserbyuserno(user_no));
		model.addAttribute("songList",perpageDao.getsongsbyuserno(user_no));
		
	}
	
	@PostMapping("/userupdateaction")
	public String userupdateaction(Model model,userVO vo,perPageVO pvo,@RequestParam("user_no")int user_no) throws Exception {

		
		userDao.updateuser(vo);
		perpageDao.updatesonguser(pvo);
		
		return "redirect:getuser?user_no="+vo.getUser_no();
	}
	
	@RequestMapping(value = "/songdelete", method = RequestMethod.GET)
	public String songdelete(Model model, perPageVO vo,@RequestParam(value = "song_no")int song_no,@RequestParam(value = "user_no")int user_no) throws Exception{
		
		perpageDao.deletesong(song_no);
		
		return "redirect:getuser?user_no=" + user_no;
		
	}


}
