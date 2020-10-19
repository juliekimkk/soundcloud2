package com.soundcloud;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.soundcloud.perPage.dao.perPageDAO;
import com.soundcloud.perPage.domain.perPageVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class perPageDAOTest {

	private static final Logger logger = LoggerFactory.getLogger(perPageDAOTest.class);

	@Inject
	private perPageDAO pageDAO;

//	@Test
	public void testgetsongs() throws Exception {

		List<perPageVO> pageList = pageDAO.getsongs();
		logger.info("\n Song List \n");
		if (pageList.size() > 0) {
			for (perPageVO list : pageList) {
				logger.info(list.getSong_name());
			}
		} else {
			logger.info("?�이?��? ?�습?�다.");
		}
	}
	
//	@Test
	public void testgetsongsbyusername() throws Exception{
		
		List<perPageVO> pageList = pageDAO.getsongsbyuserno(1);
		logger.info("\n Song List by User_Name \n");
		if(pageList.size() > 0) {
			for(perPageVO list : pageList) {
				logger.info(list.getSong_name());
				logger.info(list.getUser_name());
			}
		}else {
			logger.info("?�이?��? ?�습?�다.");
		}
	}

	@Test
	public void testInsert() throws Exception {

		perPageVO pagevo = new perPageVO();

		pagevo.setUser_name("user13");
		pagevo.setSong_name("노래13");
		pagevo.setSong(getSong());
		pagevo.setSong_pic(getImage());
		pagevo.setPlay_list("테스트");
		pagevo.setTheme("relax");

		int result = pageDAO.insertsong(pagevo);
		logger.info("\n Insert Song Result \n");
		if (result == 1) {
			logger.info("\n 등록성공");
		} else {
			logger.info("\n 등록실패패");
		}
	}

	private String getImage() throws FileNotFoundException, IOException {
		byte[] pic = null;
		String imagePath = System.getProperty("user.dir") + System.getProperty("file.separator") + "images"
				+ System.getProperty("file.separator") + "pic2.jpg";
		File image = new File(imagePath);
		try (InputStream is = new FileInputStream(image)) {
			pic = new byte[is.available()];
			is.read(pic);
		}
		return Base64.getEncoder().encodeToString(pic);
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

//	@Test
	public void testdelete() throws Exception {

		int result = pageDAO.deletesong(5);

		logger.info("\n Delete song Result \n");

		if (result > 0) {
			logger.info("\n ??��?�공");
		} else {
			logger.info("\n ??��?�패");
		}
	}

//	@Test
	public void testupdate() throws Exception {

		perPageVO pagevo = new perPageVO();

		pagevo.setSong_no(1);
		pagevo.setSong_name("구리�?? 로키(?�국?�커�??)");
		pagevo.setTheme("?�스??");
		pagevo.setPlay_list("?�스?? 리스??");

		int result = pageDAO.updatesong(pagevo);

		logger.info("\n Update song Result \n");

		if (result > 0) {
			logger.info("\n ?�데?�트 ?�공");
		} else {
			logger.info("\n ?�데?�트 ?�패");
		}
	}

//	@Test
	public void testupdatecnt() throws Exception {

		int result = pageDAO.viewcnt(1);

		logger.info("\n Update view Result \n");

		if (result > 0) {
			logger.info("\n ?�데?�트 ?�공");
		} else {
			logger.info("\n ?�데?�트 ?�패");
		}
	}
	
	

}
