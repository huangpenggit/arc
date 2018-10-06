package com.arc.redis.service;

import java.util.List;

/**
 * redis工具
 *
 * @author: yechao
 * @date: 2018/10/6 21:47
 * @description:
 */
public interface RedisService {

    String get(String key);

    boolean set(String key, String value);

    boolean expire(String key, long expire);

    long lpush(String key, Object obj);

    long rpush(String key, Object obj);

    String lpop(String key);

    <T> boolean setList(String key, List<T> list);

    <T> List<T> getList(String key, Class<T> clz);

}
