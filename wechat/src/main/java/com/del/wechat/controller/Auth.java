package com.del.wechat.controller;


import com.del.wechat.utils.ValidationUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 微信请求验证类
 */
public class Auth extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获得微信签名的加密字符串
        String signature = request.getParameter("signature");
        //2.获得时间戳信息
        String timestamp = request.getParameter("timestamp");
        //3.获得随机数
        String nonce = request.getParameter("nonce");
        //4.获得随机字符串
        String echostr = request.getParameter("echostr");
        System.out.println("获得微信签名的加密字符串：" + signature);
        System.out.println("获得时间戳信息：" + timestamp);
        System.out.println("获得随机数：" + nonce);
        System.out.println("获得随机字符串：" + echostr);

        PrintWriter out = response.getWriter();
        //验证请求确认成功原样返回echostr参数内容，则接入生效，成为开发者成功，否则失败
        if (ValidationUtil.checkSignature(signature, timestamp, nonce)) {
            out.print(echostr);
        }

        out.close();
        out = null;
    }
}