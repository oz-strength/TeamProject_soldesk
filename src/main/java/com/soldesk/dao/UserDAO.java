package com.soldesk.dao;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.user.User;
import com.soldesk.mapper.user.UserMapper;

@Service
public class UserDAO {
	
	@Autowired
	private UserMapper userMapper;
	
	public boolean isLoggedIn(User u, HttpServletRequest req) {
		u = (User) req.getSession().getAttribute("user");
		if (u != null) {
			return true;
		}
		return false;
	}
	
	public boolean registUser(User u, HttpServletRequest req) {
		try {
			if (userMapper.registUser(u) == 1) {
				req.setAttribute("r", "회원가입 성공 !");
				return true;
			} else {
				req.setAttribute("r", "회원가입 실패 !(입력값 오류)");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "회원가입 실패 !(DB 오류)");
			return false;
		}
	}
	
	public User checkUser(User u, HttpServletRequest req) {
		try {
			User user = userMapper.checkUser(u);
			if (user.getU_email() != null && u.getU_email().equals(user.getU_email())) {
				return user;
			} else {
				return null;
			}
		} catch (Exception e) {
			return null;
		}
		
	}
	
	public boolean loginUser(User u, HttpServletRequest req, HttpServletResponse res) {
		try {
			String u_email = u.getU_email();
			String u_pw = u.getU_pw();
			
			User user = userMapper.loginUser(u);
			if (user != null) {
				String dbPw = user.getU_pw();
				if (dbPw.equals(u_pw)) {
					req.getSession().setAttribute("user", user);
					req.getSession().setMaxInactiveInterval(3000);
					Cookie c = new Cookie("lastLoginId", u_email);
					c.setMaxAge(60 * 60 * 24 * 5);
					res.addCookie(c);
					req.setAttribute("r", "로그인 진행중...");
					return true;
				}
				else {
					req.setAttribute("r", "비밀번호가 일치하지 않습니다.");
					return false;
				}
			} else {
				req.setAttribute("r", "등록되지 않은 계정입니다.");
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("r", "DB 오류 !");
			return false;
			
		}
	}
	
	public void logout(User u, HttpServletRequest req) {
		req.getSession().setAttribute("user", null);
		req.setAttribute("r", "로그아웃 되었습니다.");
		
	}
	
	// 회원정보 수정
	public void updateUser(User u) {
		userMapper.updateUser(u);
	}
}
