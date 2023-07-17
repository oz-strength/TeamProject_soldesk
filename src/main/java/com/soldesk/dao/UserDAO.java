package com.soldesk.dao;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.user.User;
import com.soldesk.mapper.UserMapper;

@Service
public class UserDAO {
	
	@Autowired
	private SqlSession ss;
	
	public boolean isLoggedIn(User u, HttpServletRequest req) {
		u = (User) req.getSession().getAttribute("user");
		if (u != null) {
			return true;
		}
		return false;
	}
	
	public boolean registUser(User u, HttpServletRequest req) {
		try {
			if (ss.getMapper(UserMapper.class).registUser(u) == 1) {
				System.out.println("회원가입 성공 !");
				return true;
			} else {
				System.out.println("회원가입 실패 !(입력값 오류)");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원가입 실패 !(DB 오류)");
			return false;
		}
	}
	
	public User checkUser(User u, HttpServletRequest req) {
		try {
			User user = ss.getMapper(UserMapper.class).checkUser(u);
			if (u.getU_email().equals(user.getU_email())) {
				return user;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 오류 !");
			return null;
		}
		
	}
	
	public boolean loginUser(User u, HttpServletRequest req, HttpServletResponse res) {
		try {
			String u_email = u.getU_email();
			String u_pw = u.getU_pw();
			
			User user = ss.getMapper(UserMapper.class).loginUser(u);
			if (user != null) {
				String dbPw = user.getU_pw();
				if (dbPw.equals(u_pw)) {
					req.getSession().setAttribute("user", user);
					req.getSession().setMaxInactiveInterval(3000);
					Cookie c = new Cookie("lastLoginId", u_email);
					c.setMaxAge(60 * 60 * 24 * 5);
					res.addCookie(c);
					System.out.println("비밀번호 일치 ! 로그인 진행중...");
					return true;
				}
				else {
					System.out.println("비밀번호가 일치하지 않습니다.");
					return false;
				}
			} else {
				System.out.println("등록되지 않은 계정입니다.");
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 오류 !");
			return false;
			
		}
	}
}
