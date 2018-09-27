package com.lb.staticweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 主页之外的  链接跳转控制
 */
@Controller
@RequestMapping("/pc")
public class PCLinkController {


    @RequestMapping(value = "/companyNews", method = RequestMethod.GET)
    public String news() {
        return "news/company";
    }

    @RequestMapping(value = "/motherCompanyNews", method = RequestMethod.GET)
    public String motherCompanyNews() {
        return "news/motherCompany";
    }


    @RequestMapping(value = "/activity",method = RequestMethod.GET)
    public String activity() {
        return "view/activity";
    }

    /*    @RequestMapping("/index")
    public String in() {
        System.out.println("****************************");
        System.out.println("************主页************");
        System.out.println("****************************");
        return "redirect:a.html";
    }


    @RequestMapping("/b")
    public String b() {
        return "b.html";
    }*/


}
