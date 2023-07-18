package com.soldesk.entity.board;

import java.util.Date;

public class Board {
	private int b_no; 
	private String b_email; 
	private String b_title; 
	private String b_writer; 
	private String b_content; 
	private Date b_indate; 
	private int b_count; 
	private int b_photo; 
	
	private int boardGroup; // 부모글과 답글 묶는역할
	private int boardSequence; // 답글의 순서
	private int boardLevel; // 답글의 레벨
	private int boardAvailable; // 삭제된 글인지 여부
	// setter, getter 
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_email() {
		return b_email;
	}
	public void setB_email(String b_email) {
		this.b_email = b_email;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public Date getB_indate() {
		return b_indate;
	}
	public void setB_indate(Date b_indate) {
		this.b_indate = b_indate;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public int getB_photo() {
		return b_photo;
	}
	public void setB_photo(int b_photo) {
		this.b_photo = b_photo;
	}
	public int getBoardGroup() {
		return boardGroup;
	}
	public void setBoardGroup(int boardGroup) {
		this.boardGroup = boardGroup;
	}
	public int getBoardSequence() {
		return boardSequence;
	}
	public void setBoardSequence(int boardSequence) {
		this.boardSequence = boardSequence;
	}
	public int getBoardLevel() {
		return boardLevel;
	}
	public void setBoardLevel(int boardLevel) {
		this.boardLevel = boardLevel;
	}
	public int getBoardAvailable() {
		return boardAvailable;
	}
	public void setBoardAvailable(int boardAvailable) {
		this.boardAvailable = boardAvailable;
	}
	
	
}
