package com.soldesk.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	// 초기화면
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String goBoardRegPage() {
		return "board/register";
	}

}
