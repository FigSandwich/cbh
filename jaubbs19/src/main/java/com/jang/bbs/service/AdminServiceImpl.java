package com.jang.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.AdminMapper;
import com.jang.bbs.model.AdminVO;

@Service(value = "adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public AdminVO findAdmin(AdminVO adminVO) {
		// TODO Auto-generated method stub
		return adminMapper.findAdmin(adminVO);
	}

	@Override
	public AdminVO getAdmin(String adminid) {
		// TODO Auto-generated method stub
		return adminMapper.getAdmin(adminid);
	}

	
}

