package com.arc.util.tem;

import lombok.extern.slf4j.Slf4j;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密工具类
 *
 * @author dengqianyong
 */
@Slf4j
public class MD5Utils {


    public static String encrypt(String text) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(text.getBytes());
            return new BigInteger(1, md.digest()).toString(16);
        } catch (NoSuchAlgorithmException e) {
            log.error("MD5Utils is log {},{}", Thread.currentThread(), e.getMessage());
        }
        return "";

    }

    public static String encrypt16(String text) {
        String md5 = encrypt(text);
        return md5.substring(8, 24);
    }

    /**
     * @param source
     * @return
     */
    public static String getMD5Str(String source) {
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            byte[] byteArray = messageDigest.digest(source.getBytes("UTF-8"));
            StringBuffer md5StrBuff = new StringBuffer();
            for (int i = 0; i < byteArray.length; i++) {
                if (Integer.toHexString(0xFF & byteArray[i]).length() == 1) {
                    md5StrBuff.append("0").append(Integer.toHexString(0xFF & byteArray[i]));
                } else {
                    md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));
                }
            }
            return md5StrBuff.toString();
        } catch (Exception e) {
            log.error(e.getMessage());
            return null;
        }
    }
}
