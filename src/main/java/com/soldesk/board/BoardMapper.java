package com.soldesk.board;

import java.util.List;

public interface BoardMapper {
	public abstract int regFreeBoard(FreeBoard f);
	public abstract List<FreeBoard> getAllFreeBoard();
	public abstract List<FreeBoard> getFreeBoardDetail(FreeBoard f);
}
