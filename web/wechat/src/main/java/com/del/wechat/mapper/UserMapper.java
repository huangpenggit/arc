package com.del.wechat.mapper;

import com.del.model.common.User;

import java.util.List;

public interface UserMapper {

    int save(User user);

    int delete(Long id);

    int update(User user);

    User get(Long id);

    List<User> list();
}
