package com.soldesk.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@Autowired
	private UserDAO uDAO;

	// 로그인 화면
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public String goLogin() {
		return "user/loginForm";
	}

	// 회원가입 화면
	@RequestMapping(value = "/login/signup", method = RequestMethod.GET)
	public String goSignup() {
		return "register/signupForm";
	}

	// 회원가입 기능
	@RequestMapping(value = "/login/user.register", method = RequestMethod.POST)
	public String regUser(User u, HttpServletRequest req) {
		uDAO.regUser(u, req);
		return "home"; // 회원가입 후 메인 이동
	}

	// 로그인 기능
	@RequestMapping(value = "/user.login", method = RequestMethod.GET)
	public String loginUser(User u, HttpServletRequest req) {
		String k = uDAO.getLogin(u, req);
		if (k.equals("로그인성공")) {
			HttpSession hs = req.getSession();
			hs.setMaxInactiveInterval(10); // session의 유지시간 '#초'
			hs.setAttribute("u_name", u.getU_name());
			return "home";
		} else {
			return "user/loginForm";
		}
	}

}
