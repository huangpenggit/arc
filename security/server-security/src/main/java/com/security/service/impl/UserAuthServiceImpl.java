package com.security.service.impl;


import com.arc.model.domain.system.UserAuth;
import com.security.mapper.UserAuthMapper;
import com.security.service.UserAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserAuthServiceImpl implements UserAuthService {


    @Autowired
    private UserAuthMapper userAuthMapper;

    @Override
    public int save(UserAuth auth) {
        return 0;
    }

    @Override
    public int update(UserAuth auth) {
        return 0;
    }

    @Override
    public UserAuth get(Long id) {
        return userAuthMapper.get(id);
    }

    @Override
    public List<UserAuth> list() {
        return userAuthMapper.list();
    }
}
