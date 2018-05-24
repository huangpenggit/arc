package com.del.test.controller;

import com.del.doamin.Person;
import com.del.test.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "mongo")
public class MongoController {

    @Autowired
    private PersonService personService;

/*
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
*/



    //test
    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public Object test( ) {
        Person person = new Person();
        person.setAge(7);
        person.setUsername("阿尔达");
        person.setPassword("123456");
        return     personService.save(person);
    }
}