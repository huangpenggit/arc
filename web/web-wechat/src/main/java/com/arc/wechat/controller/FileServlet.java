package com.arc.wechat.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.FileCopyUtils;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

//下载文件，通过OutputStream流
@WebServlet(
        asyncSupported = false,//	指定Servlet是否支持异步操作模式
        displayName = "FileServlet",//指定Servlet显示名称
        name = "FileServlet",
        urlPatterns = "/file",//urlPatterns/value	这两个属性作用相同，指定Servlet处理的url
        loadOnStartup = 1
//        ,
//        initParams = {//配置初始化参数
//                @WebInitParam(name = "name", value = "小明"),
//                @WebInitParam(name = "pwd", value = "123456")
//
//        }
)
@Slf4j
public class FileServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("初始化FileServlet...");
    }

    /**
     * 使用HttpServletResponse对象就可以实现文件的下载
     *
     * @param Request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest Request, HttpServletResponse response) throws ServletException, IOException {
        //文件下载
        //1、读取文件
        //2、设置返回
        //3、输出流输出文件

        //       文件下载功能的实现思路：
        //　　1.获取要下载的文件的绝对路径
        //　　2.获取要下载的文件名
        //　　3.设置content-disposition响应头控制浏览器以下载的形式打开文件
        //　　4.获取要下载的文件输入流
        //　　5.创建数据缓冲区
        //　　6.通过response对象获取OutputStream流
        //　　7.将FileInputStream流写入到buffer缓冲区
        //　　8.使用OutputStream将缓冲区的数据输出到客户端浏览器    喜欢大，喜欢挺
        downloadFileByOutputStream(response);//下载文件，通过OutputStream流

    }

    private void downloadFileByOutputStream(HttpServletResponse response) throws FileNotFoundException, IOException {

        //假设获得了文件路径-path
        String path = "pdf/JAVA优化编程.pdf";
        ClassPathResource cpr = new ClassPathResource(path);
        log.debug("getDescription{}" + cpr.getDescription());//class path resource [pdf/JAVA优化编程.pdf]
        log.debug("getPath " + cpr.getPath());//相对路径  pdf/JAVA优化编程.pdf
        log.debug("getFilename{}" + cpr.getFilename());//文件名称    JAVA优化编程.pdf

        String configPath = this.getClass().getClassLoader().getResource(path).getFile();
        configPath = java.net.URLDecoder.decode(configPath, "utf-8");
        log.debug("configPath  " + configPath);///物理地址 C:/Users/X/Desktop/Zan/arc/web/wechat/target/classes/pdf/JAVA优化编程.pdf

        URL url = cpr.getURL();
        log.debug("url  " + url);//物理地址    file:/C:/Users/X/Desktop/Zan/arc/web/wechat/target/classes/pdf/JAVA%e4%bc%98%e5%8c%96%e7%bc%96%e7%a8%8b.pdf
        InputStream inputStream = cpr.getInputStream();
        log.debug("inputStream  " + inputStream);// java.io.BufferedInputStream@1a4639e8


        File file = cpr.getFile();

        log.debug("{} " + file);// C:\Users\X\Desktop\Zan\arc\web\wechat\target\classes\pdf\JAVA优化编程.pdf
        log.debug("名称{} " + file.getName());//JAVA优化编程.pdf
        log.debug("名称{} " + file.getAbsoluteFile());//C:\Users\X\Desktop\Zan\arc\web\wechat\target\classes\pdf\JAVA优化编程.pdf
        log.debug("名称{} " + file.getCanonicalPath());//C:\Users\X\Desktop\Zan\arc\web\wechat\target\classes\pdf\JAVA优化编程.pdf
        log.debug("大小{} " + file.getTotalSpace());//119151915008
        log.debug("路径{} " + file.getPath());//C:\Users\X\Desktop\Zan\arc\web\wechat\target\classes\pdf\JAVA优化编程.pdf

        String suffix = file.getName().substring(file.getName().lastIndexOf(".") + 1);
        log.debug("文件后缀： " + suffix);


        response.setContentType("application/octet-stream");
        //1.获取要下载的文件的绝对路径
//        String realPath = this.getServletContext().getRealPath("C:\\Users\\X\\Pictures\\E.PNG");


//        response.setHeader("Content-Disposition", "attachment;fileName=" + new String(fileName.getBytes("GBK"),"ISO8859_1"));

        //2.获取要下载的文件名
//        String fileName = realPath.substring(realPath.lastIndexOf("\\") + 1);
        String fileName = "aaa.png";
        //3.设置content-disposition响应头控制浏览器以下载的形式打开文件
//        response.setHeader("content-disposition", "attachment;fileName=" + fileName);
        response.setHeader("content-disposition", "attachment;fileName=" + URLEncoder.encode(fileName, "utf-8"));
//        InputStream in = new FileInputStream(realPath);//获取文件输入流
        //4.获取要下载的文件输入流
        InputStream in = new FileInputStream("C:\\Users\\X\\Pictures\\Eureka 组件项目闭源了.PNG");
        log.debug("{}" + ((FileInputStream) in).getChannel());
        int len = 0;

        //5.创建数据缓冲区
        byte[] buffer = new byte[1024];
        //6.通过response对象获取OutputStream流
        OutputStream out = response.getOutputStream();
        //7.将FileInputStream流写入到buffer缓冲区
        while ((len = in.read(buffer)) > 0) {
            //8.使用OutputStream将缓冲区的数据输出到客户端浏览器
            out.write(buffer, 0, len);
        }
        in.close();
    }


    public void test(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileName = "E:/深入理解Java虚拟机.pdf";
        // 设置响应头参数值
        String contentType = this.getServletContext().getMimeType(fileName);
        String contentDisposition = "attachment;fileName=" + fileNameEncoding(fileName.substring(3), request);
        response.setHeader("Content-Type", contentType);
        response.setHeader("Content-Disposition", contentDisposition);

        // 设置响应头
        ServletOutputStream output = response.getOutputStream();
        FileInputStream input = new FileInputStream(fileName);
        // 将输入流中的文件写入到输出流
        IOUtils.copy(input, output);
        input.close();
    }

    public String fileNameEncoding(String fileName, HttpServletRequest request) throws IOException {
        String agent = request.getHeader("User-Agent");
        if (agent.contains("Firefox")) {
            BASE64Encoder base64Encoder = new BASE64Encoder();
            fileName = "=?utf-8?B?" + base64Encoder.encode(fileName.getBytes("utf-8")) + "?=";
        } else {
            fileName = URLEncoder.encode(fileName, "utf-8");
        }
        return fileName;
    }


    /**
     * 下载文件时，针对不同浏览器，进行附件名的编码
     *
     * @param fileName 下载文件名
     * @param agent    客户端浏览器
     * @return 编码后的下载附件名
     * @throws IOException
     */
    private static String fileNameEncoding(String fileName, String agent) throws IOException {
        // 火狐浏览器
        if (agent.contains("Firefox")) {
            fileName = "=?UTF-8?B?" + new BASE64Encoder().encode(fileName.getBytes("utf-8")) + "?=";
            //fileName = fileName.replaceAll("\r\n", "");
        }
        // IE及其他浏览器
        else {
            fileName = URLEncoder.encode(fileName, "utf-8");
            //fileName = fileName.replace("+", " ");
        }
        return fileName;
    }


    public Object getFile() {
        String data = "";
        String path = "/pdf/JAVA优化编程.pdf";
        path = "/pdf/test.json";

        ClassPathResource cpr = new ClassPathResource(path);
        try {
            byte[] bdata = FileCopyUtils.copyToByteArray(cpr.getInputStream());
            data = new String(bdata, StandardCharsets.UTF_8);
            log.debug("**************************************************************************************");
            log.debug("                        pdf                           ");
            log.debug(data);
            log.debug("**************************************************************************************");
        } catch (IOException e) {
            log.debug("文件读取错误" + e.toString());
        }
        return data;
    }

    public static void main(String[] args) {
        new FileServlet().getFile();
    }
}