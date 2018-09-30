package com.arc.post.controller;

import com.arc.post.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;


    @RequestMapping("/list")
    public Object list() {
        return userService.list();
    }

    @RequestMapping("/get")
    public Object get(Long id) {
        return userService.get(id);
    }
}
