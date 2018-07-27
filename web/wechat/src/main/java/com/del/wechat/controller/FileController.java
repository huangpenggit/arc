package com.del.wechat.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;

@RequestMapping("/file")
@Controller
@Slf4j//注解在类上；为类提供一个 属性名为log 的 log4j 日志对象
public class FileController {


    //上传图片
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(MultipartFile file, Model model) {
//        fileAgent.upload(file);
        model.addAttribute("mark", "传递参数MARK 时间： " + new Date());
        return "index";
    }

    //下载文件（文件在项目的resources文件中）
    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public void download(HttpServletRequest request, HttpServletResponse response) {
        String path = "pdf/JAVA优化编程.pdf";
        ClassPathResource cpr = new ClassPathResource(path);
//        String fileName = getFileName(request, cpr.getFilename());
        String fileName = "优化编程.pdf";


        log.debug("#################################");
        log.debug("fileName" + fileName);
        log.debug("#################################");

//        String agent = request.getHeader("User-Agent");
//        log.debug("Request的User-Agent " + agent);
        //Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:42.0) Gecko/20100101 Firefox/42.0
        // Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko
        //Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54

        response.setContentType("application/octet-stream");

        InputStream in = null;
        try {
//        设置content - disposition响应头控制浏览器以下载的形式打开文件
//        response.setHeader("content-disposition", "attachment;fileName=" + fileName);
            //"Content-Disposition","attachment;filename*=utf-8'zh_cn'文件名.xx"
            //response.setHeader("content-disposition", "attachment;fileName*=utf-8'zh_cn" + URLEncoder.encode(fileName, "utf-8"));

//            response.setHeader("Content-disposition","attachment;filename=\"" + fileName + "\"");
//            "attachment;filename*=utf-8'zh_cn'文件名.xx"
            response.setHeader("Content-Disposition", "attachment;filename*=utf-8'zh_cn'" + fileName);
//            response.setHeader("content-disposition", "attachment;fileName*=utf-8'zh_cn"  + URLEncoder.encode(fileName, "utf-8"));

            String codedFileName = "aaaaa导出文件名.xls";
            String agent = request.getHeader("USER-AGENT");
            if (agent != null && agent.toUpperCase().indexOf("FIREFOX") > 0) {
                codedFileName = "=?UTF-8?B?" + (new String(Base64Utils.encodeToString(codedFileName.getBytes("UTF-8")))) + "?=";
            } else {
                codedFileName = java.net.URLEncoder.encode(codedFileName, "UTF-8");
            }
            response.setHeader("Content-Disposition", "attachment;filename=" + codedFileName);


            //获取文件输入流
            in = cpr.getInputStream();//获取文件输入流
            int len = 0;
            byte[] buffer = new byte[2048];
            ServletOutputStream out = response.getOutputStream();
            while ((len = in.read(buffer)) > 0) {
                //8.使用OutputStream将缓冲区的数据输出到客户端浏览器
                out.write(buffer, 0, len);
            }
            in.close();
        } catch (IOException e) {
            log.debug(e.getMessage());
        }
    }


    //        indexOf 方法返回一个整数值，指出 String 对象内子字符串的开始位置。如果没有找到子字符串，则返回-1。
//        获取文件名称
    public String getFileName(HttpServletRequest request, String fileName) {
        String header = request.getHeader("User-Agent");
        log.debug(header);
        try {
            fileName = URLEncoder.encode(fileName, "UTF-8");
            if (request.getHeader("User-Agent").indexOf("Chrome") > 0) { //谷歌
            } else if (request.getHeader("User-Agent").toLowerCase().indexOf("Trident") > 0 || request.getHeader("User-Agent").indexOf("like Gecko") > 0) { //IE OPERA
                fileName = URLEncoder.encode(fileName, "UTF-8");
            } else if (request.getHeader("User-Agent").indexOf("Firefox") > 0) { //火狐
//                fileName = "=?UTF-8?B?" + new BASE64Encoder().encode(fileName.getBytes("utf-8")) + "?=";
//
                fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return fileName;
    }


    //----------
/*    public Object write(HttpServletRequest request, HttpServletResponse response, String fileName) throws IOException {
        response.reset();
        response.reset();
   *//*response.setContentType("application/msexcel; charset=UTF-8");
   if (request.getHeader("User-Agent").toUpperCase().indexOf("MSIE") > 0){
      //IE
      fileName = URLEncoder.encode(fileName, "UTF-8");
   }else if (request.getHeader("User-Agent").toLowerCase().indexOf("mozilla") >= 0) {
      //FIREFOX
      fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
   }else{
      //OTHER
      fileName = URLEncoder.encode(fileName, "UTF-8");
   }
   response.setHeader("Content-disposition", "attachment; filename=" + fileName + com.autopus.framework.util.DateUtil.formatDate(new Date(),com.autopus.framework.util.DateUtil.FORMAT_DATETIME_YYYY_MM_DD_HH_MM_SS)+ ".xlsx");*//*
        response.setContentType("application/vnd.ms-excel");
        String UserAgent = request.getHeader("User-Agent");
        Boolean flag = UserAgent.indexOf("like Gecko") > 0;
//        indexOf 方法返回一个整数值，指出 String 对象内子字符串的开始位置。如果没有找到子字符串，则返回-1。
        if (request.getHeader("User-Agent").indexOf("Chrome") > 0) { //谷歌
            fileName = URLEncoder.encode(fileName, "UTF-8");
        } else if (request.getHeader("User-Agent").toLowerCase().indexOf("msie") > 0 || flag) { //ie
            fileName = URLEncoder.encode(fileName, "UTF-8");
        } else { //火狐
            fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
        }
        response.setHeader("Content-disposition", "attachment; filename=\"" + fileName + com.autopus.framework.util.DateUtil.formatDate(new Date(), com.autopus.framework.util.DateUtil.FORMAT_DATETIME_YYYY_MM_DD_HH_MM_SS) + ".xlsx" + "\"");
        write(response.getOutputStream());
        return this;
    }*/

}



