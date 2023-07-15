package com.soldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soldesk.entity.Criteria;
import com.soldesk.entity.PageMaker;
import com.soldesk.entity.Board;
import com.soldesk.mapper.BoardMapper;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Autowired
	BoardMapper boardMapper;
	
	@RequestMapping("/list")
	public String getList(Criteria cri, Model model) {
		List<Board> list = boardMapper.getList(cri);
		model.addAttribute("list", list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(boardMapper.totalCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "board/list";
	}
}
