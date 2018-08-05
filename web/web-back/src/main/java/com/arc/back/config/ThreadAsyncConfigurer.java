package com.arc.back.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;

/**
 * 异步线程池配置类
 * 有一些业务需求，需要是异步进行的，不能影响当前线程的运行，在spring boot中则能通过注解和配置快速实现这个。
 * 注意使用的时候：
 * 然后将需要异步执行的业务步骤写成方法用@sync注解即可
 */
@Configuration
@EnableAsync//开启对异步任务的支持
public class ThreadAsyncConfigurer implements AsyncConfigurer {
//    @Value("${async.executor.thread.core_pool_size}")
//    private int corePoolSize;
//
//    @Value("${async.executor.thread.max_pool_size}")
//    private int maxPoolSize;
//
//    @Value("${async.executor.thread.queue_capacity}")
//    private int queueCapacity;

    private String threadNamePrefix = "AsyncExecutorThread-";

    /**
     * 执行需要依赖线程池，这里就来配置一个线程池
     *
     * @return
     */
    @Bean(name = "asyncExecutor")
    public Executor myExecutor() {
        ThreadPoolTaskExecutor threadPool = new ThreadPoolTaskExecutor();
        threadPool.setCorePoolSize(10);      //设置核心线程数 核心线程池大小
        threadPool.setMaxPoolSize(120);        //设置最大线程数
        threadPool.setQueueCapacity(10);        //线程池所使用的缓冲队列 工作队列容量

        threadPool.setWaitForTasksToCompleteOnShutdown(true);    //等待任务在关机时完成--表明等待所有线程执行完
        threadPool.setAwaitTerminationSeconds(60);// 等待时间 （默认为0，此时立即停止），并没等待xx秒后强制停止
        threadPool.setThreadNamePrefix(threadNamePrefix);  //  线程名称前缀

        threadPool.initialize();    // 初始化线程
        return threadPool;
    }


    //        threadPool.setKeepAliveSeconds(2);//超过corePoolSize范围的线程在执行结束后保存时间，超出时间就被销毁

//    @Override
//    public AsyncUncaughtExceptionHandler getAsyncUncaughtExceptionHandler() {
//        return null;
//    }

    //1）corePoolSize: 核心线程池大小，只要启动线程池，就会一直存在，即使执行完成后也会存在；
//
//2）maxPoolSize：最大线程池大小；
//
//3）queueCapacity：工作队列容量；
//
//4）KeepAliveSeconds：超过corePoolSize范围的线程在执行结束后保存时间，超出时间就被销毁；

//线程池工作流程如下：
//1）  当线程池线程数小于 corePoolSize，再来一个新任务则直接创建线程；
//2）当线程池线程数等于corePoolSize，再来一个新任务就会进入工作队列（缓冲）中，等待其他线程执行完任务，而不是创建新的线程；
//3）当进入工作队列的线程数等于queueCapacity，再来一个新任务就会直接在核心线程池外创建一个新线程，直到线程数等于maxPoolSize（工作队列中的任务还没有创建线程）；
//4）如果线程数等于maxPoolSize，再来一个新任务时，线程池就会执行拒绝操作，即我们配置的RejectedExecutionHandler，默认拒绝的方法有以下几种：
//l  ABORT（缺省）：抛出TaskRejectedException异常，然后不执行
//l  DISCARD：不执行，也不抛出异常
//l  DISCARD_OLDEST：丢弃queue中最旧的那个任务
//l  CALLER_RUNS：继续执行新任务，但不在新线程中执行任务，而是调用者所在的线程来执行
//也就是说，一个线程池最多可以处理maxPoolSize+ queueCapacity个任务，超过就会拒绝执行；同时处理的最大任务数量为maxPoolSize，有queueCapacity个任务在缓冲区等待执行。


}