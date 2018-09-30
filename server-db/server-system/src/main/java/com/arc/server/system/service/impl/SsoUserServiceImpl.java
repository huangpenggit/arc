package com.arc.server.system.service.impl;

import com.arc.model.domain.system.SsoUser;
import com.arc.server.system.mapper.SsoUserMapper;
import com.arc.server.system.service.SsoUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SsoUserServiceImpl implements SsoUserService {


    @Autowired
    private SsoUserMapper ssoUserMapper;

    @Override
    public Long save(SsoUser ssoUser) {
        int save = ssoUserMapper.save(ssoUser);
        return save == 0L ? save : ssoUser.getId();
    }

    @Override
    public int delete(Long id) {
        return ssoUserMapper.delete(id);
    }

    @Override
    public int update(SsoUser ssoUser) {
        return ssoUserMapper.update(ssoUser);
    }

    @Override
    public SsoUser get(Long id) {
        return ssoUserMapper.get(id);
    }

    @Override
    public SsoUser getByUsername(String username) {
        return ssoUserMapper.getByUsername(username);
    }
    @Override
    public SsoUser getByNickname(String username) {
        return ssoUserMapper.getByNickname(username);
    }

    @Override
    public List<SsoUser> list() {
        return ssoUserMapper.list();
    }
}
