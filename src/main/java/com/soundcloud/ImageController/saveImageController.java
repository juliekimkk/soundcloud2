package com.soundcloud.ImageController;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;

public class saveImageController {
	@Autowired
	private perPageDAO dao;

	/**
	 * 파일태그를 위한 폼태그
	 * 
	 * @return
	 */
	@RequestMapping(value = "/formFile")
	public String formFile() {
		return "formFile";
	}

	/**
	 * 파일처리 컨트롤러
	 * 
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/saveImage")
	public String saveImage(perPageVO vo) throws Exception {
		
		byte[] pic = null;
		String imagePath = vo.getSong_pic();
		File image = new File(imagePath);
		InputStream is = new FileInputStream(image);
		pic = new byte[is.available()];
		is.read(pic);
		String getImage = Base64.getEncoder().encodeToString(pic);
		
		byte[] song = null;
		String songPath = vo.getSong();
		File song1 = new File(songPath);
		InputStream sis = new FileInputStream(song1);
		song = new byte[sis.available()];
		sis.read(song);
		String getSong = Base64.getEncoder().encodeToString(song);
		
		
		vo.setSong_pic(getImage);
		
		vo.setSong(getSong);
		
		dao.insertsong(vo);
		
		return "perpage/getuser";

	}


	private String getSong() throws FileNotFoundException, IOException {
		byte[] song = null;
		String songPath = System.getProperty("user.dir") + System.getProperty("file.separator") + "songs"
				+ System.getProperty("file.separator") + "guririRoki.mp3";
		File song1 = new File(songPath);
		try (InputStream is = new FileInputStream(song1)) {
			song = new byte[is.available()];
			is.read(song);
		}
		return Base64.getEncoder().encodeToString(song);
	}

	@Autowired
	private SqlSession query;

	public void saveImage(Map<String, Object> hmap) throws SQLException {
		query.insert("query.saveImage", hmap);
	}

}
