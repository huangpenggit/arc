package com.lb.staticweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 主页链接跳转控制
 */
@Controller
public class IndexController {

    @RequestMapping("")
    public String index() {

        return "redirect:/static/index.html";
    }

    @RequestMapping("/test")
    @ResponseBody
    public String a() {
        return "这个链接有效";
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


//System.out.println("****************************");
// System.out.println("1 设计师画出来   2 专门的ui 来制作页面  3由java工程师来实现访问一个网址 呈现这个页面 4页面需要变化了  重复 123");
// System.out.println("所以还是很麻烦 要一个回ui的人  我现在旧简单照搬 那个网站吧  <有一个问题就是 页面缺好多图片，我没有时间一个个去扣人间的图>");
