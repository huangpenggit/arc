//package com.arc.back.util;
//
//import org.slf4j.LoggerFactory;
//import org.springframework.scheduling.annotation.Async;
//import org.springframework.scheduling.annotation.AsyncResult;
//import org.springframework.stereotype.Component;
//import org.springframework.util.concurrent.ListenableFuture;
//
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;
//
//@Component
//public class Hello {
//    //    @Async
//    public void sayHello(String name) {
//        LoggerFactory.getLogger(Hello.class).info(name + ":Hello World!");
//    }
//
//
//    @Async
//    public ListenableFuture<String> sayHello1(String name) {
//        String res = name + ":Hello World!";
//        LoggerFactory.getLogger(Hello.class).info(res);
//        return new AsyncResult<>(res);
//    }
//
//
//    public static void main(String[] args) {
//
//        ExecutorService executorService = Executors.newFixedThreadPool(10);
//
//        System.out.println(executorService);
//        System.out.println(executorService);
//        System.out.println(executorService);
//        System.out.println(executorService);
//        System.out.println(executorService.toString());
//        System.out.println(executorService.toString());
//        System.out.println(executorService.toString());
//        System.out.println(executorService.toString());
//        System.out.println(executorService.toString());
//    }
//}