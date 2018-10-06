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

        //String key=null;//类名称+方法名称+方法参数，中间用冒号隔开

        String key = getKey(user.getId().toString());

        log.debug("key={}", key);
        System.out.println("##########");
        System.out.println(key);
        System.out.println("---------------------");
        System.out.println(key.toString());
        System.out.println(key.toString());
        System.out.println("##########");
        redisTemplate.opsForValue().set(key.toString(), user);
        User cacheUser = (User) redisTemplate.opsForValue().get(key.toString());
        log.debug("cacheUser={}", cacheUser);
        System.out.println(cacheUser);
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
        User user = (User) redisTemplate.opsForValue().get(getKey(id.toString()));
        if (user == null) {
            //实际应该查询数据库
            user = new User();
        }
        return user;
    }

    @Override
    public List<User> list() {
        ArrayList<User> users = new ArrayList<>();
        User user = new User();
        users.add(user);
        return users;
    }

    /**
     * @param str
     * @return
     */
    public static String getKey(String str) {
        str = str == null ? "" : str;
        StringBuilder key = new StringBuilder();
        key.append(Thread.currentThread().getStackTrace()[2].getClassName()).append(":").append("@").append(str);
        System.out.println("key=" + key);
        return key.toString();
    }

    public static void main(String[] args) {
        System.out.println("getClassName=" + Thread.currentThread().getStackTrace()[1].getClassName());
        System.out.println("getMethodName=" + Thread.currentThread().getStackTrace()[1].getMethodName());
        System.out.println("==========================");

    }
}
