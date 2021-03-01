package com.jang.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.bbs.mapper.BoardMapper;
import com.jang.bbs.model.AttFileVO;
import com.jang.bbs.model.BoardLikeVO;
import com.jang.bbs.model.BoardVO;
import com.jang.bbs.model.BoardViewVO;
import com.jang.bbs.model.ReplyLikeVO;
import com.jang.bbs.model.ReplyVO;
import com.jang.bbs.model.SearchVO;
import com.jang.bbs.utils.PageHelper;

@Service(value = "boardService")
public class BoardServicImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;

	PageHelper pageHelper = new PageHelper();

	@Override
	public StringBuffer getPageUrl(SearchVO searchVO) {
		// TODO Auto-generated method stub
		int totalRow = boardMapper.getTotalRow(searchVO);

		return pageHelper.getPageUrl(searchVO.getPage(), totalRow);
	}

	@Override
	public List<BoardVO> getBoardList(SearchVO searchVO) {
		// TODO Auto-generated method stub
		int currentPage = searchVO.getPage();

		int startRow = (currentPage - 1) * this.pageHelper.getPageSize() + 1;
		int endRow = currentPage * this.pageHelper.getPageSize();

		searchVO.setStartRow(startRow);
		searchVO.setEndRow(endRow);

		return this.boardMapper.getBoardList(searchVO);
	}

	@Override
	public BoardVO getArticle(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.getArticle(bno);
	}

	@Override
	public int writeArticle(BoardVO board) {
		// TODO Auto-generated method stub
		return this.boardMapper.writeArticle(board);
	}

	@Override
	public int updateArticle(BoardVO board) {
		// TODO Auto-generated method stub
		return this.boardMapper.updateArticle(board);
	}

	@Override
	public void deleteArticle(int bno) {
		// TODO Auto-generated method stub
		this.boardMapper.deleteArticle(bno);

	}

	@Override
	public int incrementViewCnt(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.incrementViewCnt(bno);
	}

	@Override
	public int incrementGoodCnt(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.incrementGoodCnt(bno);
	}

	@Override
	public int incrementReplyCnt(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.incrementReplyCnt(bno);
	}

	@Override
	public List<ReplyVO> getReplyList(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.getReplyList(bno);
	}

	@Override
	public ReplyVO getReply(int rno) {
		// TODO Auto-generated method stub
		return this.boardMapper.getReply(rno);
	}

	@Override
	public int writeReply(ReplyVO reply) {
		// TODO Auto-generated method stub
		int bno = reply.getBno();
		this.boardMapper.incrementReplyCnt(bno);

		return this.boardMapper.writeReply(reply);
	}

	@Override
	public int updateReply(ReplyVO reply) {
		// TODO Auto-generated method stub
		return this.boardMapper.updateReply(reply);
	}

	@Override
	public void deleteReply(int rno) {
		// TODO Auto-generated method stub

		this.boardMapper.deleteReply(rno);

	}

	@Override
	public void deleteReplyBybno(int bno) {
		// TODO Auto-generated method stub

		this.boardMapper.deleteReplyBybno(bno);

	}

	@Override
	public int incReplyGoodCnt(int rno) {
		// TODO Auto-generated method stub
		return this.boardMapper.incReplyGoodCnt(rno);
	}

	@Override
	public List<AttFileVO> getFileList(int bno) {
		// TODO Auto-generated method stub
		return this.boardMapper.getFileList(bno);
	}

	@Override
	public String getFileName(int fno) {
		// TODO Auto-generated method stub
		return this.boardMapper.getFileName(fno);
	}

	@Override
	public int insertFile(AttFileVO file) {
		// TODO Auto-generated method stub
		return this.boardMapper.insertFile(file);
	}

	@Override
	public void deleteFile(int fno) {
		// TODO Auto-generated method stub

		this.boardMapper.deleteFile(fno);

	}

	@Override
	public void deleteFileBybno(int bno) {
		// TODO Auto-generated method stub

		this.boardMapper.deleteFileBybno(bno);

	}

	@Override
	public int addBoardLike(BoardLikeVO boardLike) {
		// TODO Auto-generated method stub
		return this.boardMapper.addBoardLike(boardLike);
	}

	@Override
	public int getBoardLike(BoardLikeVO boardLike) {
		// TODO Auto-generated method stub
		return this.boardMapper.getBoardLike(boardLike);
	}

	@Override
	public int addReplyLike(ReplyLikeVO replyLike) {
		// TODO Auto-generated method stub
		return this.boardMapper.addReplyLike(replyLike);
	}

	@Override
	public int getReplyLike(ReplyLikeVO replyLike) {
		// TODO Auto-generated method stub
		return this.boardMapper.getReplyLike(replyLike);
	}

	public int addBoardView(BoardViewVO boardView) {
		// userid-글번호 조회 기록 추가
		return this.boardMapper.addBoardView(boardView);
	}

	public int increaseViewCnt(int bno) {

		// 글번호 조회수 증가

		return this.boardMapper.incrementViewCnt(bno);
	}

	public int getBoardView(BoardViewVO boardView) {

		// userid-글번호 조회 기록 읽기

		return this.boardMapper.getBoardView(boardView);

	}




}
