package com.arc.faststart.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * String 工具类
 */
public class StringTools {

    public static String replaceBlank(String str) {
        String dest = "";
        if (str!=null) {
            Pattern p = Pattern.compile("\\s*|\t|\r|\n");
            Matcher m = p.matcher(str);
            dest = m.replaceAll("");
        }
        return dest;
    }
    public static void main(String[] args) {
        System.out.println(StringTools.replaceBlank("just do it!"));
    }
	/*-----------------------------------

	笨方法：String s = "你要去除的字符串";

	        1.去除空格：s = s.replace('\\s','');

	        2.去除回车：s = s.replace('\n','');

	这样也可以把空格和回车去掉，其他也可以照这样做。

	注：\n 回车(\u000a)
	\t 水平制表符(\u0009)
	\s 空格(\u0008)
	\r 换行(\u000d)*/
}
