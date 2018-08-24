package com.arc.arc.controller;

import com.alibaba.fastjson.JSON;
import com.arc.arc.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * druid 监控配置
 */
@Controller
public class IndexController {


    @RequestMapping("/index")
    public String index(Model model) {
        System.out.println("#######");
        model.addAttribute("users", new ArrayList<User>());
        return "/static/index.html";
    }


    @RequestMapping("/list")
    @ResponseBody
    public Object list() {
//        List<User> users = userService.queryAll();
//        String s = JSON.toJSONString(users);
        return "1111";
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
