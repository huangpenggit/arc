package com.security.mapper;

import com.arc.model.domain.system.UserAuth;

import java.util.List;

public interface UserAuthMapper {

    int save(UserAuth auth);

//    int delete(Long id);

    int update(UserAuth auth);

    UserAuth get(Long id);

//    UserAuth getByUsername(@Param("username") String username);

    List<UserAuth> list();

}