package com.lb.staticweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * 主页之外的  链接跳转控制
 */
@Controller
public class LinkController {
    @RequestMapping("/in")
    public String index(Map<String, Object> model) {
        model.put("name", "adam");
        return "index";//返回的内容就是templetes下面文件的名称
    }


    @RequestMapping(value = "/companyDetails", method = RequestMethod.GET)
//@ResponseBody
    public String companyDetails() {
        return "view/companyDetails";
    }

    @RequestMapping(value = "/borrow", method = RequestMethod.GET)
//@ResponseBody
    public String bo(Model model) {
        model.addAttribute("user", "uuuuu");
        return "borrow";
    }

    @RequestMapping(value = "/ac", method = RequestMethod.GET)
    public String ac(Model model) {
        model.addAttribute("user", "uuuuu");
        return "view/activity";
    }

    @RequestMapping(value = "/usr", method = RequestMethod.GET)
    public String user(Model model) {
        model.addAttribute("user", "uuuuu");
        return "user";
    }

    @RequestMapping(value = "/a", method = RequestMethod.GET)
    @ResponseBody
    public String a() {
        return "success";
    }


    @RequestMapping("/head")
    public String in() {
        return "common/head";
    }

    @RequestMapping("/foot")
    public String foot() {
        return "common/foot";
    }


}
