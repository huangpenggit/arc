package com.arc.util.tem.a;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

import java.io.*;

/**
 * User: WUH
 * Date: 2018/7/11
 */
@Slf4j
public class FileUtil {

    /**
     * 将inputStream中的文件写入filePath路径下的文件
     *
     * @param inputStream
     * @param filePath
     */
    public static void writeFile(InputStream inputStream, String filePath) throws IOException {
        writeFile(inputStream, new File(filePath));
    }

    /**
     * 将inputStream中的文件写入destFile
     *
     * @param inputStream
     * @param destFile
     */
    public static void writeFile(InputStream inputStream, File destFile) throws IOException {
        try (BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(destFile));
             BufferedInputStream bis = new BufferedInputStream(inputStream)) {
            int count, bufferSize = 1024;
            byte[] buffer = new byte[bufferSize];
            while ((count = bis.read(buffer, 0, bufferSize)) != -1) {
                bos.write(buffer, 0, count);
            }
        }
    }

    public static String extractFileName(String originalFileName) {
        if (StringUtils.isBlank(originalFileName) || !originalFileName.contains(".")) {
            return originalFileName;
        }
        return originalFileName.substring(0, originalFileName.lastIndexOf("."));
    }

    public static String extractFileSuffix(String fileName) {
        if (StringUtils.isBlank(fileName) || !fileName.contains(".")) {
            return fileName;
        }
        return fileName.substring(fileName.lastIndexOf("."));
    }

    public static void extractDirAndCreate(String filePath) {
        String localFileDir = extractDir(filePath);
        //获取本地根目录
        File localDir = new File(localFileDir);
        if (!localDir.exists()) {
            if (!localDir.mkdirs()) {
                log.debug("根目录创建失败。localFileDir: " + localFileDir);
            }
        }
    }

    public static String extractDir(String filePath) {
        if (StringUtils.isBlank(filePath)) {
            return filePath;
        }
        //构建解压后保存的文件夹路径
        int index = filePath.lastIndexOf(File.separator);
        if (index != -1) {
            return filePath.substring(0, index);
        }
        return filePath;
    }

/*    public static SystemFile transferFile(MultipartFile file, String filePath) throws IOException {
        SystemFile convertFile = new SystemFile(filePath);
        if (convertFile.exists()) {
            if (!convertFile.delete()) {
                log.debug("本地文件已存在");
            }
        }
        FileUtil.extractDirAndCreate(filePath);
        try (InputStream inputStream = file.getInputStream()) {
            FileUtil.writeFile(inputStream, convertFile);
        }
        return convertFile;
    }*/

    public static String constructUniqueFileName(String originalFileName) {
        String uniqueFileName = FileUtil.extractFileName(originalFileName) + System.currentTimeMillis() + (int) (Math.random() * 10);
        return MD5Util.MD5Encode(uniqueFileName, null);
    }


}
