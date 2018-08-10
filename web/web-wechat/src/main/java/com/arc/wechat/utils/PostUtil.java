package com.arc.wechat.utils;

import lombok.extern.slf4j.Slf4j;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

@Slf4j
public class PostUtil {
    private String post(String accessTokenUrl, String param) {
//        InputStream in = null;
//        OutputStream os = null;
        String result = "";
        try {
//            HttpURLConnection conn = (HttpURLConnection) new URL("http://42.159.88.244:4000/api/v6/data/auth_token/get").openConnection();
//            conn.setRequestProperty("accept", "*/*");
//            conn.setRequestProperty("connection", "Keep-Alive");
//            conn.setRequestProperty("Content-Type", "application/json");
//            conn.setRequestProperty("Accept", "application/json");
//            conn.setRequestMethod("POST");
//            conn.setDoOutput(true);
//            conn.setDoInput(true);
//            os = conn.getOutputStream();
//            if (StringUtils.hasText(paramStr)) {
//                os.write(paramStr.getBytes("utf-8"));  // 注意编码格式，防止中文乱码
//                os.close();
//            }
//            in = conn.getInputStream();
//            result = StreamUtils.copyToString(in, Charset.forName("utf-8"));


            // Post请求的url，与get不同的是不需要带参数
            URL postUrl = new URL(accessTokenUrl);
            // 打开连接
            HttpURLConnection connection = (HttpURLConnection) postUrl.openConnection();
            // 设置是否向connection输出，因为这个是post请求，参数要放在
            // http正文内，因此需要设为true
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("Accept", "application/json");
            connection.setRequestMethod("POST");


            connection.setDoOutput(true);
            connection.setDoInput(true);
            // Post 请求不能使用缓存
            connection.setUseCaches(false);
            //设置本次连接是否自动重定向
            connection.setInstanceFollowRedirects(true);
            connection.connect();
            DataOutputStream out = new DataOutputStream(connection.getOutputStream());
            // 正文，正文内容其实跟get的URL中 '? '后的参数字符串一致
            // * request
            // * {
            // * "app_id": "ntdf769391213117cc8c96ab767cced8",
            // * "app_key": "70fac06bc882a8d91a07fe888b885e111497492941",
            // * "grant_type": "client_credentials"
            // * }


            String appId = "";
            String appSecret = "";


//            String content = "字段名=" + URLEncoder.encode("字符串值", "utf-8");
            String content = "app_id=" + URLEncoder.encode("ntdf769391213117cc8c96ab767cced8", "utf-8")
                    + "&app_key=" + URLEncoder.encode("xxxxxxx", "utf-8")
                    + "&grant_type=" + URLEncoder.encode("client_credentials", "utf-8");
            // DataOutputStream.writeBytes将字符串中的16位的unicode字符以8位的字符形式写到流里面
            out.writeBytes(content);
            //流用完记得关
            out.flush();
            out.close();
            //获取响应
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String line;
            StringBuffer buffer = new StringBuffer();
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
                buffer.append(line);
            }
            result = buffer.toString();
            reader.close();
            //该干的都干完了,记得把连接断了
            connection.disconnect();


        } catch (Exception e) {
            e.printStackTrace();
        } finally {


//            try {
//                if (os != null) {
//                    os.close();
//                }
//                if (in != null) {
//                    in.close();
//                }
//            } catch (IOException ex) {
//                ex.printStackTrace();
//            }
//

        }

        return result;
    }
}
