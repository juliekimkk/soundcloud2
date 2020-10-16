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


	@Autowired
	private SqlSession query;

	public void saveImage(Map<String, Object> hmap) throws SQLException {
		query.insert("query.saveImage", hmap);
	}

}
