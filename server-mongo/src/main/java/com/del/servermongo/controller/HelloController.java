package com.del.servermongo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloController {

    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {
        return "HELLO";
    }

    @RequestMapping("/tree")
    public String tree() {
        System.out.println(1111);
        return "/index";
    }


}
