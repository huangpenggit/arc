package com.arc.post.aop;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.Date;

@Aspect//将一个类定义为一个切面类
@Component
@Slf4j
public class LogAspect {

    //service 包下面的所有方法
//    @Before("execution(* com.arc.post.service.*.*(..))")
//    public void before() {
//        System.out.println("AOP 的之前方法 te target method {}" + new Date());
//        log.debug("before te target method {}" + new Date());
//
//    }

    //    @Pointcut(value = "execution(* com.arc.post.service.*.*(..))")


    //申明一个切点 里面是 execution表达式
    @Pointcut(value = "execution (public * com.arc.post.service.UserService.*(..))")
    public void pointcut() {
    }

    @Before("pointcut()")
    public void beforeList(JoinPoint joinPoint) {
        System.out.println("前############");
        //打印请求内容.
//        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//        HttpServletRequest request = requestAttributes.getRequest();
//        log.info("请求地址:"+request.getRequestURL().toString());
//        log.info("请求方式:"+request.getMethod());
//        log.info("请求类方法:"+joinPoint.getSignature());
//        log.info("请求类方法参数:"+ Arrays.toString(joinPoint.getArgs()));

    }


    //    @After("execution(* com.arc.post.service.*.*(..))")
    @Before("pointcut()")
    public void after(JoinPoint joinPoint) {
        System.out.println(joinPoint.getArgs());
        System.out.println(joinPoint.getTarget().getClass());// UserServcieImpl
        System.out.println(joinPoint.getThis());//UserServcieImpl@1a4aecfb
        System.out.println(joinPoint.getSignature());//List com.arc.post.service.impl.UserServcieImpl.list()
        System.out.println(joinPoint.getKind());//method-execution
        System.out.println("AOP 的之后方法  te target method {}" + new Date());
        log.debug("after te target method {}" + new Date());
    }

}
