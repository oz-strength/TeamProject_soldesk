package com.soldesk.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.soldesk.entity.NftPicture;
import com.soldesk.entity.UploadFileVO;
import com.soldesk.mapper.UploadFileMapper;

@Controller
@RequestMapping(value = "/nft/*")
public class NftBoardController {
	
	@Autowired
	UploadFileMapper uploadFileMapper;
	
	// nft 게시판으로 이동
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String goNftBoard(Model model) {
	    List<UploadFileVO> npc = uploadFileMapper.getFiles();
	    List<String> imagePaths = new ArrayList<String>();
	    for (UploadFileVO nftPicture : npc) {
	        imagePaths.add(nftPicture.getFilePath());
	    }
	    model.addAttribute("imagePaths", imagePaths);
	    return "nft/board";
	}
}
