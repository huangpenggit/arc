package com.del.test.service;


import org.springframework.security.core.userdetails.User;

import java.util.List;

public interface UserService {

    //条件查询。
    User save(User user);

    User get(String areaCode);

    List<User> list( );

//    List<User> list();
}
