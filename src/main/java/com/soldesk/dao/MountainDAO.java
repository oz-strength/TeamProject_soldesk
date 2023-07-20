package com.soldesk.dao;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.mountain.Mountain;
import com.soldesk.entity.mountain.Mountains;
import com.soldesk.mapper.MountainMapper;

@Service
public class MountainDAO {
	@Autowired
	private MountainMapper mm;
	
	// 모든 산 조회
	public Mountains getAllMountain(HttpServletRequest req) {
		return new Mountains(mm.getAllMountain());
	}
	
	// 특정 지역 산 조회
	public Mountains getLocalMountain(Mountain m,HttpServletRequest req) {
		return new Mountains(mm.getLocalMountain(m));
	}
	
	// 산 상세보기 조회
	public Mountains getMountainDetail(Mountain m, HttpServletRequest req) {
		return new Mountains(mm.getMountainDetail(m));
	}
	
	// 산 데이터 개수 리턴
	public int getMountainCount() {
		int count = mm.getMountainCount();
		return count;
	}
	
	// 랜덤 산 번호 리턴
	public int getMountainRandomCount() {
		Random r = new Random();
		int result = r.nextInt(getMountainCount()) +1;
		return result;
	}
	
}
