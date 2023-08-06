package com.soldesk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soldesk.dao.BoardDAO;
import com.soldesk.entity.board.Board;
import com.soldesk.entity.board.Criteria;
import com.soldesk.entity.board.PageMaker;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Autowired
	BoardDAO bDAO;
	
	// 자유게시판으로 이동
	@RequestMapping("/free")
	public String getBoardList(Criteria cri, Model model) {
		List<Board> list = bDAO.getBoardList(cri);
		model.addAttribute("list", list);
		PageMaker pageMaker = bDAO.setPageMaker(cri);
		model.addAttribute("pageMaker", pageMaker);
		return "board/list";
	}
	
	// 게시글 등록하기 (등록 페이지로 이동하기)
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String registBoard() {
		return "board/register";
	}
	
	// 게시글 등록하기
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registBoard(Board board, RedirectAttributes rttr, HttpServletRequest req) { 
		bDAO.registBoard(board, req); // 게시물등록(vo->idx, boardGroup)
		rttr.addFlashAttribute("result", board.getB_no()); // ${result}
		return "redirect:/board/free";
	}
	
	// 게시글 상세보기 
	@RequestMapping(value="/get", method = RequestMethod.GET)
	public String getBoardDetail(Board board, Model model,@ModelAttribute("cri") Criteria cri) {
		Board b = bDAO.getBoardDetail(board);
		if (b != null) {	// 게시글 상세보기 성공
			model.addAttribute("board", b); 
			return "board/view"; // /WEB-INF/views/board/view.jsp -> ${cri.page}
		} else {	// 게시글 상세보기 실패
			return "home";	// home 으로 반환
		}
	}
	
	// 게시글 수정하기 (수정하기 페이지로 이동)
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String modifyBoard(Board board, Model model,@ModelAttribute("cri") Criteria cri) {
		Board b = bDAO.getBoardDetail(board);
		model.addAttribute("board", b);
		return "board/modify"; // /WEB-INF/views/board/modify.jsp
	}
	
	// 게시글 수정하기 (자기글 수정)
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modify(Board board, Criteria cri , RedirectAttributes rttr) {
		bDAO.modifyBoard(board); //수정	
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/free";  // ?page=2&perPageNum=5 
	}
	
	// 게시글 삭제하기 (자기글 삭제)
	@RequestMapping(value="/remove", method = RequestMethod.GET)
	public String removeBoard(Board board, Criteria cri, RedirectAttributes rttr) {
		bDAO.removeBoard(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());		
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/free "; // ?page=2&perPageNum=5 
	}
	
	// 게시글에 댓글 달기 (댓글다는 페이지로 이동)
	@RequestMapping(value="/reply", method = RequestMethod.GET)
	public String reply(Board board, Model model, @ModelAttribute("cri") Criteria cri) {
		Board b = bDAO.getBoardDetail(board);
		model.addAttribute("board", b);
		return "board/reply"; // /WEB-INF/views/board/reply.jsp
	}
	
	// 게시글에 댓글 달기
	@RequestMapping(value="/reply", method = RequestMethod.POST)
	public String reply(Board board, Criteria cri, RedirectAttributes rttr) {
		// - 답글 만들기
		// 1. 부모글(원글)의 정보를 가져오기(board->b_no)
//		Board parent = bDAO.getBoardDetail(board);
		// 2. 부모글의 boardGroup의 값을 -> 답글(board)정보에 저장하기
//		board.setBoardGroup(parent.getBoardGroup());
		// 3. 부모글의 boardSequence의 값에 1을 더해서 -> 답글(board)정보에 저장하기
//		board.setBoardSequence(parent.getBoardSequence()+1);
		// 4. 부모글의 boardLevel의 값에 1을 더해서 -> 답글(board)정보에 저장하기
//		board.setBoardLevel(parent.getBoardLevel()+1);
		// 5. 같은 boardGroup에 있는 글 중에서 부모글의 boardSequence보다 큰 값들을 모두 1씩 업데이트하기 
//		boardMapper.replySeqUpdate(parent);
		// 6. 답글(board)을 저장하기
//		boardMapper.replyInsert(board);
		bDAO.replyBoard(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/free";
	}
}
