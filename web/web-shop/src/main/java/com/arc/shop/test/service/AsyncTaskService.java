package com.arc.shop.test.service;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AsyncTaskService {

    @Async
    public void fun1(Integer n) {
        try {
            Thread.sleep(2000);
            System.out.println("异步任务执行fun1：" + n);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }


    @Async
    public void fun2(Integer n) {
        System.out.println("异步任务执行+fun2：" + (n + 1));
    }
}
