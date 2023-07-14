package com.soldesk.user;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
public class UserDAO {
	@Autowired
	private SqlSession ss;
	
	// 회원 가입
	public void regUser(User u, HttpServletRequest req) {
		try {
			UserMapper um = ss.getMapper(UserMapper.class);
			if(um.regUser(u)==1) {
				req.setAttribute("result", "회원 등록 성공!");
			}
		}catch(Exception e) {
			e.printStackTrace();
			req.setAttribute("result", "회원 등록 실패");
		}
	}
	
	// 로그인(비밀번호 체크)
	public String getLogin(User u, HttpServletRequest req) {
		User user = ss.getMapper(UserMapper.class).getLogin(u);
		if(user.getU_pw().equals(u.getU_pw())) {
			return "로그인성공";
		}else {
			return "로그인실패";
		}
	}
}
