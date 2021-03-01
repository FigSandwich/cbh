package com.jang.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jang.bbs.model.AttFileVO;
import com.jang.bbs.model.BoardLikeVO;
import com.jang.bbs.model.BoardVO;
import com.jang.bbs.model.BoardViewVO;
import com.jang.bbs.model.ReplyLikeVO;
import com.jang.bbs.model.ReplyVO;
import com.jang.bbs.model.SearchVO;

@Mapper
public interface BoardMapper {
	
	List<BoardVO> getBoardList(SearchVO searchVO);
	BoardVO getArticle(int bno);
	int writeArticle(BoardVO board);
	int updateArticle(BoardVO board);
	void deleteArticle(int bno);
	
	int getTotalRow(SearchVO searchVO);
	
	int incrementViewCnt(int bno);
	int incrementGoodCnt(int bno);
	int incrementReplyCnt(int bno);
	
	List<ReplyVO> getReplyList(int bno);
	ReplyVO getReply(int rno);
	
	int writeReply(ReplyVO reply);
	int updateReply(ReplyVO reply);
	void deleteReply(int rno);
	void deleteReplyBybno(int bno);
	
	int incReplyGoodCnt(int rno);
	
	List<AttFileVO> getFileList(int bno);
	String getFileName(int fno);
	int insertFile(AttFileVO file);
	
	void deleteFile(int fno);
	void deleteFileBybno(int bno);
	
	int addBoardLike(BoardLikeVO boardLike);
	int getBoardLike(BoardLikeVO boardLike);
	
	int addReplyLike(ReplyLikeVO replyLike);
	int getReplyLike(ReplyLikeVO replyLike);
	
	int addBoardView(BoardViewVO boardView);
	int getBoardView(BoardViewVO boardView);

}
