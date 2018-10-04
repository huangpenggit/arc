package com.arc.util.tem.a;


import java.io.File;
import java.io.IOException;
import java.util.Map;

public class UpPicToYun {
    protected static final String BUCKET_NAME = "rongyi";
    protected static final String YUN_USERNAME = "gongzhen";
    protected static final String YUN_PASSWORD = "rynw87^%43";

    public UpPicToYun() {
    }

    public boolean uploadPicBySync(String filePath, String picUrl) throws IOException {
   UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        File file = new File(filePath);
        return upyun.writeFile(picUrl, file, true);
    }

    public boolean uploadToYun(String filePath, byte[] datas) throws IOException {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        return upyun.writeFile(filePath, datas, true);
    }

    public String readFile(String filePath) throws IOException {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        return upyun.readFile(filePath);
    }

    public Map<String, String> getFileInfo(String filePath) {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        return upyun.getFileInfo(filePath);
    }

    public boolean deleteFile(String filePath) {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        return upyun.deleteFile(filePath);
    }

    public boolean writeFile(String localFilePath, String remoteFilePath) throws IOException {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        File file = new File(localFilePath);
        return upyun.writeFile(remoteFilePath, file);
    }

    public boolean writeFile(String localFilePath, String remoteFilePath, boolean auto) throws IOException {
        UpYun upyun = new UpYun("rongyi", "gongzhen", "rynw87^%43");
        File file = new File(localFilePath);
        return upyun.writeFile(remoteFilePath, file, auto);
    }
}
