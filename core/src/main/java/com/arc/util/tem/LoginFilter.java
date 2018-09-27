package com.arc.util.tem;/*
package cn.com.besttone.csp.web.config;

import org.springframework.core.annotation.Order;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

*/
/**
 * Created by jack on 2017/4/28.
 *//*

@Order(1) //@Order注解表示执行过滤顺序，值越小，越先执行
@WebFilter(filterName = "loginFilter", urlPatterns = "/*")
        //需要在spring-boot的入口处加注解@ServletComponentScan, 如果不指定，默认url-pattern是/*
class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        System.out.println(servletRequest);
        System.out.println(servletRequest);
        System.out.println();
        System.out.println();
        System.out.println(servletResponse);
        System.out.println(servletResponse);
        System.out.println(filterChain);
        System.out.println(filterChain);
        System.out.println(filterChain);
//        HttpServletRequest request= (HttpServletRequest) servletRequest;
//        HttpServletResponse response= (HttpServletResponse) servletResponse;
//        HttpSession session = request.getSession();
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        SecurityUser principal = (SecurityUser)authentication.getPrincipal();
//         String username= principal.getUsername();
//
//        session.setAttribute("username", username);//把spring的 登陆实体认证信息中的用户名 数据放到session中
//        filterChain.doFilter(servletRequest, servletResponse);
    }


    @Override
    public void destroy() {

    }
}

//其中，@WebFilter(filterName = "loginFilter", urlPatterns = Array("/")) ，
// 这个注解用来声明一个Servlet的Filter，这个加注解@WebFilter的LoginFilter类必须要实现javax.servlet.Filter接口。
// 它会在容器部署的时候扫描处理。如果不指定urlPatterns，默认url-pattern是/。
// 这个@WebFilter注解，在SpringBoot中，要给启动类加上注解@ServletComponentScan，开启扫描Servlet组件功能。

*/
