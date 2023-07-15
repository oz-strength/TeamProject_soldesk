package com.soldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.soldesk.entity.Criteria;
import com.soldesk.entity.Board;

@Mapper
public interface BoardMapper {
	public abstract List<Board> getList(Criteria cri);
	public abstract int totalCount(Criteria cri);
}
