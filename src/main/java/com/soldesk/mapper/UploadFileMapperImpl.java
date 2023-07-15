package com.soldesk.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soldesk.entity.UploadFileVO;

@Service
public class UploadFileMapperImpl implements UploadFileMapper {

    @Autowired
    private UploadFileMapper uploadFileMapper;

    @Override
    public void fileUpload(Map<String, String> fileData) {
        uploadFileMapper.fileUpload(fileData);
    }

    @Override
    public List<UploadFileVO> getFiles() {
        return uploadFileMapper.getFiles();
    }
}
