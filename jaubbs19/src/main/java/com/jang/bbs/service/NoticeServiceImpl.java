package com.jang.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.NoticeMapper;
import com.jang.bbs.model.NoticeVO;

@Service(value = "noticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeVO> getnotice(NoticeVO noticeVO) {
		// TODO Auto-generated method stub
		return noticeMapper.getnotice(noticeVO);
	}

	@Override
	public int insertnotice(NoticeVO noticeVO) {
		// TODO Auto-generated method stub
		return noticeMapper.insertnotice(noticeVO);
	}
	
	
	
}

