package com.soldesk.controller;

import java.io.File;


import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.soldesk.dao.MountainDAO;
import com.soldesk.dao.UserDAO;
import com.soldesk.entity.mountain.Mountain;
import com.soldesk.entity.user.User;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	

	@Autowired
	private MountainDAO mDAO;
	@Autowired
	private UserDAO uDAO;


	
	// 어드민 페이지로 이동
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String goAdmin() {
		return "admin/admin";
	}
	
	// 산 수정 페이지 이동
	@RequestMapping(value = "/admin/modifyMountain")
	public String goModifyMountain() {
		return "admin/modifyMountain";
	}
	
	// 산 수정하기 기능
	@RequestMapping(value = "/admin.modifyMountain", method = RequestMethod.POST)
	public String modifyMountain(Mountain m) {
		mDAO.modifyMountain(m);
		return "admin";
	}
	
	// 산 등록 페이지 이동
	@RequestMapping(value = "/admin/registerMountain")
	public String goRegsiterMountain() {
		return "admin/registerMountain";
	}
	
	// 산 등록하기 기능
	@RequestMapping(value = "/admin.registerMountain", method = RequestMethod.POST)
	public String registerMountain(Mountain m) {
		mDAO.registerMountain(m);
		return "admin";
	}
	
	// 사용자 삭제 기능
	@RequestMapping(value = "/admin.DeleteUser")
	public String deleteUser(User u) {
		uDAO.deleteUser(u);
		return "admin";
	}
	
	@ResponseBody
	@RequestMapping(value = { "uploadPath" }, method = RequestMethod.POST, produces = "json/plain;charset=UTF-8")
	public int uploadPath(MultipartHttpServletRequest mtfRequest, 
			final HttpServletRequest request, 
			final HttpServletResponse response) {
		int res = 1;
		System.out.println("제목 > " + request.getParameter("title"));
		System.out.println("내용 > " + request.getParameter("contents"));
		if(mtfRequest != null) {
			List<MultipartFile> fileList = mtfRequest.getFiles("fileList");
			for(int i=0; i<fileList.size(); i++) {
				MultipartFile multi = fileList.get(i);
				if(multi == null) {
					return 0;
				}else if(multi.getSize() == 0) {
					return 0;
				}else {
					System.out.println("파일명 : " + multi.getOriginalFilename() + " / 파일 사이즈 : " + multi.getSize());
				}
			}
		}
			
		return res;
	}
	
}
