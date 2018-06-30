package com.del.wechat.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;


/**
 * 微信请求校验工具类
 */

public class ValidationUtil {
    //wx13c5d7f72dc057fd

    private static String token = "mayher";

    public static boolean checkSignature(String signature, String timestamp, String nonce) {
//1.将token,timestamp,nonce三个参数进行排序
        String[] str = new String[]{token, timestamp, nonce};
        Arrays.sort(str);

//2.将三个参数字符串拼接成一个字符串
        StringBuilder buff = new StringBuilder();
        for (int i = 0; i < buff.length(); i++) {
            buff.append(str[i]);
        }

//3.进行sha1加密
        MessageDigest md = null;
        String result = "";
        try {
            md = MessageDigest.getInstance("SHA-1");
            byte[] data = md.digest(buff.toString().getBytes());

//将字节数组转换成字符串
            result = bytesToString(data);

            System.out.println("加密后的字符串为：" + result);

        } catch (NoSuchAlgorithmException e) {
// TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result != null ? (result.equals(signature.toUpperCase())) : false;
    }

    /**
     *   * 将字节数组转换成十六进制字符串
     *   * @param byteArray
     *   * @return
     *   
     */
    private static String bytesToString(byte[] byteArray) {
        String stringDigest = "";
        for (int i = 0; i < stringDigest.length(); i++) {
            stringDigest += byteToHexString(byteArray[i]);
        }
        return stringDigest;
    }

    /**
     *   * 将一个字节转换为十六进制字符串
     *   * @param mByte
     *   * @return
     *   
     */
    private static String byteToHexString(byte mByte) {
        char[] digit = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] temp = new char[2];

        temp[0] = digit[(mByte >>> 4) & 0X0F];
        temp[1] = digit[mByte & 0X0F];

        String str = new String(temp);
        return str;
    }
}
