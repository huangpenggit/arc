package com.del.wechat.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReadTxtFile {
    private static final Logger log = LoggerFactory.getLogger(ReadTxtFile.class);
    private static String PARM = "\\s*|\t|\r|\n";
    private static String PATH = "C:\\say.txt";
    private static String PATH1 = "C:\\say1.txt";

    public static String readTxt(String filePath) {
        StringBuffer resultBuffer = new StringBuffer();

        try {
            File file = new File(filePath);
            if (file.isFile() && file.exists()) {
                InputStreamReader isr = new InputStreamReader(new FileInputStream(file), "utf-8");
                BufferedReader reader = new BufferedReader(isr);
                String data;
                while ((data = reader.readLine()) != null) {
                    String dest = "";
                    Pattern p = Pattern.compile(PARM);
                    Matcher m = p.matcher(data);
                    dest = m.replaceAll("");


                    resultBuffer.append(dest);
                }
                reader.close();
            } else {
                log.debug("文件不存在!");
            }
        } catch (Exception e) {
            log.debug("文件读取错误!");
        } finally {
            return resultBuffer.toString();
        }

    }


    //写文件
    public static void cover(String source) throws IOException {
        FileWriter fileWriter = new FileWriter(PATH);//改成
//        FileWriter b=new FileWriter("d:/as.txt",true);
        fileWriter.write(source);

    }

    //测试
    public static void main(String[] args) throws IOException {
//        String s = readTxt(PATH);
//        System.out.println(s);
//        cover(s);


        String readTxt = read(PATH1);
        System.out.println(readTxt);

    }


    public static String read(String path) throws IOException {
        String str = "";
        try {
            File file = new File(path);
            FileInputStream in = new FileInputStream(file);
            // size 为字串的长度 ，这里一次性读完
            int size = in.available();
            byte[] buffer = new byte[size];
            in.read(buffer);
            in.close();
            str = new String(buffer, "utf-8");
        } catch (IOException e) {
            log.error(e.getMessage());
            return null;
        }
        return str;
    }


}






/*
注：
  \n 回车(\u000a)
  \t 水平制表符(\u0009)
   \s 空格(\u0008)
   \r 换行(\u000d)
   */
