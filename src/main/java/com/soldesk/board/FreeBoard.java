package com.soldesk.board;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class FreeBoard {
	public int b_no;
	public String b_u_email;
	public String b_title;
	public String b_writer;
	public String b_detail;
	public String b_indate;
	public int b_count;
	public String b_photo;
	
	public FreeBoard() {
		// TODO Auto-generated constructor stub
	}
	public FreeBoard(int b_no, String b_u_email, String b_title, String b_writer, String b_detail, String b_indate,
			int b_count, String b_photo) {
		super();
		this.b_no = b_no;
		this.b_u_email = b_u_email;
		this.b_title = b_title;
		this.b_writer = b_writer;
		this.b_detail = b_detail;
		this.b_indate = b_indate;
		this.b_count = b_count;
		this.b_photo = b_photo;
	}

	public int getB_no() {
		return b_no;
	}
	@XmlElement
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_u_email() {
		return b_u_email;
	}
	@XmlElement
	public void setB_u_email(String b_u_email) {
		this.b_u_email = b_u_email;
	}

	public String getB_title() {
		return b_title;
	}
	@XmlElement
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_detail() {
		return b_detail;
	}
	@XmlElement
	public void setB_detail(String b_detail) {
		this.b_detail = b_detail;
	}
	public String getB_writer() {
		return b_writer;
	}
	@XmlElement
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getB_indate() {
		return b_indate;
	}
	@XmlElement
	public void setB_indate(String b_indate) {
		this.b_indate = b_indate;
	}

	public int getB_count() {
		return b_count;
	}
	@XmlElement
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	public String getB_photo() {
		return b_photo;
	}
	@XmlElement
	public void setB_photo(String b_photo) {
		this.b_photo = b_photo;
	}
	
	
	
}
