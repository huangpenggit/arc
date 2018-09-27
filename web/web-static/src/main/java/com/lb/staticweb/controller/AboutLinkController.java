package com.lb.staticweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 主页之外的  链接跳转控制
 */
@Controller
//@RequestMapping("/pc")
public class AboutLinkController {


    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public String event() {

        System.out.println("*******");
        return "about/event";
    }

    @RequestMapping(value = "/partner", method = RequestMethod.GET)
    public String partner() {
        return "about/partner";
    }
  @RequestMapping(value = "/industryChain", method = RequestMethod.GET)
    public String industryChain() {
        return "about/industryChain";
    }


}
