package com.soldesk.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.soldesk.entity.User;

@MapperScan
public interface UserMapper {
	public abstract int register(User u); // 회원 등록

	public abstract User registerCheck(String u_email); // 이메일 존재여부 체크

	public abstract User userLogin(User u);
	
	
}
