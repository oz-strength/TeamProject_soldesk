package com.soldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soldesk.dao.UserDAO;
import com.soldesk.entity.user.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {

	@Autowired
	private UserDAO uDao;

	// 로그인 화면으로 이동
	@RequestMapping("/login/login")
	public String userLoginForm() {
		return "user/loginForm";
	}

	// 회원가입 화면으로 이동
	@RequestMapping("/login/signup")
	public String userSignupForm() {
		return "user/signupForm";
	}

	// 회원 아이디 존재여부 체크
	@RequestMapping("/memRegisterCheck.do")
	public @ResponseBody int memRegisterCheck(User u, HttpServletRequest req) {
		User user = uDao.checkUser(u, req);
		if (user != null) {
			return 0; // 이미 존재하는 회원, 입력없음
		} else {
			return 1; // 사용 가능한 아이디
		}
	}

	// 회원가입 처리
	@RequestMapping("/login/user.register")
	public String memRegister(HttpServletRequest req, User u, RedirectAttributes rttr) {

		// 회원을 테이블에 저장하기
		if (uDao.registUser(u, req)) { // 회원가입 성공 메시지
			return "home";
		} else {
			return "user/signupForm";
		}
	}

	// 로그인 기능 구현
	@RequestMapping("/user.login")
	public String memLogin(User u, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse res) {
		if (uDao.loginUser(u, req, res)) { // 로그인에 성공
			return "home";
		} else { // 로그인에 실패
			return "user/loginForm";
		}
	}

	// 로그아웃 처리
	@RequestMapping("/user.logout")
	public String userLogout(User u, HttpServletRequest req) {
		if (uDao.isLoggedIn(u, req)) {
			uDao.logout(u, req);
			
		} 
		return "home";
	}
	
	// 마이페이지로 이동
	@RequestMapping("/user/myPage")
	public String goMyPage() {
		return "user/myPage";
	}
}
