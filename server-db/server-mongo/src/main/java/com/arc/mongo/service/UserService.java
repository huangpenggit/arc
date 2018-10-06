package com.arc.mongo.service;

import org.springframework.security.core.userdetails.User;

import java.util.List;

public interface UserService {


    //条件查询。
    User save(User user);

//    User get(Long id );

    List<User> list();

//    List<User> list();
}
