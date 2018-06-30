package com.del.arc.service;

import com.del.arc.domain.User;

import java.util.List;

public interface IUserService {

    int deleteByPrimaryKey(Long id);

    int save(User record);

    User queryByPrimaryKey(Long id);

    List<User> queryAll();

    int update(User record);
}