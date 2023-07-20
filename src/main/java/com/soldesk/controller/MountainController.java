package com.soldesk.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soldesk.dao.MountainDAO;
import com.soldesk.entity.mountain.Mountains;

@Controller
public class MountainController {
	
	@Autowired
	private MountainDAO mDAO;
	
	// 모든 산 데이터 조회 페이지 이동
	@RequestMapping(value = "/mountain/list")
	public String goMountainList() {
		return "mountain/mountainList";
	}
	// 산 데이터 상세 페이지 이동
	@RequestMapping(value= "/mountain/detail")
	public String goMountainDeatil() {
		return "mountain/mountainDetail";
	}
	// 모든 산 데이터 조회 JSON
	@RequestMapping(value = "/mountain.getAllMountainJSON", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	public @ResponseBody Mountains getAllMountainJSON(HttpServletRequest req) {
		return mDAO.getAllMountain(req);
	}
	
	
}
