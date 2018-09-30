package com.arc.post.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StreamUtils;
import org.springframework.util.StringUtils;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;


/**
 * Http工具类
 */
@Slf4j
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

            os = conn.getOutputStream();//连接,也可以不用明文connect，使用下面的httpConn.getOutputStream()会自动connect
            // 注意编码格式，防止中文乱码
            if (StringUtils.hasText(paramStr)) {
                os.write(paramStr.getBytes("utf-8"));
                os.close();
            }
            //获得响应状态
            int resultCode = conn.getResponseCode();
            if (resultCode == 200) {
//                in = conn.getInputStream();
//                result = StreamUtils.copyToString(in, Charset.forName("utf-8"));
                StringBuffer sb = new StringBuffer();
                String readLine = new String();
                BufferedReader responseReader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
                while ((readLine = responseReader.readLine()) != null) {
                    sb.append(readLine).append("\n");
                }

                result = sb.toString();
            }

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
        log.debug("result \n" + result);
        return result;
    }


    //多参数
    public static String post(String url, String paramStr, String appid, String accessToken) {
        log.info(" 调用方法 static String post时候的参数,url  {}\nparamStr  {}\nappId  {}\naccessToken  {}\n", url, paramStr, appid, accessToken);

        InputStream in = null;
        OutputStream os = null;
        String result = "";
        StringBuffer stringBuffer = new StringBuffer();
        try {
            // 打开和URL之间的连接
            //测试
//            url = "http://localhost:8081/test";

            HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();
            // 设置通用的请求属性
//            conn.setRequestProperty("Connection", "Keep-Alive");
//            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestProperty("Accept", "*/*");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Access-Token", accessToken);
            conn.setRequestProperty("appid", appid);
            conn.setConnectTimeout(10000);//10s超时
            conn.setRequestProperty("Charset", "utf-8");
            conn.setRequestMethod("POST");
            conn.setDoInput(true);//设置输出
            conn.setDoOutput(true);//设置输入
            conn.setUseCaches(false);//设置缓存

            os = conn.getOutputStream();
            // 注意编码格式，防止中文乱码
            if (StringUtils.hasText(paramStr)) {
                os.write(paramStr.getBytes("utf-8"));
                os.close();
            }
            //获得响应状态
            int resultCode = conn.getResponseCode();
            if (resultCode == 200) {
//                in = conn.getInputStream();
//                result = StreamUtils.copyToString(in, Charset.forName("utf-8"));
                StringBuffer sb = new StringBuffer();
                String readLine = new String();
                BufferedReader responseReader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
                while ((readLine = responseReader.readLine()) != null) {
                    sb.append(readLine).append("\n");
                }
                result = sb.toString();
            }

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
        String ascii2native = UnicodeUtil.ascii2native(result);
        log.info(" 调用方法 static String post时候的返回(unicode)\n{}", ascii2native);
        return ascii2native;
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

}
