package com.jang.bbs.service;

import java.util.List;

import com.jang.bbs.model.NoticeVO;

public interface NoticeService {
	
	List<NoticeVO> getnotice(NoticeVO noticeVO);
	
	int insertnotice(NoticeVO noticeVO);
}
