package com.soldesk.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import com.soldesk.entity.board.Board;
import com.soldesk.entity.board.Criteria;

@Mapper
public interface BoardMapper {
	public abstract List<Board> getList(Criteria cri); // 게시글 전체 
	public abstract int totalCount(Criteria cri); // 게시글 총 개수 
	public abstract void register(Board board); // 게시글 등록
	public abstract Board get(int b_no); // 게시글 하나 가져오기
	public abstract void updateCount(int b_no); // 조회수 업데이트
	public abstract void modify(Board board); // 게시글 수정
	public abstract void remove(int b_no); // 게시글 삭제
	public abstract void replySeqUpdate(Board parent); // 부모글보다 큰 boardSequence + 1
	public abstract void replyInsert(Board board); // 답글 등록
	
}
