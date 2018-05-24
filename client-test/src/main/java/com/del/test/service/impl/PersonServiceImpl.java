package com.del.test.service.impl;

import com.del.doamin.Person;
import com.del.test.repository.PersonRepository;
import com.del.test.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonRepository personRepository;

    @Override
    public Person save(Person person) {
        return personRepository.save(person);
    }

    @Override
    public Person get(Long id) {
        Optional<Person> person = personRepository.findById(id);
        return null;
    }

    @Override
    public List<Person> list() {
        return personRepository.findAll();
    }

}
