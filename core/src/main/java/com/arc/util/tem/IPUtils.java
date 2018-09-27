package com.arc.util.tem;

import javax.servlet.http.HttpServletRequest;
import java.net.Socket;

/**
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
public final class IPUtils {
    private static final String UNKNOWN = "unknown";
    private static final String IP = "127.0.0.1";
//    Socket socket = new Socket(ip, 6667);

    public static String getRemoteHost(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip.equals("0:0:0:0:0:0:0:1") ? IP : ip;
    }

}
