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

import com.soldesk.entity.BlockchainManager;
import com.soldesk.entity.blockchain.Wallet;

@Controller
public class HomeController {

	// 초기화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goHome() { 
		return "home";
	}

	// 전국 지도 화면
	@RequestMapping(value = "/mountain/map", method = RequestMethod.GET)
	public String goMountain_map() {
		return "mountain/map";
	}

	// 마이 페이지 [미구현]
	@RequestMapping(value = "/user/mypage", method = RequestMethod.GET)
	public String goMypage() {
		return "home";
	}
	
	// 인트로 페이지로 이동하기
	@RequestMapping("/introPage")
	public String goIntroPage() {
		return "IntroPage";
	}
	
	// 날씨 페이지로 이동하기 
	@RequestMapping(value = "/weather/weatherPage", method = RequestMethod.GET)
	public String goWeatherPage() {
		return "weather/weatherPage";
	}
/*	// 자유 게시판 [미구현]
	@RequestMapping(value = "/board/free", method = RequestMethod.GET)
	public String goFreeboard() {
		return "board/list";
	}*/

	/* footer 컨트롤러 - 시작 부분 */
	// 개인정보 보호 및 약관
	@RequestMapping(value = "/footer/privacy", method = RequestMethod.GET)
	public String goPrivacy_and_Terms() {
		return "home";
	}
	// 정보
	@RequestMapping(value = "/footer/information", method = RequestMethod.GET)
	public String goInformation() {
		return "home";
	}
	// 서비스
	@RequestMapping(value = "/footer/service", method = RequestMethod.GET)
	public String goService() {
		return "home";
	}
	/* footer 컨트롤러 - 끝 부분 */
	
}
