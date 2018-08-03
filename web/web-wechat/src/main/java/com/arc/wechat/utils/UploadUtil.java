package com.arc.wechat.utils;

//import net.coobird.thumbnailator.Thumbnails;
//import org.apache.commons.io.FileUtils;
//import org.apache.commons.io.FilenameUtils;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletContext;
import java.io.File;

/**
 * 文件上传工具
 */
public class UploadUtil {

//    /**
//     * 处理文件上传
//     *
//     * @param file
//     * @param basePath 存放文件的目录的绝对路径 servletContext.getRealPath("/upload")
//     * @return 123.png
//     */
//    public static String upload(MultipartFile file, String basePath) {
//        //获得随机的一个自负床作为要保存的名字
//        String uuid = UUID.randomUUID().toString();
//        String orgFileName = file.getOriginalFilename();
//       // String ext = "." + FilenameUtils.getExtension(orgFileName);
//        String fileName = uuid + ext;
//        try {
//            File targetFile = new File(basePath, fileName);
//            FileUtils.writeByteArrayToFile(targetFile, file.getBytes());
//
//            //图片压缩
//            String smallImg = uuid + "_small" + ext;
//            File smallTargetFile = new File(basePath, smallImg);
//            // Thumbnails.of(new File[]{targetFile}).scale(0.4D).toFile(smallTargetFile);
//            return "/upload/" + fileName;
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return "";
//    }

    /**
     * 删除文件
     *
     * @param imagePath
     */
    public static void deleteFile(ServletContext servletContext, String imagePath) {
        String path = servletContext.getRealPath("/") + imagePath;
        File file = new File(path);
        if (file.exists()) {
            file.delete();
        }
        int index = imagePath.indexOf(".");
        path = servletContext.getRealPath("/")
                + imagePath.substring(0, index) + "_small"
                + imagePath.substring(imagePath.indexOf("."));
        file = new File(path);
        if (file.exists()) {
            file.delete();
        }
    }


    //判断是否是真实的图片
//	因为一个文件的后缀名很容易修改，而且有的文件没有后缀名，那么我们要怎么才能判断一个文件是否为图片呢？
//	我自己想呢是以二进制的形式读取文件内容，截取开头若干字节就是格式标志，比如GIF的是1-3字节，jpg的是1-2字节;
    public static boolean isImage(File file) {
        boolean mark = false;
        try {
            ImageInputStream is = ImageIO.createImageInputStream(file);
            if (null == is) {
                return mark;
            }
            is.close();
            mark = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mark;
    }
}
























