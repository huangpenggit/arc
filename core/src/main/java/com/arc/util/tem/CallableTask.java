package com.arc.util.tem;

import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;


public class CallableTask implements Callable {

    String path;

    public CallableTask(String path) {
        super();
        this.path= path;
    }


    @Override
    public Object call() throws Exception {
        //发送http请求获取数据


        HashMap<String, InputStream> map = new HashMap<>();
        try {
            java.net.HttpURLConnection conn = (java.net.HttpURLConnection) new java.net.URL(path).openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5 * 1000);
               //将in作为输入流，读取图片存入image中，而这里in可以为ByteArrayInputStream();
            map.put(path, conn.getInputStream());
        } catch (Exception e) {
            e.printStackTrace();//获取或者写入图片异常的时候
        }
        return map;
    }
}
