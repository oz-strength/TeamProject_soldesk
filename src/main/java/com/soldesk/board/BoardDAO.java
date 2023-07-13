package com.soldesk.board;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardDAO {
	@Autowired
	private SqlSession ss;
	
	// 자유게시판 글 작성
	public void regFreeBoard(FreeBoard f, HttpServletRequest req) {
		try {
			BoardMapper bm = ss.getMapper(BoardMapper.class);
			if(bm.regFreeBoard(f) ==1) {
				req.setAttribute("r", "글쓰기 성공");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			req.setAttribute("r", "글쓰기 실패");
		}
	}
}
