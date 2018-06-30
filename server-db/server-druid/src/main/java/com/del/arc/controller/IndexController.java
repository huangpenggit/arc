package com.del.arc.controller;

import com.alibaba.fastjson.JSON;
import com.del.arc.domain.User;
import com.del.arc.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * druid 监控配置
 */
@Controller
public class IndexController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/index")
    public String index(Model model) {
        System.out.println("#######");
        List<User> users = userService.queryAll();
        model.addAttribute("users", users);
        return "/static/index.html";
    }


    @RequestMapping("/list")
    @ResponseBody
    public String list() {
        List<User> users = userService.queryAll();
        String s = JSON.toJSONString(users);
        return s;
    }

    @RequestMapping("/test")
    @ResponseBody
    public String test(Model model) {
        System.out.println("model ");
        return null;
    }

    @RequestMapping("/tree")
    public String tree(Model model) {
        return "test/tree1";
    }


}
