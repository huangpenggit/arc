package com.del.server.common.mapper;

import com.del.model.common.User;

import java.util.List;

public interface UserMapper {

    int insert(User record);

    int delete(Long id);

    int update(User record);

    User get(Long id);

    List<User> selectAll();

}