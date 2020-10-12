package com.soundcloud.ImageController;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soundcloud.Image.vo.Vo;

public class saveImageController {
	@Autowired
	private StudyDao dao;
		
	/**
	 * 파일태그를 위한 폼태그
	 * @return
	 */
	@RequestMapping(value="/formFile")
	public String formFile() {
		return "formFile";
	}

	/**
	 * 파일처리 컨트롤러
	 * @param vo
	 * @return
	 */
	@RequestMapping(value="/saveImage")
	public String saveImage(Vo vo) {
		try {
			Map<String, Object> hmap = new HashMap<String, Object>();
			hmap.put("img", vo.getImgFile().getBytes());
			dao.saveImage(hmap);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/formFile";
	}
	
	@Autowired
	private SqlSession query;

	public void saveImage(Map<String, Object> hmap) throws SQLException {
		query.insert("query.saveImage",hmap);
	}
	
	
}
