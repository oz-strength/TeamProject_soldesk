package com.soldesk.entity.user;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Users {
	private List<User> user;
	
	public Users() {
		// TODO Auto-generated constructor stub
	}

	public Users(List<User> user) {
		super();
		this.user = user;
	}

	public List<User> getUser() {
		return user;
	}
	@XmlElement
	public void setUser(List<User> user) {
		this.user = user;
	}
	
}
