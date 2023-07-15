package com.soldesk.entity;

public class NftPicture {
	private Integer n_idx;
	private String n_name;
	private String n_photo;
	
	public NftPicture() {
		// TODO Auto-generated constructor stub
	}

	public NftPicture(Integer n_idx, String n_name, String n_photo) {
		super();
		this.n_idx = n_idx;
		this.n_name = n_name;
		this.n_photo = n_photo;
	}

	public Integer getN_idx() {
		return n_idx;
	}

	public void setN_idx(Integer n_idx) {
		this.n_idx = n_idx;
	}

	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public String getN_photo() {
		return n_photo;
	}

	public void setN_photo(String n_photo) {
		this.n_photo = n_photo;
	}
	
	
}
