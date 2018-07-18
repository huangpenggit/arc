package com.del.servermongo.controller;

import com.del.model.common.Person;
import com.del.servermongo.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "mongo")
public class MongoController {

    @Autowired
    private PersonService personService;


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