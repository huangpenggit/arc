package com.arc.util.tem;

/**
 * 字符串大小写转换工具类
 *
 * @author dengqianyong
 *
 */
public final class StringCaseUtils {

    public StringCaseUtils() {
    }

    /**
	 * 首字母大写
	 *
	 * @param str
	 * @return
	 */
	public static String upperCaseFirstWord(String str) {
		char[] ch = str.toCharArray();
		if (ch[0] >= 'a' && ch[0] <= 'z') {
			ch[0] = (char) (ch[0] - 32);
		}
		return new String(ch);
	}

	/**
	 * 首字母小写
	 *
	 * @param str
	 * @return
	 */
	public static String lowerCaseFirstWord(String str) {
		char[] ch = str.toCharArray();
		if (ch[0] >= 'A' && ch[0] <= 'Z') {
			ch[0] = (char) (ch[0] + 32);
		}
		return new String(ch);
	}

}
