package com.security.service;


import com.arc.model.domain.system.UserAuth;

import java.util.List;

/**
 * 系统用户的服务
 *
 * @author yechao
 * @date 2018/09/29
 */
public interface UserAuthService {

    int save(UserAuth auth);

//    int delete(Long id);

    int update(UserAuth auth);

    UserAuth get(Long id);

//    UserAuth getByUsername(@Param("username") String username);

    List<UserAuth> list();
}
