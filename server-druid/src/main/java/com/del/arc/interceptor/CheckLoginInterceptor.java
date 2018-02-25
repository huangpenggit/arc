package com.del.arc.interceptor;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//判断是否需要登录 ====  拦截器
public class CheckLoginInterceptor extends HandlerInterceptorAdapter {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (handler instanceof HandlerMethod) {
            //得到所有controller的方法
            HandlerMethod hm = (HandlerMethod) handler;
            //如果有贴"需要登录"的注解
            //            if (hm.getMethodAnnotation(RequireLogin.class) != null)
        }
        return false;
    }
}

