package com.arc.es.service;

import com.arc.model.domain.common.Person;

import java.util.List;

public interface PersonService {

    //条件查询。
    Person save(Person user);

    Person get(Long id);

    List<Person> list();

//    List<User> list();
}
