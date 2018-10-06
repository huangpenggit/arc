package com.arc.redis.service.impl;

import com.arc.model.domain.common.User;
import com.arc.redis.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class UserServiceImpl implements UserService {

//    @Autowired
//    private RedisTemplate redisTemplate;

//    @Autowired
//    private RedisService redisService;

    @Autowired
    private RedisTemplate<Object, Object> redisTemplate;


    @Override
    public Long save(User user) {
        //缓存，实际使用中应该是等数据入库成功后再缓存
//        redisService.set(user.getId().toString(), JsonUtilByGson.toJson(user));
        redisTemplate.opsForValue().set(user.getId()+"", user);

        User cacheUser = (User) redisTemplate.opsForValue().get(user.getId()+"");
        log.debug("cacheUser={}",cacheUser);
        System.out.println(cacheUser);
        System.out.println(cacheUser.getId());
        System.out.println(cacheUser.toString());
        return user.getId();
    }

    @Override
    public int delete(Long id) {
        //delete
//        redisTemplate.delete(redisService.get(id.toString()));
        return 0;
    }

    @Override
    public int update(User user) {
        return 0;
    }

    @Override
    public User get(Long id) {
        User user = new User();
        return user;
    }

    @Override
    public List<User> list() {
        ArrayList<User> users = new ArrayList<>();
        User user = new User();
        users.add(user);
        return users;
    }
}
