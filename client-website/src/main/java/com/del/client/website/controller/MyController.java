package com.del.client.website.controller;

import com.del.client.website.mapper.TreeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class MyController {
    @Autowired
    private TreeMapper treeMapper;

    //跳转tree
    @RequestMapping("/a")
    public String menu() {
        return "view/tree";
    }

    @RequestMapping("/b")
    @ResponseBody
    public String a() {
        return "1";
    }

    @RequestMapping(value = "/m", method = RequestMethod.GET)
    public String m() {
        return "view/menu";
    }

    @RequestMapping(value = "/m/{name}", method = RequestMethod.GET)
    @ResponseBody
    public String b(@PathVariable("name") String name) {
        //http://localhost:8001/b/ffffff
        System.out.println("  name   " + name);//  name   ffffff
        return name;
    }

    @RequestMapping(value = "/c", method = RequestMethod.GET)
    @ResponseBody
    public Integer c(@RequestParam("id") Integer id) {
        //http://localhost:8001/c?id=111
        //http://localhost:8001/c?id   ----null
        System.out.println("  id   " + id);//id   111
        return id;
    }

    @RequestMapping(value = "/d", method = RequestMethod.GET)
    @ResponseBody
    public Integer d(@RequestParam(value = "id", required = false, defaultValue = "1") Integer id) {
        //required=false 表示url中可以不穿入id参数，此时就使用默认参数
        //http://localhost:8001/c?id=111
        //http://localhost:8001/c?id   ----null
        System.out.println("  id   " + id);//id   111
        return id;
    }

//    @PathVaribale 获取url中的数据
//    @RequestParam 获取请求参数的值
//    @GetMapping 组合注解，是@RequestMapping(method = RequestMethod.GET)的缩写

    @RequestMapping(value = "/pam/{id}/{name}", method = RequestMethod.GET)
    @ResponseBody
    public String sayHello(@PathVariable("id") Integer id, @PathVariable("name") String name) {
        //http://localhost:8001/pam/0001/叶
        System.out.println("   id  " + id + "   name   " + name);// id  1   name   叶
        return "id:" + id + " name:" + name;
    }

    @RequestMapping(value = "/webjar", method = RequestMethod.GET)
    public String webjar() {
        //http://localhost:8001/pam/0001/叶
        return "redirect:/static/view/webjar.html";
    }

    @RequestMapping(value = "/my", method = RequestMethod.GET)
    public String my() {
        System.out.println("my");
        return "redirect:my.html";
    }

    //https://www.cnblogs.com/magicalSam/p/7189476.html
//    return"success.html",不要加前面的斜杠,会和默认视图解析器冲突
// 如果真的想跳转到static中的success.html,return "redirect:success.html"，但不建议这么做。
//return 的字符串是view的名称，会根据你配置的模板位置来查找，spring boot 默认时间模板存放在 /resource/templates 下，不会到 static 目录下去寻找。redirect其实就是重定向到外部资源




    //https://blog.csdn.net/isea533/article/details/50412212
}
