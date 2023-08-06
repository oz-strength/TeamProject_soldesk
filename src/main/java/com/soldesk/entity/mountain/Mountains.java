package com.soldesk.entity.mountain;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Mountains {
	private List<Mountain> mountain;

	public Mountains() {
		// TODO Auto-generated constructor stub
	}

	public Mountains(List<Mountain> mountain) {
		super();
		this.mountain = mountain;
	}

	public List<Mountain> getMountain() {
		return mountain;
	}

	@XmlElement
	public void setMountain(List<Mountain> mountain) {
		this.mountain = mountain;
	}
	
	
	
}
