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
	
	// 현재 시간 기준으로 하루가 지났는지 확인하는 메서드
	private boolean isOneDayPassed(Long lastLoginTime) {
	    long currentTime = System.currentTimeMillis();
	    long oneDayMillis = 24 * 60 * 60 * 1000;
	    return (currentTime - lastLoginTime) >= oneDayMillis;
	}
	
	public boolean loginUser(User u, HttpServletRequest req, HttpServletResponse res) {
		try {
			String u_email = u.getU_email();
			String u_pw = u.getU_pw();
			
			User user = userMapper.loginUser(u);
			if (user != null) {
				String dbPw = user.getU_pw();
				if (dbPw.equals(u_pw)) {
					// 지갑이 존재한다면,
					// 이전에 로그인한 시간을 세션에 저장하고, 로그인 시간이 지난 경우에만 포인트를 주도록 변경
					if (!user.getU_public_key().equals("none")) {
						HttpSession session = req.getSession();
						Long lastLoginTime = (Long) session.getAttribute("lastLoginTime");
						if (lastLoginTime == null || isOneDayPassed(lastLoginTime)) {
							// 지갑에 캐쉬 증정 -> 1 cash
							user.setU_wallet_cash(user.getU_wallet_cash() + 1);
							userMapper.provideCashUser(user);
							System.out.println("캐쉬가 1 증정되었습니다.");
							
							// 현재 시간을 세션에 저장
							session.setAttribute("lastLoginTime", System.currentTimeMillis());
						}
					}
					
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
	public void updateUser(User u, HttpServletRequest req) {
		userMapper.updateUser(u);
	    
		User currentUser = (User) req.getSession().getAttribute("user");
	    currentUser.setU_name(u.getU_name()); 
	    req.getSession().setAttribute("user", currentUser);
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
				u.setU_wallet_cash(50);
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
