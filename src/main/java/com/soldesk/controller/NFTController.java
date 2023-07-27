package com.soldesk.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.soldesk.dao.NFTDAO;
import com.soldesk.entity.nft.NFT;
import com.soldesk.entity.nft.NFTList;

@Controller
public class NFTController {
	
	@Autowired
	private NFTDAO nDAO;
	
//	@RequestMapping(value = "/nft", method = RequestMethod.GET)
//	public String goNFTPage(HttpServletRequest req) {
//		return "nft";
//	}
	
	@RequestMapping(value = "/admin/nft.regist", method = RequestMethod.POST)
	public String registNFT(@ModelAttribute NFT nft, HttpServletRequest req) {
		nDAO.processNFTFiles(nft, req);
		return "admin/admin";
	}
	
	@RequestMapping(value = "/nft/nft.Board.getJSON", method = RequestMethod.GET, 
			produces = "application/json; charset=UTF-8")
	public @ResponseBody NFTList getNFTBoardJSON(NFT nft, HttpServletRequest req) {
		return nDAO.getNFTList(nft);
	}
	
	// 갤러리 버튼 눌렀을 때 페이지 이동
	@RequestMapping(value = "/nft.Board", method = RequestMethod.GET)
	public String goNFTBoard(HttpServletRequest req) {
		return "";
	}
	
	// 파라미터(n_no) 값 받아서 JSON으로 출력
	@RequestMapping(value = "/nft.Detail.getJSON", method = RequestMethod.GET, 
			produces = "application/json; charset=UTF-8")
	public @ResponseBody NFT getNFTDetailJSON(NFT nft, HttpServletRequest req) {
		return nDAO.getNFTDetailJSON(nft);
	}
	
	@RequestMapping(value = "/admin/nft.Count.getJSON", method = RequestMethod.GET, 
			produces = "application/json; charset=UTF-8")
	public @ResponseBody int countNFT() {
		return nDAO.countNFT();
	}
}
