package com.soldesk.user;

public interface UserMapper {
	public abstract int regUser(User u);
	public abstract User getLogin(User u);
}
