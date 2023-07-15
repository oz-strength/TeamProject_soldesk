package com.soldesk.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.soldesk.mapper.UploadFileMapper;

@Controller
public class FileUploadController {
	
	@Autowired
	UploadFileMapper uploadFileMapper;
	
	private static final String CURR_IMAGE_REPO_PATH = "c:\\spring\\image_repo";
	
	@RequestMapping(value="/form")
	public String form() {
		return "uploadForm";
	}
	
	@RequestMapping(value="/upload", method= RequestMethod.POST)
	public ModelAndView upload(MultipartHttpServletRequest multipartRequest, 
			HttpServletResponse response) throws Exception{
		multipartRequest.setCharacterEncoding("utf-8");
		Map map = new HashMap();
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			String value = multipartRequest.getParameter(name);
			map.put(name, value);
		}
		List fileList = fileProcess(multipartRequest);
		map.put("fileList", fileList);
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("result");
		return mav;
		
	}

	/*private List<String> fileProcess(MultipartHttpServletRequest multipartRequest)throws Exception{
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(CURR_IMAGE_REPO_PATH+"\\"+fileName);
			if(mFile.getSize()!=0) {
				if(! file.exists()) {
					if(file.getParentFile().mkdirs()) {
						file.createNewFile();
					}
				}
				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName));
			}
		}
		return fileList;
	}*/
	
	private List<String> fileProcess(MultipartHttpServletRequest multipartRequest) throws Exception {
	    List<String> fileList = new ArrayList<String>();
	    List<MultipartFile> fList = multipartRequest.getFiles("file");

	    for (MultipartFile mFile : fList) {
	        String originalFileName = mFile.getOriginalFilename();
	        fileList.add(originalFileName);
	        File file = new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName);
	        if (mFile.getSize() != 0) { // File Null Check
	            if (!file.exists()) { // 경로상에 파일이 존재하지 않을 경우
	                if (file.getParentFile().mkdirs()) { // 경로에 해당하는 디렉토리들을 생성 
	                    file.createNewFile(); // 이후 파일생성
	                }
	            }
	            // 파일 중복명 처리
	            String genId = UUID.randomUUID().toString();
	            String extension = getExtension(originalFileName);
	            String saveFileName = genId + "." + extension; // 저장되는 파일 이름
	            String filePath = CURR_IMAGE_REPO_PATH + "\\" + originalFileName;
	            Map<String, String> fileData = new HashMap<String, String>();
	            fileData.put("saveFileName", saveFileName);
	            fileData.put("filePath", filePath);
	            uploadFileMapper.fileUpload(fileData);
	            mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + "\\" + originalFileName)); // 임시 저장된 multipartFile을 실제
	        }
	    }
	    return fileList;
	}
	
	private String getExtension(String fileName) {
	    int dotIndex = fileName.lastIndexOf(".");
	    if (dotIndex != -1 && dotIndex < fileName.length() - 1) {
	        return fileName.substring(dotIndex + 1);
	    } else {
	        return "";
	    }
	}
	
}

