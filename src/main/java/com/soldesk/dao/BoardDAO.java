package com.soldesk.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.board.Board;
import com.soldesk.entity.board.Criteria;
import com.soldesk.entity.board.PageMaker;
import com.soldesk.mapper.BoardMapper;

@Service
public class BoardDAO {
	
	@Autowired
	BoardMapper boardMapper;
	
	public List<Board> getBoardList(Criteria cri) {
		return boardMapper.getBoardList(cri);
	}
	
	public PageMaker setPageMaker(Criteria cri) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardMapper.getBoardCount(cri));
		System.out.println("PageMaker 설정 완료");
		return pageMaker; 
	}
	
	public void registBoard(Board board, HttpServletRequest req) {
		if (boardMapper.registBoard(board) == 1) {
			System.out.println("보드 등록 성공");
			req.setAttribute("r", "보드 등록 성공");
			
		} else {
			System.out.println("보드 등록 실패");
			req.setAttribute("r", "보드 등록 실패");
		}
	}
	
	public Board getBoardDetail(Board board) {
		if (boardMapper.updateCount(board) == 1) {
			return boardMapper.getBoardDetail(board);
		} else {
			return null;
		}
	}
	
	public Board getModifyBoard(Board board) {
		return boardMapper.getBoardDetail(board);
	}
	
	public void modifyBoard(Board board) {
		if (boardMapper.modifyBoard(board) == 1) {
			System.out.println("보드 수정 성공");
		} else {
			System.out.println("보드 수정 실패");
		}
	}
	
	public void removeBoard(Board board) {
		if (boardMapper.removeBoard(board) == 1) {
			System.out.println("보드 수정 성공");
		} else {
			System.out.println("보드 수정 실패");
		}
	}
	
	public void replyBoard(Board board) {
		Board parent = boardMapper.getBoardDetail(board);
		board.setBoardGroup(parent.getBoardGroup());
		board.setBoardSequence(parent.getBoardSequence()+1);
		board.setBoardLevel(parent.getBoardLevel()+1);
		boardMapper.replySeqUpdate(parent);
		boardMapper.replyInsert(board);
	}
}
