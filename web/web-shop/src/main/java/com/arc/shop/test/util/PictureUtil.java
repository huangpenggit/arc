//package com.arc.back.util;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//
//public class PictureUtil implements Runnable {
//
////    @Async
////    public ListenableFuture<String> sayHello(String name) {
////        String res = name + ":Hello World!";
////        LoggerFactory.getLogger(PictureUtil.class).info(res);
////        return new AsyncResult<>(res);
////    }
//
//
//    @Autowired
//    private PrintService printService;
//    private static Logger logger = LoggerFactory.getLogger(PictureUtil.class);
//
//    private int count = 0;
//
//    @Override
//    public void run() {
//        while (count < 10) {
//            logger.info("--------------------异步执行前，输入为：{}，等待3s",
//                    count);
//            printService.asycnPrint(count++);
//            logger.info("--------------------异步执行后，输入为：{}",
//                    count - 1);
//        }
//    }
//}