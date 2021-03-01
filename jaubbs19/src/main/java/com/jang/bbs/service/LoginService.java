package com.jang.bbs.service;

import java.util.List;

import com.jang.bbs.model.UserVO;

public interface LoginService {
	
	UserVO findUser(UserVO userVO);
	
	UserVO getUser(String userId);
	
	int insertUser(UserVO userVO);
	
	int updateUser(UserVO userVO);
	
	UserVO findId(UserVO userVO);

	UserVO findPass(UserVO userVO);
	
	void updatePass(UserVO userVO);
	
	List<UserVO> getLocUser(UserVO userVO);
	
	int updateLoc(UserVO userVO);
	
	int updateLocUser(UserVO userVO);
	
	UserVO getDev_no(String dev_no);
	
	List<UserVO> getuserlist(UserVO userVO);
	
	List<UserVO> getuserlistdata(UserVO userVO);
}
