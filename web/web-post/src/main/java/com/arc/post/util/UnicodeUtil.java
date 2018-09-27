package com.arc.post.util;

import java.io.InputStream;

/**
 * unicode编码的字符串转换为普通字符串
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
public class UnicodeUtil {


    /**
     * 一个包含unicode编码的字符串转换为普通字符串
     *
     * @param stingWhitUnicode
     * @return
     */
    public static String ascii2native(String stingWhitUnicode) {
        String[] asciis = stingWhitUnicode.split("\\\\u");
        String nativeValue = asciis[0];
        try {
            for (int i = 1; i < asciis.length; i++) {
                String code = asciis[i];
                nativeValue += (char) Integer.parseInt(code.substring(0, 4), 16);
                if (code.length() > 4) {
                    nativeValue += code.substring(4, code.length());
                }
            }
        } catch (NumberFormatException e) {
            return stingWhitUnicode;
        }
        return nativeValue;
    }

    /**
     * 一个字符串仅仅是unicode编码的字符串转换为普通字符串
     *
     * @param unicodeString
     * @return
     */
    public static String decodeUnicode(String unicodeString) {
        int start = 0;
        int end = 0;
        final StringBuffer buffer = new StringBuffer();
        while (start > -1) {
            end = unicodeString.indexOf("\\u", start + 2);
            String charStr = "";
            if (end == -1) {
                charStr = unicodeString.substring(start + 2, unicodeString.length());
            } else {
                charStr = unicodeString.substring(start + 2, end);
            }
            char letter = (char) Integer.parseInt(charStr, 16); // 16进制parse整形字符串。
            buffer.append(new Character(letter).toString());
            start = end;
        }
        return buffer.toString();
    }


    //测试的
    private static void getResponseTextV2(InputStream netIps, StringBuilder builder) throws Exception {
        byte[] buffer = new byte[1024];
        int len;
        while ((len = netIps.read(buffer)) != -1) {
            builder.append(new String(buffer, 0, len, "UTF-8"));
        }
    }

}
