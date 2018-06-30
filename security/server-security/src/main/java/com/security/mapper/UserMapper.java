package com.security.mapper;

import com.security.domain.User;
import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    User selectByPrimaryKey(Long id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User selectByUsername(String username);
//    org.springframework.security.core.userdetails.User selectByUsername(String username);
}