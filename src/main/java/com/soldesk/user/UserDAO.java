package com.soldesk.user;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
