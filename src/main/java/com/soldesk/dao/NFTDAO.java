package com.soldesk.dao;

import org.springframework.stereotype.Service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.soldesk.entity.BlockchainManager;
import com.soldesk.entity.nft.NFT;
import com.soldesk.entity.nft.NFTList;
import com.soldesk.mapper.NFTMapper;


@Service
public class NFTDAO {
	
	@Autowired
	private NFTMapper nm;
	
	public String getPath(HttpServletRequest req) {
		String path = null;
		try {
			path = req.getSession().getServletContext().getRealPath("\\resources");
			path += "\\images\\nft";
			System.out.println(path);
			return path;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public void makeFolder(String path) {
		File folder = null;
		try {
			folder = new File(path);
			
			if (!folder.exists()) {
				folder.mkdir();
				System.out.println("폴더가 생성되었습니다.");
			} else {
				System.out.println("이미 폴더가 존재합니다.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void insertNFT(NFT nft) {
		if (nm.insertNFT(nft) == 1) {
			System.out.println(nft.getN_img() + " 이미지 등록 성공 ~ ");
		} else {
			System.out.println(nft.getN_img() + " 이미지 등록 실패 ~ ");
		}
	}
	
	public NFTList getNFTList(NFT nft) {
		return new NFTList(nm.getNFTList(nft));
	}
	
	public boolean checkNFTHash(NFT nft) {
		NFT n = nm.checkNFTHash(nft); 
		if (n == null) {
			System.out.println("Hash 값이 중복되지 않습니다.");
			return true;
		} else {
			System.out.println("Hash 값이 중복됩니다. 사진 파일 이름을 변경해주세요.");
			return false;
		}
	}
	
	public void processNFTFiles(NFT nft, HttpServletRequest req) {
		try {
			MultipartFile[] n_files = nft.getN_files();
			if (n_files != null && n_files.length > 0) {
				// 이미지 저장 경로 - 컴퓨터 내부 프로젝트 폴더
				String path = getPath(req);
				String filePath = "";
				File dest = null;
				for (MultipartFile file : n_files) {
					// 파일이 비어있는지 확인할 수도 있습니다.
					if (!file.isEmpty()) {
						
						// 파일 정보 출력
						String fileName = file.getOriginalFilename();
						long fileSize = file.getSize();
						String hashName = BlockchainManager.sha256Hash(fileName);
						
						System.out.println("파일 이름: " + fileName);
						System.out.println("파일 크기: " + fileSize + " bytes");
						System.out.println("해쉬 이름: " + hashName);
						
						// 파일 업로드 처리
						filePath = path + "\\" + fileName;
						dest = new File(filePath);
						file.transferTo(dest);
						System.out.println("파일 업로드 처리");
						
						// ** DB 사전준비
						
						// No 설정
						int n_no = setNFTNo(countNFT());
						nft.setN_no(n_no);
						
						// 해쉬 값 설정
						nft.setN_hash(hashName);
						
						// 해쉬 값 중복 확인
						if (!checkNFTHash(nft)) {
							break;
						}
						
						// 이미지 이름 설정 - 이름 중복 X
						nft.setN_img(fileName);
						
						// 게시판 제목 설정
						String img[] = fileName.split("\\.");
						nft.setN_name("MYMOUNTAIN #" + img[0]);
						
						// DB에 저장
						insertNFT(nft);
						
					} else {
						// 파일이 비어있을 경우 처리
						// ...
						System.out.println("파일이 비어있습니다.");
					}
					System.out.println("=======================");
				}
			} else {
				// 파일이 업로드되지 않은 경우 처리
				// ...
				System.out.println("업로드되지 않음");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public NFT getNFTDetailJSON(NFT nft) {
		return nm.getNFTDetail(nft);
	}
	
	public int countNFT() {
		int count = nm.countNFT();
		return count;
	}
	
	public int setNFTNo(int count) {
		if (count != 0) {
			int n_no = nm.setNFTNo();
			return n_no;
		} else {
			return 1;
		}
	}
}

