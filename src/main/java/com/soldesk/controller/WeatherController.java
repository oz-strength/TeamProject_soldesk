package com.soldesk.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soldesk.dao.WeatherDAO;
import com.soldesk.entity.weather.Weather;
import com.soldesk.entity.weather.WeatherItem;

@Controller
public class WeatherController {
	
	@Autowired
	private WeatherDAO wDAO;
	
	// 지도 페이지 이동 시에 json으로 반환하는 코드
	@RequestMapping(value = "/weatherMap.getJSON", method = RequestMethod.GET, 
			produces = "application/json; charset=UTF-8")
	public @ResponseBody Weather getWeatherMapJSON(HttpServletRequest req) {
		
		return wDAO.getWeatherMap(req);
	}
	
	// 날씨 페이지 이동 시에 json으로 반환하는 코드
	@RequestMapping(value = "/weatherPage.getJSON", method = RequestMethod.GET, 
			produces = "application/json; charset=UTF-8")
	public @ResponseBody Weather getWeatherPageJSON(WeatherItem wi, HttpServletRequest req) {
		return wDAO.getWeatherPage(wi, req);
	}
	
	@RequestMapping(value = "/weatherPage", method = RequestMethod.GET)
	public String goWeatherPage(HttpServletRequest req) {
		String w_loc = req.getParameter("w_loc");
		req.setAttribute("w_loc", w_loc);
		return "weatherPage";
	}
	
	// weather 탭에서 지역 누르면 이동하는 페이지
	@RequestMapping(value = "/weather/location", method = RequestMethod.GET)
	public String goLocalPage(HttpServletRequest req) {
		String w_loc = req.getParameter("w_loc");
		req.setAttribute("w_loc", w_loc);
		return "weather/localWeatherPage";
	}
}
