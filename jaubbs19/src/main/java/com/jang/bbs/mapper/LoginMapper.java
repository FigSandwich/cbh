package com.jang.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.UserVO;

@Mapper
public interface LoginMapper {
	
	UserVO findUser(UserVO userVO);
	UserVO getUser(String userId);
	
	int updateUser(UserVO userVO);
	int insertUser(UserVO userVO);
	
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

