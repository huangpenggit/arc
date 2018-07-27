package com.del.wechat.controller;


import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 在SpringBoot中通过代码注册的方式来注册Servlet
 */
//@WebServlet(name = "AuthServlet", urlPatterns = "/auth")
//@WebServlet("/auth")

@WebServlet(
        asyncSupported = false,//	指定Servlet是否支持异步操作模式
        displayName = "auth",//指定Servlet显示名称
        name = "AuthServlet",
        urlPatterns = "/auth",//urlPatterns/value	这两个属性作用相同，指定Servlet处理的url
        loadOnStartup = 1,
        initParams = {//配置初始化参数
                @WebInitParam(name = "name", value = "小明"),
                @WebInitParam(name = "pwd", value = "123456")

        })

public class AuthServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("AuthServlet 初始化...");
    }

    //https://blog.csdn.net/u011277123/article/details/65628855
    //返回时可以设置的
    //设置状态码,响应头和数据
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("GET.........");
//        response.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
//        response.getWriter().print("现在该文档不要缓存.");
//        response.setHeader("Cache-Control", "no-cache");
//        response.setHeader("pragma", "no-cache");
//        response.setDateHeader("expires", -1);
//
//
//        //1.获得微信签名的加密字符串
//        String signature = request.getParameter("signature");
//        //2.获得时间戳信息
//        String timestamp = request.getParameter("timestamp");
//        //3.获得随机数
//        String nonce = request.getParameter("nonce");
//        //4.获得随机字符串
//        String echostr = request.getParameter("echostr");
//        System.out.println("获得微信签名的加密字符串：" + signature);
//        System.out.println("获得时间戳信息：" + timestamp);
//        System.out.println("获得随机数：" + nonce);
//        System.out.println("获得随机字符串：" + echostr);
//
//        PrintWriter out = response.getWriter();
//        //验证请求确认成功原样返回echostr参数内容，则接入生效，成为开发者成功，否则失败
////        if (ValidationUtil.checkSignature(signature, timestamp, nonce)) {
////            out.print(echostr);
////        }
//        out.print("获得时间戳信息 " + new Date());
//
//        out.close();
//        out = null;
//    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        System.out.println("POST.........");
        System.out.println("-----------doPost----------------");
        resp.getWriter().print("<h1>Hello MyServlet Response return you this</h1>");
    }

/*
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html;charset=utf-8");
//        resp.getWriter().print("hello,你已经完成了资源重定向.你现在访问的是 url--/users");


//        这个是直接服务端重定向了
//        resp.setStatus(302);
//        resp.setHeader("Location", "/users");


//        利用响应头实现禁用浏览器缓存
//
//        resp.setContentType("text/html;charset=utf-8");
//        resp.getWriter().print("现在该文档不要缓存.");
//        resp.setHeader("Cache-Control", "no-cache");
//        resp.setHeader("pragma", "no-cache");
//        resp.setDateHeader("expires", -1);

//        如何发送响应体
//
//        response发送响应体有两种方式,分别是字节流和字符流,但是两者不可以同时使用.


//  服务端定时重定向
//方法1
//resp.sendRedirect("/hello3/b.servlet");

        System.out.println(req);
        System.out.println(req.getAttribute("name"));
        System.out.println(req.getAttribute("pwd"));

        System.out.println(resp);
        resp.setContentType("text/html;charset=utf-8");
        resp.getWriter().print("登陆成功,5秒钟后将会自动跳转.");
        resp.setHeader("Refresh", "5;URL=/users");

    }

*/

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException { //发送字节流响应数据,其实任何数据都可以转化为字节流发送.
        //所以字节流实质上可以发送任何数据
//        resp.setCharacterEncoding("utf-8");
        //这句话的意思，是让浏览器用utf8来解析返回的数据
        response.setHeader("Content-type", "text/html;charset=UTF-8");
        String data = "hello,世界";

        ServletOutputStream ops = response.getOutputStream();
        //这句话的意思，使得放入流的数据是utf8格式
//        ops.write(data.getBytes("UTF-8"));
//        ops.write(data.getBytes("utf-8"));
        ops.write(data.getBytes());


        //----------------------------------------
        //第二种方法
        //这句话的意思，是让浏览器用utf8来解析返回的数据
//        response.setHeader("Content-type", "text/html;charset=UTF-8");
//这句话的意思，是告诉servlet用UTF-8转码，而不是用默认的ISO8859
//        response.setCharacterEncoding("UTF-8");
//        String data = "中国";
//        PrintWriter pw = response.getWriter();
//        pw.write(data);
    }
}