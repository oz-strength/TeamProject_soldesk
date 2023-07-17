package com.soldesk.mapper.user;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.user.User;

@Mapper
public interface UserMapper {
	public abstract int registUser(User u); // 회원 등록

	public abstract User checkUser(User u); // 이메일 존재여부 체크

	public abstract User loginUser(User u);
	
	
}
