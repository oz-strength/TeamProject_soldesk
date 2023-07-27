package com.soldesk.entity;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class WeatherManager {
	public static Date getFcstDate() {
		try {
			LocalDateTime now = LocalDateTime.now();
			DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyyMMddHH");
			String formatToString = String.valueOf(Integer.parseInt(now.format(formatDateTime)) + 1);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHH");
			Date fcstDate = sdf.parse(formatToString);
			
			return fcstDate;			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static String getBaseDate() {
		LocalDateTime now = LocalDateTime.now();
		int nh = now.getHour();
		if (nh < 2) {
			now = now.minusDays(1).withHour(23).withMinute(00);
		} else if (nh < 5) {
			now = now.withHour(2).withMinute(00);
		} else if (nh < 8) {
			now = now.withHour(5).withMinute(00);
		} else if (nh < 11) {
			now = now.withHour(8).withMinute(00);
		} else if (nh < 14) {
			now = now.withHour(11).withMinute(00);
		} else if (nh < 17) {
			now = now.withHour(14).withMinute(00);
		} else if (nh < 23) {
			now = now.withHour(17).withMinute(00);
		}
		DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyyMMddHHmm");
		String baseDate = now.format(formatDateTime);
		
		
		return baseDate;
	}
	
	public static String get2DaysLater(String baseDate) {
		DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyyMMddHHmm");
        LocalDateTime bd = LocalDateTime.parse(baseDate, formatDateTime);
        
        LocalDateTime bd2dlDT = bd.plusDays(2);
        
        String baseDate2DL = bd2dlDT.format(formatDateTime);
        
        return baseDate2DL;
	}
}
