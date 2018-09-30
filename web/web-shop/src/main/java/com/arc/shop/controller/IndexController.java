package com.arc.shop.controller;

import com.arc.model.domain.common.Person;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping(value = "/index")
public class IndexController {


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(Model model) {
        log.debug("访问index时间{}", new Date());

        Person single = new Person("名称", 21);
        List<Person> people = new ArrayList<>();
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
