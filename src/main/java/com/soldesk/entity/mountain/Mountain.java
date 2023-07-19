package com.soldesk.entity.mountain;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Mountain {
	private int m_no;
	private String m_name;
	private int m_height;
	private String m_location;
	private String m_address;
	private String m_photo;
	
	public Mountain() {
		// TODO Auto-generated constructor stub
	}

	public Mountain(int m_no, String m_name, int m_height, String m_location, String m_address, String m_photo) {
		super();
		this.m_no = m_no;
		this.m_name = m_name;
		this.m_height = m_height;
		this.m_location = m_location;
		this.m_address = m_address;
		this.m_photo = m_photo;
	}

	public int getM_no() {
		return m_no;
	}

	@XmlElement
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_name() {
		return m_name;
	}

	@XmlElement
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public int getM_height() {
		return m_height;
	}

	@XmlElement
	public void setM_height(int m_height) {
		this.m_height = m_height;
	}

	public String getM_location() {
		return m_location;
	}

	@XmlElement
	public void setM_location(String m_location) {
		this.m_location = m_location;
	}

	public String getM_address() {
		return m_address;
	}

	@XmlElement
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_photo() {
		return m_photo;
	}

	@XmlElement
	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}
	
	
}
