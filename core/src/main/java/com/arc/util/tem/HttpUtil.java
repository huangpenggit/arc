package com.arc.util.tem;

import org.springframework.util.StreamUtils;
import org.springframework.util.StringUtils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;


/**
 * Http工具类
 */
public class HttpUtil {

    /**
     * 发送get请求
     *
     * @throws Exception
     */
    public static String get(String url) {
        String result = "";
        InputStream in = null;
        try {
            // 打开和URL之间的连接
            HttpURLConnection conn = (HttpURLConnection) new URL(url)
                    .openConnection();
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestMethod("GET");
            // 建立实际的连接
            conn.connect();
            // 定义输入流来读取URL的响应
            in = conn.getInputStream();
            result = StreamUtils.copyToString(in, Charset.forName("utf-8"));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }


    /**
     * 发送post请求
     *
     * @throws Exception
     */
    public static String post(String url, String paramStr) {
        InputStream in = null;
        OutputStream os = null;
        String result = "";
        try {
            // 打开和URL之间的连接
            HttpURLConnection conn = (HttpURLConnection) new URL(url)
                    .openConnection();
            // 设置通用的请求属性
//            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Accept", "application/json");
            // 发送POST请求须设置
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            conn.setDoInput(true);
            os = conn.getOutputStream();
            // 注意编码格式，防止中文乱码
            if (StringUtils.hasText(paramStr)) {
                os.write(paramStr.getBytes("utf-8"));
                os.close();
            }

            in = conn.getInputStream();
            result = StreamUtils.copyToString(in, Charset.forName("utf-8"));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (os != null) {
                    os.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }


    public static String post(String url, String paramStr, String appid, String accessToken) {

        InputStream in = null;
        OutputStream os = null;
        String result = "";
        StringBuffer stringBuffer = new StringBuffer();
        try {
            // 打开和URL之间的连接
            HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
            // 设置通用的请求属性
//            conn.setRequestProperty("accept", "*/*");
//            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestProperty("Access-Token", accessToken);
            conn.setRequestProperty("appid", appid);
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);//设置输入流采用字节流
            conn.setDoInput(true);//设置输出流采用字节流
            conn.setUseCaches(false);    //设置缓存
            conn.setRequestProperty("Charset", "utf-8");

            os = conn.getOutputStream();
            // 注意编码格式，防止中文乱码
            if (StringUtils.hasText(paramStr)) {
                os.write(paramStr.getBytes("utf-8"));
                os.close();
            }

            in = conn.getInputStream();
            result = StreamUtils.copyToString(in, Charset.forName("UTF-8"));
//            Scanner s = new Scanner(in).useDelimiter("\\A");
//            result = s.hasNext() ? s.next() : "";

//            byte[] buffer = new byte[1024];
//            int len;
//            while ((len = in.read(buffer)) != -1) {
//                String s = new String(buffer, 0, len, "UTF-8");
//                stringBuffer.append(s);
//            }
//            result = stringBuffer.toString();
//            System.out.println(result);


            //这句：new InputStreamReader(urlConn.getInputStream(), "gbk")  设置编码

//            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"gbk"));
//            String line = "";
//            while(null != (line=br.readLine())){
//                result += line;
//            }
//            System.out.println("接到的数据: " + result);


        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (os != null) {
                    os.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return ascii2native(result);
    }


    //包含unicode编码的字符串转换为普通字符串
    private static String ascii2native(String asciicode) {
        String[] asciis = asciicode.split("\\\\u");
        String nativeValue = asciis[0];
        try {
            for (int i = 1; i < asciis.length; i++) {
                String code = asciis[i];
                nativeValue += (char) Integer.parseInt(code.substring(0, 4), 16);
                if (code.length() > 4) {
                    nativeValue += code.substring(4, code.length());
                }
            }
        } catch (NumberFormatException e) {
            return asciicode;
        }
        return nativeValue;
    }

    // 仅unicode编码的字符串转换为普通字符串
    public static String decodeUnicode(String dataStr) {
        int start = 0;
        int end = 0;
        final StringBuffer buffer = new StringBuffer();
        while (start > -1) {
            end = dataStr.indexOf("\\u", start + 2);
            String charStr = "";
            if (end == -1) {
                charStr = dataStr.substring(start + 2, dataStr.length());
            } else {
                charStr = dataStr.substring(start + 2, end);
            }
            char letter = (char) Integer.parseInt(charStr, 16); // 16进制parse整形字符串。
            buffer.append(new Character(letter).toString());
            start = end;
        }
        return buffer.toString();
    }


    //骗人的
    private static void getResponseTextV2(InputStream netIps, StringBuilder builder) throws Exception {
        byte[] buffer = new byte[1024];
        int len;
        while ((len = netIps.read(buffer)) != -1) {
            builder.append(new String(buffer, 0, len, "UTF-8"));
        }

    }


    //   String encode = "utf-8";
    //
    //            BufferedReader reader = new BufferedReader(new InputStreamReader(in, encode));
    //
    //            String str;
    //            while ((str = reader.readLine()) != null) {
    //                buffer.append(str).append("\n");
    //            }
    //            String toString2 = buffer.toString();



}
