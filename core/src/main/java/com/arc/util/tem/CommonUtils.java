package com.arc.util.tem;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonUtils {

	public static final String PATTERN = "yyyy-MM-dd HH:mm:ss";

	private static final String REGEX = "1\\d{10}";

    private CommonUtils() {
    }

    /**
	 *
	 * @param date
	 * @return
	 */
	public static String dateFormat(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat(PATTERN);
		return sdf.format(date);
	}

	/**
	 *
	 * @param date
	 * @return
	 */
	public static String dateFormat(String pattern , Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		return sdf.format(date);
	}
	/**
	 *
	 * @param number
	 * @return
	 */
	public static boolean isMobilePhone(String number) {
		Pattern pattern = Pattern.compile(REGEX);
		Matcher matcher = pattern.matcher(number);
        return matcher.matches();
	}

	/**
	 * 生成带字母的随机数     指定长度
	 * @param length
	 * @return
	 */
	public static String getRandomString(String base,int length) { //length表示生成字符串的长度
		Random random = new Random();
	    StringBuilder sb = new StringBuilder();
	    for (int i = 0; i < length; i++) {
	        int number = random.nextInt(base.length());
	        sb.append(base.charAt(number));
	    }
	    return sb.toString();
	}
}
