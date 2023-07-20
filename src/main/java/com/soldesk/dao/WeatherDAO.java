package com.soldesk.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.WeatherManager;
import com.soldesk.entity.location.Location;
import com.soldesk.entity.location.LocationList;
import com.soldesk.entity.weather.Weather;
import com.soldesk.entity.weather.WeatherItem;
import com.soldesk.mapper.WeatherMapper;


@Service
public class WeatherDAO {
	
	@Autowired

	private WeatherMapper wm;
	
	public boolean checkWeather() {
		try {
			String baseDate = WeatherManager.getBaseDate();
			WeatherItem wi = new WeatherItem();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			Date w_baseDate = sdf.parse(baseDate);
			wi.setW_baseDate(w_baseDate);
			int count = wm.checkWeather(wi);
			System.out.println("날씨 데이터 개수 : " + count + "개");
			if (count == 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Weather Count 오류 !");
			return false;
		}
	}
	
	public void insertWeather(WeatherItem wi) {
		try {
			if (wm.addWeather(wi) == 1) {
//				System.out.println("DataBase Insert Successful");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DataBase Insert Fail");
		}
	}
	
	public void addWeather(HttpServletRequest req) {
		String baseDate = WeatherManager.getBaseDate();
		DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyyMMddHHmm");
		String bd = baseDate.substring(0, 8);
		String bt = baseDate.substring(8, 12);

		List<Location> locList = LocationList.getList();
		for (Location loc : locList) {
			try {
				URL url = new URL("https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst"
						+ "?serviceKey=mpmnnzh51rXrEowwEy3UFJDWRB2dTAV%2FZOrLwt0GyOCdEIehi34%2BlAEZrlcDdIcNSazq%2BBusBhKCeaprc6BN5Q%3D%3D"
						+ "&numOfRows=1000"
						+ "&pageNo=1"
						+ "&base_date=" + bd
						+ "&base_time=" + bt
						+ "&nx=" + String.format("%d", loc.getX())
						+ "&ny=" + String.format("%d", loc.getY())
						+ "&dataType=JSON");
				HttpsURLConnection huc = (HttpsURLConnection) url.openConnection();
				huc.setRequestMethod("GET");
				huc.setRequestProperty("Accept", "application/json");
				
				if (huc.getResponseCode() != 200) {
					throw new RuntimeException("Failed : HTTP error code : " + huc.getResponseCode());
				}
				
				BufferedReader br = new BufferedReader(new InputStreamReader(huc.getInputStream(), "UTF-8"));
				
				ObjectMapper objectMapper = new ObjectMapper();
				JsonNode jsonNode = objectMapper.readTree(br);
//				System.out.println("JsonNode : " + jsonNode);
				
				JsonNode itemNodes = jsonNode.get("response").get("body").get("items").get("item");
//				System.out.println(itemsNode);
				
				
				if (itemNodes.isArray()) {
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
					String sqlBaseDate = bd + bt;
					Date w_baseDate = sdf.parse(sqlBaseDate);
					String sqlFcstDate = null;
					Date w_fcstDate = null;
					
					String inc_bd = bd;
					String inc_bt = bt;
					
					boolean skip = true;
					WeatherItem wi = null;
					
					for (JsonNode itemNode : itemNodes) {
						if (!itemNode.get("fcstDate").asText().equals(inc_bd) || 
								!itemNode.get("fcstTime").asText().equals(inc_bt)) {
							inc_bt = String.format("%04d", Integer.parseInt(inc_bt) + 100);
							if (Integer.parseInt(inc_bt) == 2400) {
								inc_bt = "0000";
								LocalDateTime dateTime = LocalDateTime.parse(inc_bd + inc_bt, formatDateTime);
								dateTime = dateTime.plusDays(1);
//			    			System.out.println(dateTime);
								inc_bd = dateTime.format(formatDateTime).substring(0, 8);
							}
							if (!skip) {
								// 데이터 베이스에 추가 코드
								insertWeather(wi);
							} else {
								skip = false;
							}
							wi = new WeatherItem();
							wi.setW_loc(loc.getName());
							if (itemNode.get("baseDate").asText().equals(bd) && 
									itemNode.get("baseTime").asText().equals(bt)) {
								wi.setW_baseDate(w_baseDate);
							}
							if (itemNode.get("fcstDate").asText().equals(inc_bd) && 
									itemNode.get("fcstTime").asText().equals(inc_bt)) {
								sqlFcstDate = inc_bd + inc_bt;
								w_fcstDate = sdf.parse(sqlFcstDate);
								wi.setW_fcstDate(w_fcstDate);
								System.out.println(wi.getW_fcstDate());
							} 
						}
						if (itemNode.get("category").asText().equals("TMP")) {
//		    			System.out.println(count + "번째 : " + itemNode.get("fcstValue").asText());
							wi.setW_tmp(itemNode.get("fcstValue").asInt());
//						System.out.println("TMP : " + wi.getW_tmp());
						} else if (itemNode.get("category").asText().equals("TMX")) {
							wi.setW_tmx(itemNode.get("fcstValue").asInt());
							wi.setW_tmn(100);
//						System.out.println("TMX : " + wi.getW_tmx());
						} else if (itemNode.get("category").asText().equals("TMN")) {
							wi.setW_tmn(itemNode.get("fcstValue").asInt());
							wi.setW_tmx(-100);
//						System.out.println("TMN : " + wi.getW_tmn());
						} else if (itemNode.get("category").asText().equals("REH")) {
							wi.setW_reh(itemNode.get("fcstValue").asInt());
//						System.out.println("REH : " + wi.getW_reh());
						} else if (itemNode.get("category").asText().equals("POP")) {
							wi.setW_pop(itemNode.get("fcstValue").asInt());
//						System.out.println("POP : " + wi.getW_pop());
						} else if (itemNode.get("category").asText().equals("VEC")) {
							wi.setW_vec(itemNode.get("fcstValue").asInt());
//						System.out.println("VEC : " + wi.getW_vec()); 
						} else if (itemNode.get("category").asText().equals("WSD")) {
							wi.setW_wsd(itemNode.get("fcstValue").asDouble());
//						System.out.println("WSD : " + wi.getW_wsd());
						} else if (itemNode.get("category").asText().equals("SKY")) {
							wi.setW_sky(itemNode.get("fcstValue").asInt());
						}
					}
				}
				
				System.out.println("insert Data into DB Successful !");
				huc.disconnect();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
	}
	
	public Weather getWeatherMap(HttpServletRequest req) {
		Date w_fcstDate = WeatherManager.getFcstDate();
		WeatherItem wi = new WeatherItem();
		wi.setW_fcstDate(w_fcstDate);
//		System.out.println(wi.getW_fcstDate());
		return new Weather(wm.getWeatherMap(wi));
	}

	public Weather getWeatherPage(WeatherItem wi, HttpServletRequest req) {
		try {
			String baseDate = WeatherManager.getBaseDate();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
			Date w_baseDate = sdf.parse(baseDate);
			wi.setW_baseDate(w_baseDate);
			
//			System.out.println(wi.getW_loc());
//			System.out.println(wi.getW_baseDate());
			return new Weather(wm.getWeatherPage(wi));
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
