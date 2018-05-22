package com.del.test.controller;

import com.del.test.model.Person;
import com.del.test.repository.PersonRepository;
import com.del.test.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "person")
public class PerconController {

    @Autowired
    private PersonRepository personRepository;


    @PostMapping(path = "addPerson")

    public void addPerson(Person person) {
        personRepository.save(person);
    }


    @DeleteMapping(path = "deletePerson")
    public void deletePerson(Long id) {
        personRepository.delete(id);
    }
}