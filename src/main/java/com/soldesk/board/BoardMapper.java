package com.soldesk.board;

import java.util.List;

public interface BoardMapper {
	public abstract int regFreeBoard(FreeBoard f);
	public abstract List<FreeBoard> getAllFreeBoard();
}
