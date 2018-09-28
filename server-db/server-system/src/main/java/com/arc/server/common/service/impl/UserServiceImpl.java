/*
package com.del.server.common.service.impl;

import com.del.model.common.User;
import com.del.server.common.mapper.SsoUserMapper;
import com.del.service.common.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Slf4j
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private SsoUserMapper userMapper;

    @Override
    public Long save(User user) {
        userMapper.insert(user);
        return user.getId();
    }

    @Override
    public Integer delete(Long id) {
        return userMapper.delete(id);
    }

    @Override
    public Integer update(User user) {
        return userMapper.update(user);
    }

    @Override
    public User get(Long id) {
        return userMapper.get(id);
    }

    @Override
    public List<User> list() {
        return userMapper.selectAll();
    }
}
*/
