package com.jang.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.NoticeVO;

@Mapper
public interface NoticeMapper {
	
	List<NoticeVO> getnotice(NoticeVO noticeVO);
	
	int insertnotice(NoticeVO noticeVO);
}
