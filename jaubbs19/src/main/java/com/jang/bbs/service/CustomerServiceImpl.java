package com.jang.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.CustomerMapper;
import com.jang.bbs.model.CustomerVO;

@Service(value = "customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper customerMapper;

	@Override
	public int insertcustomer(CustomerVO customerVO) {
		// TODO Auto-generated method stub
		return customerMapper.insertcustomer(customerVO);
	}

	@Override
	public List<CustomerVO> getcustomer(CustomerVO customerVO) {
		// TODO Auto-generated method stub
		return customerMapper.getcustomer(customerVO);
	}
	
	


	
}

