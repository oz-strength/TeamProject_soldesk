package com.soldesk.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soldesk.dao.MountainDAO;
import com.soldesk.entity.BlockchainManager;
import com.soldesk.entity.blockchain.Wallet;

@Controller
public class HomeController {
	
	@Autowired
	private MountainDAO mDAO;

	// 초기화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goHome(Model model) {
		int number = mDAO.getMountainRandomCount();
		model.addAttribute("m_no", number);
		return "home";
	}

	// 전국 지도 화면
	@RequestMapping(value = "/mountain/map", method = RequestMethod.GET)
	public String goMountain_map() {
		return "mountain/map";
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
