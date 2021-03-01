package com.jang.bbs.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.AdminVO;
import com.jang.bbs.model.UserVO;

@Mapper
public interface AdminMapper {
	
	AdminVO findAdmin(AdminVO adminVO);
	
	AdminVO getAdmin(String adminid);
	
}

