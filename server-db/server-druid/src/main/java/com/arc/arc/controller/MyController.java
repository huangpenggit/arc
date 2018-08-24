package com.arc.arc.controller;

import com.arc.arc.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MyController {


//    @RequestMapping("/my")
//    public String index(Model model) {
//        System.out.println("#######");
//        List<User> users = userService.queryAll();
//        model.addAttribute("users", users);
////        return "redirect:/static/ceshi.html";
//        return "/static/ceshi.html";
//    }

    @RequestMapping("/b")
    public String b(Model model) {
        return "test/b";
    }




}
