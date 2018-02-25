/*
package com.security.controller;

import com.security.domain.User;
import com.security.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HelloController {
    @Autowired
    private UserMapper userMapper;

    @RequestMapping("/success")
    @ResponseBody
    public String a() {
        return "success";
    }

    @RequestMapping("/getUsers")
    @ResponseBody
    public List<User> getUsers() {
        return userMapper.selectAll();
    }

    @RequestMapping("/home")
    public String home() {
        return "home";

    }


    @PreAuthorize("hasRole('user')")
    @RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String toAdmin(){

        return "helloAdmin";
    }

    @RequestMapping("/hello")
    public String hello() {

        return "hello";

    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/")
    public String root() {
        return "index";

    }

    @RequestMapping("/403")
    public String error(){
        return "403";
    }
}
*/
