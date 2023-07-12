package com.soldesk.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class HomeController {
	
	// 초기화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goHome() {
		return "homeVer1";
	}
	
	// 전국 지도 화면
	@RequestMapping(value = "/mountain/map", method = RequestMethod.GET)
	public String goMountain_map() {
		return "mountain/map";
	}
	
	// 마이 페이지 [미구현]
	@RequestMapping(value = "/user/mypage", method = RequestMethod.GET)
	public String goMypage() {
		return "homeVer1";
	}
	
	// 자유 게시판 [미구현]
	@RequestMapping(value = "/board/free", method = RequestMethod.GET)
	public String goFreeboard() {
		return "board/list";
	}
	
}
