package com.soldesk.dao;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.BlockchainManager;
import com.soldesk.entity.user.User;
import com.soldesk.entity.user.Users;
import com.soldesk.entity.user.Wallet;
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
	
	// 모든 유저 db 조회
	public Users getAllUser() {
		return new Users(userMapper.getAllUser());
	}
	
	// 회원 삭제(1개)
	public void deleteUser(User u) {
		userMapper.deleteUser(u);
	}
	
	public void makeWalletUser(User u, HttpServletRequest req) {
		User user = userMapper.checkUser(u);
		if (user.getU_public_key().equals("none")) {
			System.out.println("지갑을 생성합니다.");
			
			Wallet w = BlockchainManager.createWallet();
			System.out.println(w.getPublicKey());
			System.out.println(w.getPrivateKey());
			System.out.println(w.getWalletAddress());
			
			if (user.getU_admin() == 1) {
				System.out.println("관리자입니다.");
				u.setU_wallet_cash(10000);
			} else {
				u.setU_wallet_cash(5);
			}
			
			u.setU_public_key(w.getPublicKey());
			u.setU_private_key(w.getPrivateKey());
			u.setU_wallet_address(w.getWalletAddress());

			if (userMapper.makeWalletUser(u) == 1) {
				System.out.println("지갑이 성공적으로 생성되었습니다.");
			} else {
				System.out.println("지갑이 생성을 실패하였습니다.");
			}
			
			HttpSession ss = req.getSession(false);
			
			if (ss != null) {
				System.out.println("세션 재설정을 시작합니다.");
				
				User userSs = (User) ss.getAttribute("user");
				
				userSs.setU_public_key(u.getU_public_key());
				userSs.setU_private_key(u.getU_private_key());
				userSs.setU_wallet_address(u.getU_wallet_address());
				userSs.setU_wallet_cash(u.getU_wallet_cash());
				
				ss.setAttribute("user", userSs);
			}
			
		} else {
			System.out.println("이미 지갑이 존재합니다.");
		}
		
		
	}
}
