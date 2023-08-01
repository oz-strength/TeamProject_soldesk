package com.soldesk.entity.nft;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.web.multipart.MultipartFile;

@XmlRootElement
public class NFT {
	private int n_no;
	private String n_hash;
	private String n_master = "admin@admin.com";
	private String n_img;
	private int n_status = 0;
	private String n_brand = "MyMountain";
	private String n_name;
	private MultipartFile[] n_files;
	
	public NFT() {
		// TODO Auto-generated constructor stub
	}
	
	public NFT(int n_no, String n_hash, String n_master, String n_img, int n_status, String n_brand, String n_name,
			MultipartFile[] n_files) {
		super();
		this.n_no = n_no;
		this.n_hash = n_hash;
		this.n_master = n_master;
		this.n_img = n_img;
		this.n_status = n_status;
		this.n_brand = n_brand;
		this.n_name = n_name;
		this.n_files = n_files;
	}

	public int getN_no() {
		return n_no;
	}

	@XmlElement
	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getN_hash() {
		return n_hash;
	}

	@XmlElement
	public void setN_hash(String n_hash) {
		this.n_hash = n_hash;
	}

	public String getN_master() {
		return n_master;
	}

	@XmlElement
	public void setN_master(String n_master) {
		this.n_master = n_master;
	}

	public String getN_img() {
		return n_img;
	}

	@XmlElement
	public void setN_img(String n_img) {
		this.n_img = n_img;
	}

	public int getN_status() {
		return n_status;
	}

	@XmlElement
	public void setN_status(int n_status) {
		this.n_status = n_status;
	}

	public String getN_brand() {
		return n_brand;
	}

	@XmlElement
	public void setN_brand(String n_brand) {
		this.n_brand = n_brand;
	}

	public String getN_name() {
		return n_name;
	}

	@XmlElement
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public MultipartFile[] getN_files() {
		return n_files;
	}

	public void setN_files(MultipartFile[] n_files) {
		this.n_files = n_files;
	}
	
}
