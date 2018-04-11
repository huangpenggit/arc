package com.security.service;

import com.security.domain.User;

import java.util.List;

public interface UserService {
    User get(Long id);

    int delete(Long id);

    int save(User user);

    int update(User user);

    List<User> list();


}
