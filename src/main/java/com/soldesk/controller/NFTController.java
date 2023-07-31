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
	
	@RequestMapping(value = "/nft.DetailPage", method = RequestMethod.GET)
	public String goDetailNFT(HttpServletRequest req) {
		int n_no = Integer.parseInt(req.getParameter("n_no"));
		int n_status = Integer.parseInt(req.getParameter("n_status"));
		req.setAttribute("n_no", n_no);
		req.setAttribute("n_status", n_status);
		return "nft/nftDetail";
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
	
	@RequestMapping(value = "/nft.swap", method = RequestMethod.POST)
	public String swapNFTStatus(NFT nft, HttpServletRequest req) {
		nDAO.swapNFTStatus(nft, req);
		if (nft.getN_status() == 1) {
			req.setAttribute("r", "경매 상태로 전환되었습니다.");
		} else if (nft.getN_status() == 2) {
			req.setAttribute("r", "경매장에 등록되었습니다.");
		}
		return "home";
	}
}
