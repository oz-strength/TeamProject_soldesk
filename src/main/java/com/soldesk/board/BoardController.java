package com.soldesk.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardDAO bDAO;

	// 초기화면
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String goBoard_Main() {
		return "board/list";
	}
	
	// 자유게시판 글쓰기 이동
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String goBoardRegPage() {
		return "board/register";
	}
	
	// 자유게시판 글쓰기
	@RequestMapping(value = "/regFreeBoard", method = RequestMethod.POST)
	public String regFreeBoard(FreeBoard f, HttpServletRequest req) {
		bDAO.regFreeBoard(f, req);
		return "board/list";
	}
	
	// 자유게시판 전체 글 조회
	@RequestMapping(value = "/getAllFreeBoardJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody FreeBoards getAllFreeBoardJSON(HttpServletRequest req) {
		return bDAO.getAllFreeBoard(req);
	}
	
	// 자유게시판 상세보기
	@RequestMapping(value = "/getFreeBoardDetailJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody FreeBoards getFreeBoardDetailJSON(FreeBoard f, HttpServletRequest req) {
		return bDAO.getFreeBordDetail(f, req);
	}

}
