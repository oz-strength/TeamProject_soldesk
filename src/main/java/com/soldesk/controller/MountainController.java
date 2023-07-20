package com.soldesk.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soldesk.dao.MountainDAO;
import com.soldesk.entity.mountain.Mountain;
import com.soldesk.entity.mountain.Mountains;

@Controller
public class MountainController {
	
	@Autowired
	private MountainDAO mDAO;
	
	// 모든 산 데이터 조회 페이지 이동
	@RequestMapping(value = "/mountain/list")
	public String goMountainList(HttpServletRequest req) {
		String m_loc = req.getParameter("m_location");
		req.setAttribute("m_loc", m_loc);
		//System.out.println(m_loc);
		return "mountain/mountainList";
	}
	// 산 데이터 상세 페이지 이동
	@RequestMapping(value= "/mountain/detail")
	public String goMountainDeatil() {
		return "mountain/mountainDetail";
	}
	
	// 랜덤 산 추천 페이지 이동( -> 산 상세보기 페이지)
	@RequestMapping(value = "/mountain/daily")
	public String goDailyMountain(Model model) {
		int number = mDAO.getMountainRandomCount();
		model.addAttribute("m_no", number);
		return "mountain/mountainDetail";
	}
	
	// 모든 산 데이터 조회 JSON
	@RequestMapping(value = "/mountain.getAllMountainJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Mountains getAllMountainJSON(HttpServletRequest req) {
		return mDAO.getAllMountain(req);
	}
	
	// 특정 지역 산 데이터 조회 JSON
	@RequestMapping(value = "/mountain.getLocalMountainJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Mountains getLocalMountainJSON(Mountain m, HttpServletRequest req) {
		return mDAO.getLocalMountain(m,req);
	}

	
	// 산 데이터 1개 조회 JSON
	@RequestMapping(value = "/mountain.getMountainDetailJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Mountains getMountainDetailJSON(Mountain m, HttpServletRequest req) {
		return mDAO.getMountainDetail(m, req);
	}
	
	
}
