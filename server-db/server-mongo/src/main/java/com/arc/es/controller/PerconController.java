package com.arc.es.controller;

import com.arc.model.domain.common.Person;
import com.arc.mongo.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "person")
public class PerconController {

    @Autowired
    private PersonRepository personRepository;


    @PostMapping(path = "addPerson")

    public void addPerson(Person person) {
        personRepository.save(person);
    }


//    @DeleteMapping(path = "deletePerson")
//    public void deletePerson(Long id) {
//        personRepository.delete(id);
//    }
}
