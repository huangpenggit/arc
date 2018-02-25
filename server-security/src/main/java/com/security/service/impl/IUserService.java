package com.security.service.impl;

import com.security.domain.User;

import java.util.List;

public interface IUserService {
    int selectUserById(Long id);

    int delete(Long id);

    int save(User user);

    int update(User user);

    List<User> queryAll();



}
