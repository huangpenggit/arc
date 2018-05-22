package com.del.test.controller;

import com.del.test.repository.UserRepository;
import com.del.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;

@RestController
@RequestMapping(value = "users")
public class UserController {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserService userService;

    //获取所有的users
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public void list( ) {
        userRepository.findAll();
    }
    @RequestMapping(value = "/",method = RequestMethod.POST)
    public void save(User user ) {
        System.out.println(user);
        userRepository.save(user);
    }

//    @RequestMapping(path = "/id/user",method = {RequestMethod.GET,RequestMethod.POST})
//    public void deletePerson(Long id) {
//        userRepository.delete(id);
//    }
//


    //test
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public Object test( ) {
//        User user = new User("荷兰","1111",Collections.emptyList());
        User user = new User("美国","2222",Collections.emptyList());
        return     userService.save(user);
    }
}