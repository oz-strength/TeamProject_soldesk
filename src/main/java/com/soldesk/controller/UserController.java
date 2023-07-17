package com.soldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soldesk.dao.UserDAO;
import com.soldesk.entity.user.User;
import com.soldesk.mapper.UserMapper;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			rttr.addFlashAttribute("msgType", "성공 메세지");
			rttr.addFlashAttribute("msg", "회원 가입에 성공했습니다.");
			/*
			 * // 회원 가입이 성공하면 => 로그인 처리 session.setAttribute("user", u); // ${!empty user}로
			 * 확인가능
			 */ return "redirect:/";
		} else {
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "이미 존재하는 회원입니다.");
			return "redirect:/";
		}
	}

	// 로그인 기능 구현
	@RequestMapping("/user.login")
	public String memLogin(User u, RedirectAttributes rttr, HttpServletRequest req, HttpServletResponse res) {
//		User user = userMapper.userLogin(u);
//
//		if (user != null) { // 로그인에 성공
//
//			rttr.addFlashAttribute("msgType", "성공 메세지");
//			rttr.addFlashAttribute("msg", "로그인에 성공했습니다.");
//			session.setAttribute("user", user); // ${!empty user}
//			return "redirect:/";
//		} else { // 로그인에 실패
//			rttr.addFlashAttribute("msgType", "실패 메세지");
//			rttr.addFlashAttribute("msg", "다시 로그인 해주세요.");
//			return "redirect:/login/login";
//		}
		return null;
	}

	// 로그아웃 처리
	@RequestMapping("/user.logout")
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
