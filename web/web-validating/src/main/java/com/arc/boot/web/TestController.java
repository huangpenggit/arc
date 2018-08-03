package com.arc.boot.web;

import com.arc.boot.service.impl.TestServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

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
}