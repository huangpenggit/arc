package com.arc.client.website.controller;

import com.arc.client.website.model.Person;
import com.arc.client.website.model.Tree;
import com.arc.client.website.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ZTreeController {
    @Autowired
    private ITreeService treeService;

    @RequestMapping(value = "/tree")
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
    public List<Tree> treeData() {
        List<Tree> trees = treeService.queryAll();
        return trees;
    }


    @RequestMapping(value = "/hello")
    public String hello() {
        System.out.println("HELLO");
        return "/hello";
    }


    @RequestMapping(value = "/my", method = RequestMethod.GET)
    public String my() {
        System.out.println("my");
        return "redirect:my.html";
    }
}