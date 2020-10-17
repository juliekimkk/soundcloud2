package com.soundcloud.mainLogin.dao;

import java.util.List;
import com.soundcloud.perPage.domain.perPageVO;

public interface mainLoginDAO {

	public List<perPageVO> getsongsbytheme() throws Exception;
}
