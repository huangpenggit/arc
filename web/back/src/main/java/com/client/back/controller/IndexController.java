package com.client.back.controller;

import com.client.back.domain.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {

    @RequestMapping(value = "/index")
    public String index(Model model) {
        Person single = new Person("名称", 21);
        List<Person> people = new ArrayList<Person>();
        Person p1 = new Person("春天", 21);
        Person p2 = new Person("夏天", 22);
        Person p3 = new Person("秋天", 23);
        people.add(p1);
        people.add(p2);
        people.add(p3);
        model.addAttribute("singlePerson", single);
        model.addAttribute("people", people);
        return "index";
    }
}