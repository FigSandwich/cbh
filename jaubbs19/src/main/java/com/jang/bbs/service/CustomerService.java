package com.jang.bbs.service;

import java.util.List;

import com.jang.bbs.model.CustomerVO;

public interface CustomerService {
	
	int insertcustomer(CustomerVO customerVO);
	
	List<CustomerVO> getcustomer(CustomerVO customerVO);

}
