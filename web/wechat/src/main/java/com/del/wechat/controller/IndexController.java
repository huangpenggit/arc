package com.del.wechat.controller;

import com.del.doamin.Person;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 返回json数据的controller
 *
 * @author yechao
 * @date 20180706
 */

@RestController
public class IndexController {

    @RequestMapping(value = "/index")
    public String index(Model model)
    {
        Person single = new Person("名称",21);
        List<Person> people = new ArrayList<Person>();
        Person p1 = new Person("春天",21);
        Person p2 = new Person("夏天",22);
        Person p3 = new Person("秋天",23);
        people.add(p1);
        people.add(p2);
        people.add(p3);
        model.addAttribute("singlePerson",single);
        model.addAttribute("people",people);
        return "index";
    }


    @PostMapping(value = "/upload/file")
    public String upload(Model model)
    {
        model.addAttribute("mark","传递参数MARK 时间： "+new Date());
        return "index";
    }
}