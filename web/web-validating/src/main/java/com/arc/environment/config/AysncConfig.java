//package com.arc.boot.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.scheduling.annotation.EnableAsync;
//import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
//
//import java.util.concurrent.ThreadPoolExecutor;
//
//@Configuration
//@EnableAsync
//public class AysncConfig {
//    @Bean
//    public ThreadPoolTaskExecutor myExecutor() {
//        //一个线程池最多可以处理maxPoolSize+ queueCapacity个任务
//        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
//        executor.setCorePoolSize(1);//核心线程池大小
//        executor.setMaxPoolSize(10);//最大线程池大小
//        executor.setQueueCapacity(2);//工作队列容量
//        executor.setKeepAliveSeconds(2);//超过corePoolSize范围的线程在执行结束后保存时间，超出时间就被销毁
//        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
////        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.AbortPolicy());
//        executor.initialize();
//        return executor;
//    }
////1）corePoolSize: 核心线程池大小，只要启动线程池，就会一直存在，即使执行完成后也会存在；
////
////2）maxPoolSize：最大线程池大小；
////
////3）queueCapacity：工作队列容量；
////
////4）KeepAliveSeconds：超过corePoolSize范围的线程在执行结束后保存时间，超出时间就被销毁；
//
////线程池工作流程如下：
////1）  当线程池线程数小于 corePoolSize，再来一个新任务则直接创建线程；
////2）当线程池线程数等于corePoolSize，再来一个新任务就会进入工作队列（缓冲）中，等待其他线程执行完任务，而不是创建新的线程；
////3）当进入工作队列的线程数等于queueCapacity，再来一个新任务就会直接在核心线程池外创建一个新线程，直到线程数等于maxPoolSize（工作队列中的任务还没有创建线程）；
////4）如果线程数等于maxPoolSize，再来一个新任务时，线程池就会执行拒绝操作，即我们配置的RejectedExecutionHandler，默认拒绝的方法有以下几种：
////l  ABORT（缺省）：抛出TaskRejectedException异常，然后不执行
////l  DISCARD：不执行，也不抛出异常
////l  DISCARD_OLDEST：丢弃queue中最旧的那个任务
////l  CALLER_RUNS：继续执行新任务，但不在新线程中执行任务，而是调用者所在的线程来执行
////也就是说，一个线程池最多可以处理maxPoolSize+ queueCapacity个任务，超过就会拒绝执行；同时处理的最大任务数量为maxPoolSize，有queueCapacity个任务在缓冲区等待执行。
//
//
//
//    @Bean
//    public ThreadPoolTaskExecutor backExecutor() {
//        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
//        executor.setCorePoolSize(100);
//        executor.setMaxPoolSize(500);
//        executor.setQueueCapacity(20);
//        executor.setKeepAliveSeconds(20);
//        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
////        executor.setRejectedExecutionHandler(new ThreadPoolExecutor.AbortPolicy());
//        executor.initialize();
//        return executor;
//    }
//}