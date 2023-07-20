package com.soldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.mountain.Mountain;

@Mapper
public interface MountainMapper {
	public abstract List<Mountain> getAllMountain();
	public abstract List<Mountain> getLocalMountain(Mountain m);
}
