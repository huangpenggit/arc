package com.del.service.common;

import com.del.model.common.User;

import java.util.List;

public interface UserService {

    Long save(User user);

    Integer delete(Long id);

    Integer update(User user);

    User get(Long id);

    List<User> list();
}
