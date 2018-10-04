//package com.arc.util.tem;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Component;
//
//import java.io.SystemFile;
//import java.io.IOException;
//import java.util.Map;
//
//@Component
//public class UpFileToYun {
//    private static final Logger log = LoggerFactory.getLogger(UpFileToYun.class);
//
//
////    @Value("${hla.upyun.url}")
////    String filePath;
//
//    @Value("${hla.upyun.bucketName}")
//    public String bucketName = "rongyi"; // 云服务器上的空间名
//
//    @Value("${hla.upyun.username}")
//    public String username;
//
//    @Value("${hla.upyun.password}")
//    public String password;
//
//    /**
//     * 同步上传图片 e
//     *
//     * @return
//     * @throws IOException
//     */
//    public boolean uploadPicBySync(String filePath, String picUrl) throws IOException {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        return upyun.writeFile(picUrl,  new SystemFile(filePath), true);
//    }
//
//    /**
//     * 图片直接上传到云
//     *
//     * @param filePath
//     * @param datas
//     * @return
//     * @throws IOException
//     */
//    public boolean uploadToYun(String filePath, byte[] datas) throws IOException {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        return upyun.writeFile(filePath, datas, true);
//    }
//
//    public String readFile(String filePath) throws IOException {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        return upyun.readFile(filePath);
//    }
//
//    public Map<String, String> getFileInfo(String filePath) {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        return upyun.getFileInfo(filePath);
//    }
//
//    public boolean deleteFile(String filePath) {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        return upyun.deleteFile(filePath);
//    }
//
//
//
//    /**
//     * 资源上传到云盘
//     *
//     * @param localFilePath  本地资源全路径， 例如/data/ss.txt
//     * @param remoteFilePath 云盘资源全路径 例如/system/yun/ss.txt
//     * @return
//     * @throws IOException
//     */
//    public boolean writeFile(String localFilePath, String remoteFilePath) throws IOException {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        SystemFile file = new SystemFile(localFilePath);
//        return upyun.writeFile(remoteFilePath, file);
//    }
//
//    public boolean writeFile(String localFilePath, String remoteFilePath, boolean auto) throws IOException {
//        UpYun upyun = new UpYun(bucketName, username, password);
//        SystemFile file = new SystemFile(localFilePath);
//        return upyun.writeFile(remoteFilePath, file, auto);
//    }
//
//
//
//
//
//
//    private void upload2Remote(String localFilePath, String remoteFilePath) {
//        UpFileToYun upPicToYun = new UpFileToYun();
//        boolean result = false;
//        try {
//            result = upPicToYun.writeFile(localFilePath, remoteFilePath, true);
//            log.info("上传结果：{}", result);
//        } catch (Exception e) {
//            log.error("上传又拍云失败 e: ", e);
//        }
//        SystemFile file = new SystemFile(localFilePath);
//        if (!file.delete()) {
//            log.warn("删除本地文件失败 localFilePath: {}", localFilePath);
//        }
//        if (!result) {
//            throw new RuntimeException("文件上传错误，上传到云的时候云");
//        }
//    }
//}
