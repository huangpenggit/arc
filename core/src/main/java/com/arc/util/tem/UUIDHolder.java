package com.arc.util.tem;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.util.UUID;

/**
 * 当前请求的唯一标识，用于区别请求
 *
 * @author dengqianyong@besttone.com.cn
 */
@Slf4j
public final class UUIDHolder {

    private static ThreadLocal<String> UUID_THREAD_HOLDER = new ThreadLocal<>();

    /**
     * 得到一个唯一标识
     *
     * @return
     */
    public static String get() {
        String uid = UUID_THREAD_HOLDER.get();
        if (!StringUtils.isEmpty(uid)) return uid;
        uid = create();
        return uid;
    }

    /**
     * 设置一个唯一标识
     *
     * @param uid
     */
    public static void set(String uid) {
        UUID_THREAD_HOLDER.set(uid);
    }

    /**
     * 移除唯一标识
     */
    public static void remove() {
        UUID_THREAD_HOLDER.remove();
    }

    /**
     * 创建标识
     *
     * @return
     */
    private static String create() {
        String uid = removeSeparator(UUID.randomUUID().toString());
        set(uid);
        return uid;
    }

    private static String removeSeparator(String uuid) {
        String[] arr = uuid.split("-");
        StringBuilder sb = new StringBuilder();
        for (String s : arr) {
            sb.append(s);
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String uuid = UUID.randomUUID().toString();
        log.debug(uuid);
        log.debug(removeSeparator(uuid));
    }

}
