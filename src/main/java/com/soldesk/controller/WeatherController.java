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
	
	// 홈페이지 시작 시에 실행 또는
	// 지도 페이지나 날씨 페이지 이동 시에 실행하도록 변경하기 (return 값)
	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String addWeatherTest(HttpServletRequest req) {
		if (wDAO.checkWeather()) {
			System.out.println("데이터를 넣습니다.");
			wDAO.addWeather(req);
		} else {
			System.out.println("이미 데이터가 있습니다.");
		}
		
		return "home";
	}
	
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
    public String test2(){
        return "IntroPage";
    }
	
	 @RequestMapping(value = "/test1", method = RequestMethod.GET)
	    public void test1(HttpServletResponse response) throws IOException, InterruptedException {
	        response.sendRedirect("/controller");
	        Thread.sleep(3000);
	        test2();
	    }
	
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
}
