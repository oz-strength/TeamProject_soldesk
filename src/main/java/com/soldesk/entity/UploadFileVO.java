package com.soldesk.entity;

public class UploadFileVO {
    private int file_num;
    private String o_name;
    private String saveFileName;
    private String filePath;

    public int getFile_num() {
        return file_num;
    }

    public void setFile_num(int file_num) {
        this.file_num = file_num;
    }

    public String getO_name() {
        return o_name;
    }

    public void setO_name(String o_name) {
        this.o_name = o_name;
    }

    public String getSaveFileName() {
        return saveFileName;
    }

    public void setSaveFileName(String saveFileName) {
        this.saveFileName = saveFileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
