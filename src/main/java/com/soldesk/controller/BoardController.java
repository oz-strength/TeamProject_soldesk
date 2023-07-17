package com.soldesk.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soldesk.entity.Board;
import com.soldesk.entity.Criteria;
import com.soldesk.entity.PageMaker;
import com.soldesk.mapper.BoardMapper;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Autowired
	BoardMapper boardMapper;
	
	// 자유게시판으로 이동
	@RequestMapping("/free")
	public String getList(Criteria cri, Model model) {
		List<Board> list = boardMapper.getList(cri);
		model.addAttribute("list", list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardMapper.totalCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "board/l"
				+ "ist";
	}
	
	// 게시글 등록하기 (등록 페이지로 이동하기)
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String register() {
		return "board/register";
	}
	
	// 게시글 등록하기
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String register(Board board, RedirectAttributes rttr) { 
		boardMapper.register(board); // 게시물등록(vo->idx, boardGroup)
		System.out.println(board);
		rttr.addFlashAttribute("result", board.getB_no()); // ${result}
		return "redirect:/board/free";
	}
	
	// 게시글 상세보기 
	@RequestMapping(value="/get", method = RequestMethod.GET)
	public String get(@RequestParam("b_no") int b_no, Model model,@ModelAttribute("cri") Criteria cri) {
		
		Board board=boardMapper.get(b_no);
		boardMapper.updateCount(b_no);
		model.addAttribute("board", board); 
		return "board/view"; // /WEB-INF/views/board/view.jsp -> ${cri.page}
	}
	
	// 게시글 수정하기 (수정하기 페이지로 이동)
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String modify(@RequestParam("b_no") int b_no, Model model,@ModelAttribute("cri") Criteria cri) {
		Board board=boardMapper.get(b_no);
		model.addAttribute("board", board);
		return "board/modify"; // /WEB-INF/views/board/modify.jsp
	}
	
	// 게시글 수정하기 (자기글 수정)
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modify(Board board, Criteria cri , RedirectAttributes rttr) {
		boardMapper.modify(board); //수정	
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/free";  // ?page=2&perPageNum=5 
	}
	
	// 게시글 삭제하기 (자기글 삭제)
	@RequestMapping(value="/remove", method = RequestMethod.GET)
	public String remove(int b_no, Criteria cri, RedirectAttributes rttr) {
		boardMapper.remove(b_no);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());		
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/board/free "; // ?page=2&perPageNum=5 
	}
	
	// 게시글에 댓글 달기 (댓글다는 페이지로 이동)
	@RequestMapping(value="/reply", method = RequestMethod.GET)
	public String reply(int b_no, Model model, @ModelAttribute("cri") Criteria cri) {
		Board board=boardMapper.get(b_no);
		model.addAttribute("board", board);
		return "board/reply"; // /WEB-INF/views/board/reply.jsp
	}
	
	// 게시글에 댓글 달기
	@RequestMapping(value="/reply", method = RequestMethod.POST)
	public String reply(Board board, Criteria cri, RedirectAttributes rttr) {
		// - 답글 만들기
				// 1. 부모글(원글)의 정보를 가져오기(board->b_no)
				Board parent = boardMapper.get(board.getB_no());
				// 2. 부모글의 boardGroup의 값을 -> 답글(board)정보에 저장하기
				board.setBoardGroup(parent.getBoardGroup());
				// 3. 부모글의 boardSequence의 값에 1을 더해서 -> 답글(board)정보에 저장하기
				board.setBoardSequence(parent.getBoardSequence()+1);
				// 4. 부모글의 boardLevel의 값에 1을 더해서 -> 답글(board)정보에 저장하기
				board.setBoardLevel(parent.getBoardLevel()+1);
				// 5. 같은 boardGroup에 있는 글 중에서 부모글의 boardSequence보다 큰 값들을 모두 1씩 업데이트하기 
				boardMapper.replySeqUpdate(parent);
				// 6. 답글(board)을 저장하기
				boardMapper.replyInsert(board);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/free";
	}
}
