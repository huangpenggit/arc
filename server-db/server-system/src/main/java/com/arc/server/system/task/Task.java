package com.arc.server.system.task;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import java.util.Random;

/**
 * @Author yeChao
 * @Date 2018/10/5 19:02
 */
@Component
public class Task {

    public static Random random = new Random();

    //注： @Async所修饰的函数不要定义为static类型，这样异步调用不会生效
    @Async
    public void taskOne() throws Exception {
        System.out.println("开始执行任务一");
        long start = System.currentTimeMillis();
        Thread.sleep(1000);
        long end = System.currentTimeMillis();
        System.out.println("任务一执行时间：" + (end - start));
    }

    @Async
    public void taskTwo() throws Exception {
        System.out.println("开始执行任务二");
        long start = System.currentTimeMillis();
        Thread.sleep(2000);
        long end = System.currentTimeMillis();
        System.out.println("任务二执行时间：" + (end - start));
    }

    @Async
    public void taskThree() throws Exception {
        System.out.println("开始执行任务三");
        long start = System.currentTimeMillis();
        Thread.sleep(3000);
        long end = System.currentTimeMillis();
        System.out.println("任务三执行时间：" + (end - start));
    }

    public static void main(String[] args) {
        //该方法的作用是生成一个随机的int值，该值介于[0,n)的区间，也就是0到n之间的随机int值，包含0而不包含n
        int i = random.nextInt(1000);
        System.out.println(i);
        System.out.println(random.nextInt(1000));
        System.out.println(random.nextInt(1000));
        System.out.println(random.nextInt(1000));
        System.out.println(random.nextInt(1));
        System.out.println(random.nextInt(2));
        System.out.println(random.nextInt(3));
    }
}
