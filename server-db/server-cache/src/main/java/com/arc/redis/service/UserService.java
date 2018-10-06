package com.arc.redis.service;


import com.arc.model.domain.common.User;

import java.util.List;

public interface UserService {

    Long save(User ssoUser);

    int delete(Long id);

    int update(User user);

  User get(Long id);

    List<User> list();
}
