package com.jang.bbs.service;

import com.jang.bbs.model.AdminVO;

public interface AdminService {
	
	AdminVO findAdmin(AdminVO adminVO);
	
	AdminVO getAdmin(String adminid);

}
