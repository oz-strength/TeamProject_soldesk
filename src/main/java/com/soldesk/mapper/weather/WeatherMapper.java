package com.soldesk.mapper.weather;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.weather.WeatherItem;

@Mapper
public interface WeatherMapper {
	public abstract int addWeather(WeatherItem wi);
	public abstract List<WeatherItem> getWeatherMap(WeatherItem wi);
	public abstract int checkWeather(WeatherItem wi);
	public abstract List<WeatherItem> getWeatherPage(WeatherItem wi);
}
