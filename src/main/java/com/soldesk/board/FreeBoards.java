package com.soldesk.board;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class FreeBoards {
	private List<FreeBoard> freeboard;
	public FreeBoards() {
		// TODO Auto-generated constructor stub
	}
	public FreeBoards(List<FreeBoard> freeboard) {
		super();
		this.freeboard = freeboard;
	}
	public List<FreeBoard> getFreeboard() {
		return freeboard;
	}
	@XmlElement
	public void setFreeboard(List<FreeBoard> freeboard) {
		this.freeboard = freeboard;
	}
	
	
}
