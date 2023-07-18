package com.soldesk.entity.mountain;

public class Mountain {
	private String m_name;
	private String m_latitude;
	private String m_longitude;
	
	public Mountain() {
		// TODO Auto-generated constructor stub
	}

	public Mountain(String m_name, String m_latitude, String m_longitude) {
		super();
		this.m_name = m_name;
		this.m_latitude = m_latitude;
		this.m_longitude = m_longitude;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_latitude() {
		return m_latitude;
	}

	public void setM_latitude(String m_latitude) {
		this.m_latitude = m_latitude;
	}

	public String getM_longitude() {
		return m_longitude;
	}

	public void setM_longitude(String m_longitude) {
		this.m_longitude = m_longitude;
	}
	
	
}
