package com.del.client.website.controller;

import com.alibaba.fastjson.JSON;
import com.del.client.website.model.Person;
import com.del.client.website.model.Tree;
import com.del.client.website.service.ITreeService;
import com.del.client.website.service.impl.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ZTreeController {
    @Autowired
    private ITreeService treeService;
    @RequestMapping(value = "/my")
    public String index(Model model) {
        Person single = new Person("小明", "0000");
        Person man = new Person("name", "key");
        List<Person> persons = new ArrayList<Person>();
        Person p1 = new Person("春天", "1111");
        Person p2 = new Person("夏天", "2222");
        Person p3 = new Person("秋天", "3333");
        Person p4 = new Person("冬天", "4444");
        persons.add(p1);
        persons.add(p2);
        persons.add(p3);
        persons.add(p4);
        model.addAttribute("person", single);
        model.addAttribute("persons", persons);
        model.addAttribute("man", man);
        return "/view/myTree";
    }

    @GetMapping("/tree/json")
    @ResponseBody
    public String treeData() {
//        JsonResult result = new JsonResult();
            List<Tree> trees = treeService.queryAll();
        String string = JSON.toJSONString(trees);
        System.out.println(string);
        return string;
    }
@RequestMapping("/z")
@ResponseBody
    public String testMultiThread() {
        for (int j = 0; j < 10; j++) {
            System.out.println("运行保存" + j);
            TreeService mu = new TreeService();
            Thread t = new Thread(mu);
            t.start();
        }
    return "程序运行结束";
    }
}