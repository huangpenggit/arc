package com.arc.es.controller;/*
package com.del.servermongo.controller;


import com.del.servermongo.repository.UserRepository;
import com.del.servermongo.service.UserService;
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
//    @Autowired
   // private UserService userService;

    //获取所有的users
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public void list( ) {
        userRepository.findAll();
    }
    @RequestMapping(value = "/",method = RequestMethod.POST)
    public void save(User User ) {
        System.out.println(User);
        userRepository.save(User);
    }

//    @RequestMapping(path = "/id/User",method = {RequestMethod.GET,RequestMethod.POST})
//    public void deletePerson(Long id) {
//        userRepository.delete(id);
//    }
//


    //test
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public Object test( ) {
//        User User = new User("荷兰","1111",Collections.emptyList());
        User User = new User("美国","2222",Collections.emptyList());
        return     userService.save(User);
    }
}*/
