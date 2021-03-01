package com.jang.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.CustomerVO;
import com.jang.bbs.model.UserVO;

@Mapper
public interface CustomerMapper {
	
	int insertcustomer(CustomerVO customerVO);
	
	List<CustomerVO> getcustomer(CustomerVO customerVO);
}
