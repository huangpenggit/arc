package com.security.controller;

import com.security.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloController {

//    @RequestMapping(value = {""}, method = RequestMethod.GET)
//    @ResponseBody
//    public List<User> getUserList() {
//        return userService.list();
//    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String postUser(@RequestBody User user) {
        return "/hello";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Object getUser(@PathVariable Long id) {
        return id;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.PUT)
    public String putUser(@PathVariable Long id, @RequestBody User user) {
        return "/hello";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String deleteUser(@PathVariable Long id) {
        return "/hello";
    }

    public static void main(String[] args) {
        Integer a = null;
        String s = String.valueOf(a);
        System.out.println(s);
    }


}
