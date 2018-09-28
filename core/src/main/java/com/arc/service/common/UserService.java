package com.arc.service.common;

import com.arc.model.domain.common.User;

import java.util.List;

/**
 * User相关的service
 * 多个项目可以公用的
 *
 * @author yechao
 */
public interface UserService {

    Long save(User user);

    Integer delete(Long id);

    Integer update(User user);

    User get(Long id);

    List<User> list();
}
K