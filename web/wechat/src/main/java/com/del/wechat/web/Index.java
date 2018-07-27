package com.del.wechat.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * web包中放的是跳转页面的controller
 * @author yechao
 * @date 20180706
 */
@Controller
@RequestMapping("/wan")
public class Index {
    @RequestMapping("/search")
    public String search() {
        return "/wan/search";
    }
}
