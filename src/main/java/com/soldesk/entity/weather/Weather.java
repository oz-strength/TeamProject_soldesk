package com.soldesk.entity.weather;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Weather {
	private List<WeatherItem> weatherItem;
	
	public Weather() {
		// TODO Auto-generated constructor stub
	}

	public Weather(List<WeatherItem> weatherItem) {
		super();
		this.weatherItem = weatherItem;
	}

	public List<WeatherItem> getWeatherItem() {
		return weatherItem;
	}

	@XmlElement
	public void setWeatherItem(List<WeatherItem> weatherItem) {
		this.weatherItem = weatherItem;
	}
	
}
