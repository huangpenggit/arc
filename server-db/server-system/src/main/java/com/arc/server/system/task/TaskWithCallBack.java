package com.arc.server.system.task;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

import java.util.Random;
import java.util.concurrent.Future;

/**
 * @Author yeChao
 * @Date 2018/10/5 19:02
 */
@Component
public class TaskWithCallBack {

    public static Random random = new Random();

    //注： @Async所修饰的函数不要定义为static类型，这样异步调用不会生效
    @Async
    public Future<String> fun1() throws Exception {
        System.out.println("开始执行任务一");
        long start = System.currentTimeMillis();
        Thread.sleep(5000);
        long end = System.currentTimeMillis();
        System.out.println("任务一执行时间：" + (end - start));
        return new AsyncResult<>("" + (end - start));
    }

    @Async
    public Future<String> fun2() throws Exception {
        System.out.println("开始执行任务二");
        long start = System.currentTimeMillis();
        Thread.sleep(2000);
        long end = System.currentTimeMillis();
        System.out.println("任务二执行时间：" + (end - start));
        return new AsyncResult<>("" + (end - start));

    }

    @Async
    public Future<Object> fun3() throws Exception {
        System.out.println("开始执行任务三");
        long start = System.currentTimeMillis();
        Thread.sleep(3000);
        long end = System.currentTimeMillis();
        System.out.println("任务三执行时间：" + (end - start));
        return new AsyncResult<>("" + (end - start));
    }

}
