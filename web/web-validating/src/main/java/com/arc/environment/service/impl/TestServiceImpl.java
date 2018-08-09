package com.arc.environment.service.impl;


import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Random;
import java.util.UUID;

/**
 * 描述：
 *
 * @author: myx
 * @date: 2018/1/31 0031 17:09
 * @version: V1.0
 * Copyright © 2018-ganinfo. All rights reserved.
 */
@Service
public class TestServiceImpl {

    /**
     * 这里进行标注为异步任务，在执行此方法的时候，会单独开启线程来执行
     */
    @Async
    public Object function1() {
        System.out.println("f1 : " + Thread.currentThread().getName() + "   " + UUID.randomUUID().toString());
        try {
            Thread.sleep(new Random().nextInt(100));
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return "fun1" + new Date();
    }


    @Async
    public Object function2() {
        System.out.println("f2 : " + Thread.currentThread().getName() + "   " + UUID.randomUUID().toString());
        try {
            Thread.sleep(200);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "fun2" + new Date();

    }
}

