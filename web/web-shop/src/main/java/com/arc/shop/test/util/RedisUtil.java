//package com.rongyi.activity.client.util;
//
//import net.sf.json.JSONArray;
//import net.sf.json.JSONObject;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.data.redis.core.ValueOperations;
//
//import java.io.Serializable;
//import java.util.Map;
//import java.util.Set;
//import java.util.concurrent.TimeUnit;
//
///**
// * redis cache 工具类
// *
// */
//public final class RedisUtil {
//    private RedisTemplate<Serializable, Object> redisTemplate;
//
//    /**
//     * 批量删除对应的value
//     *
//     * @param keys
//     */
//    public void remove(String[] keys) {
//        for (String key : keys) {
//            remove(key);
//        }
//    }
//
//    /**
//     * 批量删除key
//     *
//     * @param pattern
//     */
//    public void removePattern(String pattern) {
//        Set<Serializable> keys = redisTemplate.keys(pattern);
//        if (keys.size() > 0)
//            redisTemplate.delete(keys);
//    }
//
//    /**
//     * 获取所有的key
//     *
//     * @param pattern
//     */
//    public Set<Serializable> keys(String pattern) {
//        return redisTemplate.keys(pattern);
//    }
//
//    /**
//     * 删除对应的value
//     *
//     * @param key
//     */
//    public void remove(String key) {
//        if (exists(key)) {
//            redisTemplate.delete(key);
//        }
//    }
//
//    /**
//     * 判断缓存中是否有对应的value
//     *
//     * @param key
//     * @return
//     */
//    public boolean exists(String key) {
//        return redisTemplate.hasKey(key);
//    }
//    /**
//     * 读取缓存
//     *
//     * @param key
//     * @return
//     */
//    public String getToStr(String key){
//        Object result = null;
//        ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//        result = operations.get(key);
//        return (String) result;
//    }
//    /**
//     * 读取缓存
//     *
//     * @param key
//     * @return
//     */
//    public Map<String, Object> getToMap(String key) {
//        Object result = null;
//        ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//        result = operations.get(key);
//        return jsonToMap(JSONObject.fromObject(result));
//    }
//
//    /**
//     * 读取缓存
//     *
//     * @param key
//     * @return
//     */
//    public JSONObject getToJson(String key) {
//        Object result = null;
//        ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//        result = operations.get(key);
//        return JSONObject.fromObject(result);
//    }
//    /**
//     * 读取缓存
//     *
//     * @param key
//     * @return
//     */
//    public JSONArray getToJsonArray(String key){
//        Object result = null;
//        ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//        result = operations.get(key);
//        return JSONArray.fromObject(result);
//    }
//    /**
//     * json string 转换为 map 对象
//     * @param jsonObj
//     * @return
//     */
//    @SuppressWarnings("unchecked")
//    public Map<String, Object> jsonToMap(Object jsonObj) {
//        JSONObject jsonObject = JSONObject.fromObject(jsonObj);
//        Map<String, Object> map = (Map<String, Object>) jsonObject;
//        return map;
//    }
//
//    /**
//     * 写入缓存
//     *
//     * @param key
//     * @param value
//     * @return
//     */
//    public boolean set(String key, Object value) {
//        boolean result = false;
//        try {
//            ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//            operations.set(key, value);
//            result = true;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
//
//    /**
//     * 添加key value 并且设置存活时间
//     *
//     * @param key
//     * @param value
//     * @param expireTime
//     *            单位秒
//     */
//    public boolean set(String key, Object value, Long expireTime) {
//        boolean result = false;
//        try {
//            ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
//            operations.set(key, value);
//            redisTemplate.expire(key, expireTime, TimeUnit.SECONDS);
//            result = true;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
//
//    public void setRedisTemplate(RedisTemplate<Serializable, Object> redisTemplate) {
//        this.redisTemplate = redisTemplate;
//    }
//}