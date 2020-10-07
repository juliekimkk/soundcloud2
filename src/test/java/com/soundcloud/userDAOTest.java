package com.soundcloud;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.soundcloud.user.dao.userDAO;
import com.soundcloud.user.domain.userVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class userDAOTest {
	
	private static final Logger logger = LoggerFactory.getLogger(userDAOTest.class);

	@Inject
	private userDAO userDAO;
	
	//@Test
	public void testgetsongs() throws Exception {

		List<userVO> userList = userDAO.getuser();
		logger.info("\n User List \n");
		if (userList.size() > 0) {
			for (userVO list : userList) {
				logger.info(list.getUser_name());
			}
		} else {
			logger.info("데이터가 없습니다");
		}
	}

	//@Test
	public void testInsert() throws Exception {

		userVO uservo = new userVO();

		uservo.setUser_id("asd");
		uservo.setUser_password("1234");
		uservo.setUser_name("user00");
		uservo.setE_mail("asd@asd.asd");

		int result = userDAO.insertuser(uservo);
		logger.info("\n Insert user Result \n");
		if (result == 1) {
			logger.info("\n 등록성공");
		} else {
			logger.info("\n 등록실패");
		}
	}


//	@Test
	public void testdelete() throws Exception {

		int result = userDAO.deleteuser(2);

		logger.info("\n Delete user Result \n");

		if (result > 0) {
			logger.info("\n 삭제성공");
		} else {
			logger.info("\n 삭제실패");
		}
	}

//	@Test
	public void testupdate() throws Exception {

		userVO uservo = new userVO();
		
		uservo.setUser_no(1);
		uservo.setUser_name("user01");
		uservo.setUser_password("456");
		uservo.setE_mail("456@444.asdf");

		int result = userDAO.updateuser(uservo);

		logger.info("\n Update song Result \n");

		if (result > 0) {
			logger.info("\n 업데이트 성공");
		} else {
			logger.info("\n 업데이트 실패");
		}
	}

}
