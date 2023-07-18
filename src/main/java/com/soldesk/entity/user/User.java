package com.soldesk.entity.user;

public class User {
	private String u_email;
	private String u_pw;
	private String u_name;
	private String u_birth;
	private String u_gender;
	private Integer u_admin = 0;
	private String u_public_key = "none";
	private String u_private_key = "none";
	private Integer u_wallet_cash = 0;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String u_email, String u_pw, String u_name, String u_birth, String u_gender, Integer u_admin,
			String u_public_key, String u_private_key, Integer u_wallet_cash) {
		super();
		this.u_email = u_email;
		this.u_pw = u_pw;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_gender = u_gender;
		this.u_admin = u_admin;
		this.u_public_key = u_public_key;
		this.u_private_key = u_private_key;
		this.u_wallet_cash = u_wallet_cash;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_pw() {
		return u_pw;
	}

	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_birth() {
		return u_birth;
	}

	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public Integer getU_admin() {
		return u_admin;
	}

	public void setU_admin(Integer u_admin) {
		this.u_admin = u_admin;
	}

	public String getU_public_key() {
		return u_public_key;
	}

	public void setU_public_key(String u_public_key) {
		this.u_public_key = u_public_key;
	}

	public String getU_private_key() {
		return u_private_key;
	}

	public void setU_private_key(String u_private_key) {
		this.u_private_key = u_private_key;
	}

	public Integer getU_wallet_cash() {
		return u_wallet_cash;
	}

	public void setU_wallet_cash(Integer u_wallet_cash) {
		this.u_wallet_cash = u_wallet_cash;
	}
	
	
	
	
}
