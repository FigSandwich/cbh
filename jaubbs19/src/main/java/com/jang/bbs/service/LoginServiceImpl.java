package com.jang.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.LoginMapper;
import com.jang.bbs.model.UserVO;

@Service(value = "loginService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginMapper loginMapper;

	@Override
	public UserVO findUser(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.findUser(userVO);
	}

	@Override
	public UserVO getUser(String userId) {
		// TODO Auto-generated method stub
		return loginMapper.getUser(userId);
	}

	@Override
	public int insertUser(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.insertUser(userVO);
	}

	@Override
	public int updateUser(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.updateUser(userVO);
	}

	@Override
	public UserVO findId(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.findId(userVO);
	}

	@Override
	public UserVO findPass(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.findPass(userVO);
	}

	@Override
	public void updatePass(UserVO userVO) {
		// TODO Auto-generated method stub
		loginMapper.updatePass(userVO);
		
	}


	@Override
	public List<UserVO> getLocUser(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.getLocUser(userVO);
	}

	@Override
	public int updateLoc(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.updateLoc(userVO);
	}

	@Override
	public int updateLocUser(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.updateLocUser(userVO);
	}

	@Override
	public UserVO getDev_no(String dev_no) {
		// TODO Auto-generated method stub
		return loginMapper.getDev_no(dev_no);
	}

	
	@Override
	public List<UserVO> getuserlist(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.getuserlist(userVO);
	}

	@Override
	public List<UserVO> getuserlistdata(UserVO userVO) {
		// TODO Auto-generated method stub
		return loginMapper.getuserlistdata(userVO);
	}
		
	
}

