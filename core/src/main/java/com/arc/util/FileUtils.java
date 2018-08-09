package com.arc.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URLEncoder;

/**
 * 文件工具类
 */
public class FileUtils {

    private static final Logger log = LoggerFactory.getLogger(FileUtils.class);

    /**
     * 获取文件名称，支持中文，并自动过滤特殊字符
     * 注意：方法返回支持主流浏览器
     *
     * @param userAgent request.getHeader("User-Agent");
     * @param fileName
     * @return   编码过的文件名称
     * @throws Exception
     */
    //browser  UnsupportedEncodingException
    private static String getBrowserFileName(String userAgent, String fileName) throws Exception {

        if (fileName == null) {
            throw new NullPointerException("File name cannot be null!");
        }
        fileName = fileName.replaceAll("[^\u4e00-\u9fa5a-zA-Z0-9]", "");
        log.debug("编码前fileName {}", fileName);

//        String userAgent = request.getHeader("User-Agent");
        log.debug("请求头中的数据-UserAgent{} ", userAgent);
        //OPERA         UserAgent Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.64
        //CHROME    UserAgent Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36
        //IE11            UserAgent Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko
        // FF               UserAgent Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:44.0) Gecko/20100101 Firefox/44.0
        //        if (userAgent.indexOf("Chrome") > 0) { //WebKit 内核的浏览器 CHROME OPERA SAFARI
        //            fileName = URLEncoder.encode(fileName, "UTF-8");
        //        } else if (userAgent.toUpperCase().indexOf("MSIE") > 0  ) { //IE
        //            fileName = URLEncoder.encode(fileName, "UTF-8");
        //        } else
        if (userAgent.indexOf("Firefox") > 0) {//Firefox
            fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
        } else {//未知
            fileName = URLEncoder.encode(fileName, "UTF-8");
        }
        log.debug("编码后fileName {}", fileName);
        return fileName;
    }


}
