package com.soldesk.entity.location;

import java.util.ArrayList;
import java.util.List;

public class LocationList {
	public static List<Location> getList() {
		List<Location> locList = new ArrayList<Location>();
		locList.add(new Location("seoul", 60, 127));
		locList.add(new Location("gyeonggi", 61, 121));
		locList.add(new Location("gangwon", 73, 134));
		locList.add(new Location("chungbuk", 69, 107));
		locList.add(new Location("chungnam", 55, 107));
		locList.add(new Location("jeonbuk", 63, 89));
		locList.add(new Location("jeonnam", 51, 67));
		locList.add(new Location("gyeongbuk", 87, 105));
		locList.add(new Location("gyeongnam", 91, 77));
		locList.add(new Location("jeju", 52, 38));
		locList.add(new Location("incheon", 55, 124));
		locList.add(new Location("busan", 98, 76));
		locList.add(new Location("ulsan", 102, 84));
		locList.add(new Location("daegu", 89, 91));
		locList.add(new Location("daejeon", 67, 100));
		locList.add(new Location("gwangju", 58, 74));
		locList.add(new Location("sejong", 66, 103));
		locList.add(new Location("dokdo", 144, 123));
		
		return locList;
	}
	
	
}
