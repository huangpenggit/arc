package com.arc.vue.controller;

import com.arc.vue.service.impl.TestServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * 描述：
 *
 * @author: ruikanwang
 * @date: 2018/1/31 0031 17:24
 * @version: V1.0
 * 注意：本内容仅限于新疆感知科技有限公司内部传阅,禁止外泄以及用于其他的商业目
 * Copyright © 2018-ganinfo. All rights reserved.
 */
@Slf4j
@RestController
public class TestController {
    @Autowired
    TestServiceImpl service;

    @GetMapping("/test")
    public void test() {
        for (int i = 0; i < 10; i++) {
            Object o1 = service.function1();// 执行异步任务
            Object o2 = service.function2();

            System.out.println(o1);
            System.out.println(o2);

        }
    }



    public static void main(String[] args) {

        Long start = System.currentTimeMillis();
        ExecutorService exs = Executors.newFixedThreadPool(1000);
        try {


            List<Integer> list = new ArrayList<>();
            List<Future<Integer>> futureList = new ArrayList<>();


            for(int i=1; i<4; i++) {
                System.out.println(i);
                Future<Integer> submit = exs.submit(new CallableTask(i));


                futureList.add(submit);
            }


            Long getResultStart = System.currentTimeMillis();
            System.out.println("结果归集开始时间="+ LocalDate.now());

            for(Future<Integer> future : futureList) {
                Integer i = future.get();
                System.out.println("任务i="+i+"获取完成!"+LocalDate.now());
                list.add(i);
            }



            System.out.println("list = " + Arrays.toString(list.toArray()));
            System.out.println("总耗时="+(System.currentTimeMillis()-start)+",取结果归集耗时="+(System.currentTimeMillis()-getResultStart));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            exs.shutdown();
        }


    }



}
