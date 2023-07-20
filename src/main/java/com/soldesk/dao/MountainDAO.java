package com.soldesk.dao;

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
	
}
