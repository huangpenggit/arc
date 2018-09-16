package com.arc.vue.controller.test;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

/**
 * 描述：
 *
 * @author:
 * @date: 2018/1/31 0031 17:24
 * @version: V1.0
 * Copyright © 2018-arc. All rights reserved.
 */

@Slf4j
@Controller
@RequestMapping("/show")
public class ShowController {

    @RequestMapping("")
    public String  main(String[] args) {
        log.debug("访问时间 {}",new Date());
        return "show";
    }
}
