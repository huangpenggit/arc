package com.arc.post.util;

import lombok.extern.slf4j.Slf4j;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密工具类
 * 工具类前部分时做加密用
 * 工具类的后半部分为容易网 俞志坚提供
 * 目的加密参数去做接口调用时的校验
 *
 * @author 叶超
 */
@Slf4j
public class MD5Utils {

    public MD5Utils() {
    }

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

    public static String encrypt32(String str) {
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
        } catch (NoSuchAlgorithmException e) {
            System.out.println("NoSuchAlgorithmException caught!");
            System.exit(-1);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        byte[] byteArray = messageDigest.digest();

        StringBuffer md5StrBuff = new StringBuffer();

        for (int i = 0; i < byteArray.length; i++) {
            if (Integer.toHexString(0xFF & byteArray[i]).length() == 1)
                md5StrBuff.append("0").append(Integer.toHexString(0xFF & byteArray[i]));
            else
                md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));
        }
        return md5StrBuff.toString();
    }


    public static String encrypt16(String text) {
        String md5 = encrypt(text);
        return md5.substring(8, 24);
    }

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


/*
    Copyright(C),上海容易网电子商务有限公司
    Author:俞志坚
    Description:
    time:2015/9/17
    History:变更记录
     <author>           <time>             <version>        <desc>
    俞志坚             2015/9/17 1.0创建文件
*/

    // 全局数组
    private final static String[] strDigits = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    // 返回形式为数字跟字符串
    private static String byteToArrayString(byte bByte) {
        int iRet = bByte;
        // System.out.println("iRet="+iRet);
        if (iRet < 0) {
            iRet += 256;
        }
        int iD1 = iRet / 16;
        int iD2 = iRet % 16;
        return strDigits[iD1] + strDigits[iD2];
    }

    // 返回形式只为数字
    private static String byteToNum(byte bByte) {
        int iRet = bByte;
        System.out.println("iRet1=" + iRet);
        if (iRet < 0) {
            iRet += 256;
        }
        return String.valueOf(iRet);
    }

    // 转换字节数组为16进制字串
    private static String byteToString(byte[] bByte) {
        StringBuffer sBuffer = new StringBuffer();
        for (int i = 0; i < bByte.length; i++) {
            sBuffer.append(byteToArrayString(bByte[i]));
        }
        return sBuffer.toString();
    }

    public static String getMD5Code(String strObj) {
        String resultString = null;
        try {
            resultString = new String(strObj);
            MessageDigest md = MessageDigest.getInstance("MD5");
            // md.digest() 该函数返回值为存放哈希值结果的byte数组
            resultString = byteToString(md.digest(strObj.getBytes("UTF-8")));
        } catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultString;
    }

    /**
     * 利用MD5进行加密
     *
     * @param str 待加密的字符串
     * @return 加密后的字符串
     */
    public static String EncoderByMd5(String str) {
        String re = null;
        byte encrypt[];
        try {
            byte[] tem = str.getBytes();
            MessageDigest md5 = MessageDigest.getInstance("md5");
            md5.reset();
            md5.update(tem);
            encrypt = md5.digest();
            StringBuilder sb = new StringBuilder();
            for (byte t : encrypt) {
                String s = Integer.toHexString(t & 0xFF);
                if (s.length() == 1) {
                    s = "0" + s;
                }
                sb.append(s);
            }
            re = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return re;
    }

    //测试
    public static void main(String[] args) {
        MD5Utils getMD5 = new MD5Utils();
        System.out.println(getMD5.getMD5Code("yuzhijian"));
    }
}
