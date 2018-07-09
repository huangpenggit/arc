package com.client.back.thymeleaf.controller;

import org.springframework.stereotype.Controller;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class DownloadPdf {


    /**
     * 从网络Url中下载文件
     *
//     * @param urlStr
//     * @param fileName
//     * @param savePath
     * @throws IOException
     */
    public static void downLoadByUrl() throws IOException {
        URL url = new URL("https://dlsvr04.asus.com/pub/ASUS/mb/LGA1151/Z170-K/J11133_MB_Pin_Definition_V2_WEB.pdf");
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        //设置超时间为3秒
        conn.setConnectTimeout(5 * 1000);
        //防止屏蔽程序抓取而返回403错误
        conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
        //得到输入流
        InputStream inputStream = conn.getInputStream();
        //获取自己数组
        byte[] getData = readInputStream(inputStream);
        //文件保存位置
        File saveDir = new File("C:\\Users\\X\\Desktop\\Zan\\git\\arc\\client-thymeleaf\\src\\main\\resources\\static\\file");
        if (!saveDir.exists()) {
            saveDir.mkdir();
        }
        File file = new File(saveDir + File.separator + "asus");
        FileOutputStream fos = new FileOutputStream(file);
        fos.write(getData);
        if (fos != null) {
            fos.close();
        }
        if (inputStream != null) {
            inputStream.close();
        }
        System.out.println("info:" + url + " download success");

    }


    /**
     * 从输入流中获取字节数组
     *
     * @param inputStream
     * @return
     * @throws IOException
     */
    public static byte[] readInputStream(InputStream inputStream) throws IOException {
        byte[] buffer = new byte[1024];
        int len = 0;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        while ((len = inputStream.read(buffer)) != -1) {
            bos.write(buffer, 0, len);
        }
        bos.close();
        return bos.toByteArray();
    }

    public static void main(String[] args) {
        try {
//            downLoadByUrl("https://www.mybiosource.com/images/tds/protocol_samples/MBS700_Antibody_Set_Sandwich_ELISA_Protocol.pdf",
//                    "ELISA.pdf", "E:/upload/protocol");
            downLoadByUrl();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
}