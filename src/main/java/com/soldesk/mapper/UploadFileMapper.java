package com.soldesk.mapper;

import java.util.List;
import java.util.Map;

import com.soldesk.entity.UploadFileVO;

public interface UploadFileMapper {
    void fileUpload(Map<String, String> fileData);
    List<UploadFileVO> getFiles();
}