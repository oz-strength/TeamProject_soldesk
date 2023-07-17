package com.soldesk.entity.weather;

import java.util.Date;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class WeatherItem {
	private String w_loc;
	private Date w_baseDate;
	private Date w_fcstDate;
	private int w_tmp;
	private int w_tmx = 999;
	private int w_tmn = -999;
	private int w_reh;
	private int w_pop;
	private int w_vec;
	private double w_wsd;
	private int w_sky;
	
	public WeatherItem() {
		// TODO Auto-generated constructor stub
	}

	public WeatherItem(String w_loc, Date w_baseDate, Date w_fcstDate, int w_tmp, int w_tmx, int w_tmn, int w_reh,
			int w_pop, int w_vec, double w_wsd, int w_sky) {
		super();
		this.w_loc = w_loc;
		this.w_baseDate = w_baseDate;
		this.w_fcstDate = w_fcstDate;
		this.w_tmp = w_tmp;
		this.w_tmx = w_tmx;
		this.w_tmn = w_tmn;
		this.w_reh = w_reh;
		this.w_pop = w_pop;
		this.w_vec = w_vec;
		this.w_wsd = w_wsd;
		this.w_sky = w_sky;
	}

	public String getW_loc() {
		return w_loc;
	}

	@XmlElement
	public void setW_loc(String w_loc) {
		this.w_loc = w_loc;
	}

	public Date getW_baseDate() {
		return w_baseDate;
	}

	@XmlElement
	public void setW_baseDate(Date w_baseDate) {
		this.w_baseDate = w_baseDate;
	}

	public Date getW_fcstDate() {
		return w_fcstDate;
	}

	@XmlElement
	public void setW_fcstDate(Date w_fcstDate) {
		this.w_fcstDate = w_fcstDate;
	}

	public int getW_tmp() {
		return w_tmp;
	}

	@XmlElement
	public void setW_tmp(int w_tmp) {
		this.w_tmp = w_tmp;
	}

	public int getW_tmx() {
		return w_tmx;
	}

	@XmlElement
	public void setW_tmx(int w_tmx) {
		this.w_tmx = w_tmx;
	}

	public int getW_tmn() {
		return w_tmn;
	}

	@XmlElement
	public void setW_tmn(int w_tmn) {
		this.w_tmn = w_tmn;
	}

	public int getW_reh() {
		return w_reh;
	}

	@XmlElement
	public void setW_reh(int w_reh) {
		this.w_reh = w_reh;
	}

	public int getW_pop() {
		return w_pop;
	}

	@XmlElement
	public void setW_pop(int w_pop) {
		this.w_pop = w_pop;
	}

	public int getW_vec() {
		return w_vec;
	}

	@XmlElement
	public void setW_vec(int w_vec) {
		this.w_vec = w_vec;
	}

	public double getW_wsd() {
		return w_wsd;
	}

	@XmlElement
	public void setW_wsd(double w_wsd) {
		this.w_wsd = w_wsd;
	}

	public int getW_sky() {
		return w_sky;
	}

	@XmlElement
	public void setW_sky(int w_sky) {
		this.w_sky = w_sky;
	}
	
	

}
