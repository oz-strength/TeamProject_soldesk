package com.soldesk.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.soldesk.entity.UploadFileVO;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class FileDownloadController {

	/*private static String CURR_IMAGE_REPO_PATH = "c:\\spring\\image_repo";
	
	@RequestMapping("/download")
	protected void download(@RequestParam("imageFileName") String imageFileName,
			HttpServletResponse response) throws Exception{
		
		
		OutputStream out = response.getOutputStream();
		String downFile = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
		File file = new File(downFile);
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("content-disposition", "attatchment; fileName=" + imageFileName);
		

		// 중복 파일 처리
		int lastIndex = imageFileName.lastIndexOf(".");
		String fileName = imageFileName.substring(0, lastIndex);
		String extension = imageFileName.substring(lastIndex + 1);
		File thumbnail = new File(CURR_IMAGE_REPO_PATH + "\\thumbnail\\" + fileName + "_thumbnail." + extension);
		
		if (!thumbnail.exists()) {
			File originalFile = new File(CURR_IMAGE_REPO_PATH + "\\" + imageFileName);
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(originalFile).size(50, 50).outputFormat(extension).toFile(thumbnail);
		}
		  // 기존 파일 삭제
        if (file.exists()) {
            file.delete();
        }

		FileInputStream in = new FileInputStream(thumbnail);
		byte[] buffer = new byte[1024*8];
		
		while (true) {
			int count = in.read(buffer);
			if (count== -1)
				break;
			out.write(buffer,0,count);
		}
		in.close();
		out.close();
	}*/
	private static final String CURR_IMAGE_REPO_PATH = "c:\\spring\\image_repo";
	private static final String UPLOAD_PATH = "src/main/resources/upload/";
	private static final String THUMBNAIL_PATH = CURR_IMAGE_REPO_PATH + "\\thumbnail\\";

	@RequestMapping("/download")
	protected void download(@RequestParam("imageFileName") String imageFileName,
			HttpServletResponse response) throws Exception {

		OutputStream out = response.getOutputStream();
		String downFile = CURR_IMAGE_REPO_PATH + "\\" + imageFileName;
		File file = new File(downFile);
		response.setHeader("Cache-Control", "no-cache");
		response.addHeader("Content-Disposition", "attachment; fileName=" + imageFileName);

		// 중복 파일 처리
		int lastIndex = imageFileName.lastIndexOf(".");
		String fileName = imageFileName.substring(0, lastIndex);
		String extension = imageFileName.substring(lastIndex + 1);
		File thumbnail = new File(THUMBNAIL_PATH + fileName + "_thumbnail." + extension);

		if (!thumbnail.exists()) {
			File originalFile = new File(CURR_IMAGE_REPO_PATH + "\\" + imageFileName);
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(originalFile).size(50, 50).outputFormat(extension).toFile(thumbnail);
		}

		// 기존 파일 삭제
		if (file.exists()) {
			file.delete();
		}

		FileInputStream in = new FileInputStream(thumbnail);
		byte[] buffer = new byte[1024 * 8];

		while (true) {
			int count = in.read(buffer);
			if (count == -1)
				break;
			out.write(buffer, 0, count);
		}
		in.close();
		out.close();
		

	}
	
	
}
