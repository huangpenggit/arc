package com.del.servermongo.service;

import com.del.model.common.Person;

import java.util.List;

public interface PersonService {

    //条件查询。
    Person save(Person user);

    Person get(Long id);

    List<Person> list();

//    List<User> list();
}
