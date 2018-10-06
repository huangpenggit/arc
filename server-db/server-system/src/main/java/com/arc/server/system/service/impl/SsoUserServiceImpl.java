package com.arc.server.system.service.impl;

import com.arc.model.domain.system.SsoUser;
import com.arc.server.system.mapper.SsoUserMapper;
import com.arc.server.system.service.SsoUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SsoUserServiceImpl implements SsoUserService {


    @Autowired
    private SsoUserMapper ssoUserMapper;


    @Cacheable(value = "user",key = "#user.id")//即调用该方法时，会把user.id作为key，返回值作为value放入缓存；
    @Override
    public Long save(SsoUser ssoUser) {
        int save = ssoUserMapper.save(ssoUser);
        return save == 0L ? save : ssoUser.getId();
    }

    @CacheEvict("user")//注意是否是删除了所有缓存
//    @CacheEvict(value = "user",key = "#user.id")
    @Override
    public int delete(Long id) {
        return ssoUserMapper.delete(id);
    }

    //    @CachePut(value = "user") // 与Cacheable区别就是Cacheable先看缓存如果有，直接缓存换回，CachePut则是每次都会调用并且把返回值放到缓存
    @CacheEvict("user")
    @Override
    public int update(SsoUser ssoUser) {

        return ssoUserMapper.update(ssoUser);
    }

    @Cacheable(value = "user", key = "#id")  // 注解key属性可以执行缓存对象user(可以理解为一个map)的key
    @Override
    public SsoUser get(Long id) {
        return ssoUserMapper.get(id);
    }

    @Cacheable(value = "user", key = "#user.username")
    @Override
    public SsoUser getByUsername(String username) {
        return ssoUserMapper.getByUsername(username);
    }

    //    @Cacheable(value = "user",key = "#nickname")
    @Cacheable(value = "user",key = "#user.nickname")
    @Override
    public SsoUser getByNickname(String nickname) {
        return ssoUserMapper.getByNickname(nickname);
    }

    @Cacheable("user")
    @Override
    public List<SsoUser> list() {
        return ssoUserMapper.list();
    }
}
