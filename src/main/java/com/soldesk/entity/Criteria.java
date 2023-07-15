package com.soldesk.entity;

public class Criteria {
	private int page; // 현재 페이지 번호
	private int perPageNum; // 한페이지 보여줄 게시글 수 
	// 검색기능에 필요한 변수
	private String type;
	private String keyword;
	
	public Criteria() {
		this.page=1;
		this.perPageNum=5; // 조정
	}
	// 현재 페이지의 게시글의 시작번호
	public int getPageStart() { 		
		return (page-1)*perPageNum + 1;		
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
