package com.del.wechat.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

//用于校验token的controller----以及--获取用户信息，图林交互等
@Controller
@Slf4j//注解在类上；为类提供一个 属性名为log 的 log4j 日志对象
//@Log4j
public class TestController {
//    private static final Logger logger = LoggerFactory.getLogger(WeixinController.class);

    //注入
//    @Autowired
//    private IUserService userService;
//    @Autowired
//    private IAnswerService answerService;


    /**
     * 可以使用 Servlet 原生的API作为目标方法的参数
     * 具体支持以下类型
     * HttpServletRequest
     * HttpServletResponse
     * HttpSession
     * java.security.Principal
     * OutputStream
     * Reader
     * Writer
     *
     * @throws IOException
     */
    @RequestMapping("/testServlet")
    public void testServletAPI(HttpServletRequest request, HttpServletResponse response, Writer out) throws IOException {
        System.out.println("testServletAPI, " + request + "," + response);
        // 为了测试能用原生的Servlet中的Writer，先把返回值String去掉改成void，一样能在屏幕写出String
        out.write("hello springMVC");
        // return SUCCESS;
    }


}


