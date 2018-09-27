package com.arc.post.hudao.dto;

import lombok.extern.slf4j.Slf4j;

import java.net.InetAddress;

/**
 * 获取本机ii 名称
 */
@Slf4j
public class HostUtil {

    /**
     * 获取本机ip
     */
    public static String getHostAddress() {
        try {
            return InetAddress.getLocalHost().getHostAddress();
        } catch (Exception e) {
            log.error("获取本机ip发生异常，原因{}", e.getMessage());
        }
        return "0.0.0.0";
    }

    /**
     * 获取本机计算机名称
     */
    public static String getHostName() {
        try {
            return InetAddress.getLocalHost().getHostName();
        } catch (Exception e) {
            log.error("获取本机ip发生异常，原因{}", e.getMessage());
        }
        return "未知名称";
    }

    public static String getHostNameAtAddress() {
       return getHostName() + "@" + getHostAddress();
    }

//    public static void main(String[] args) {
//        System.out.println(getHostAddress());
//        System.out.println(getHostName());
//    }
}
