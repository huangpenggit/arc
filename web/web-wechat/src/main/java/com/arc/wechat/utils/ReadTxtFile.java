package com.arc.wechat.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReadTxtFile {
    private static final Logger log = LoggerFactory.getLogger(ReadTxtFile.class);
    private static String PARM = "\\s*|\t|\r|\n";
    //    private static String PATH = "H:\\say.txt";
//    private static String PATH1 = "H:\\say1.txt";
    private static String PATH = "c:\\say.txt";
    private static String PATH1 = "c:\\say1.txt";

    /**
     * 过滤文本中的空格
     *
     * @param filePath
     * @return
     */
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
//
//    //测试
//    public static void main(String[] args) throws IOException {
//        String s = readTxt(PATH);
//        System.out.println(s);
////        cover(s);
//        outToFile(s);
//
////        String readTxt = read(PATH1);
////        System.out.println(readTxt);
//
//    }


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


    /**
     * 输出到文件
     */
    public static void outToFile(String s) {
        File file = new File("C:/call.txt");
        try (FileOutputStream fop = new FileOutputStream(file)) {
            // if file doesn't exists, then create it
            if (!file.exists()) {
                file.createNewFile();
            }
            // get the content in bytes
            byte[] contentInBytes = s.getBytes();

            fop.write(contentInBytes);
            fop.flush();
            fop.close();
            System.out.println("Done");
        } catch (IOException e) {
            e.printStackTrace();


        }
    }

    public static void main(String[] args) {
        try {
            //目标文件
            String path = "C:\\say2.txt";
            File file = new File(path);
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                boolean mkdirs = parentFile.mkdirs();
                System.out.println(mkdirs);
            }
            file.createNewFile();

            // write
            FileWriter writer = new FileWriter(PATH, false);
            BufferedWriter bw = new BufferedWriter(writer, 1024);
            String s = readTxt(PATH1);


            bw.write(s);
            bw.flush();
            bw.close();
            writer.close();

            // read
            FileReader reader = new FileReader(PATH);
            BufferedReader br = new BufferedReader(reader, 1024);
            String str = br.readLine();
            System.out.println(str);
            System.out.println(str);
        } catch (IOException e) {
            log.error(e.getMessage());
        }
    }
}






/*
注：
  \n 回车(\u000a)
  \t 水平制表符(\u0009)
   \s 空格(\u0008)
   \r 换行(\u000d)
   */
