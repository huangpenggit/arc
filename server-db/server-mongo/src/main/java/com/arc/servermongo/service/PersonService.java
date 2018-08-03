package com.arc.servermongo.service;

import com.arc.model.common.Person;

import java.util.List;

public interface PersonService {

    //条件查询。
    Person save(Person user);

    Person get(Long id);

    List<Person> list();

//    List<User> list();
}
