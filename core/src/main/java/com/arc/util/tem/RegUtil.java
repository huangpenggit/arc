package com.arc.util.tem;
/**
 * 正则 判断手机还是固定电话
 */
public class RegUtil {

    /*  private static final String REGEX = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
    //    private static final String REGEX = "^1[3|5|8]\\d{8}$";
    */
    private static final String REGEX = "^1[^2][0-9]\\d{8}$";

    //判断手机还是固定电话
    public static boolean isCellphone(String phone) {
        if (phone!=null&& phone.length() == 11) {
            return phone.matches(REGEX);
        } else {
            return false;
        }
    }

/*   public static void main(String[] args) {
        System.out.println(RegularUtils.isCellphone("11171801277"));
        System.out.println(RegularUtils.isCellphone("13371801277"));
        System.out.println();

        System.out.println(RegularUtils.isCellphone("14471801277"));
        System.out.println(RegularUtils.isCellphone("15571801277"));
        System.out.println(RegularUtils.isCellphone("16671801277"));
        System.out.println();

        System.out.println(RegularUtils.isCellphone("17771801277"));
        System.out.println(RegularUtils.isCellphone("18871801277"));
        System.out.println(RegularUtils.isCellphone("19971801277"));
        System.out.println();

        System.out.println(RegularUtils.isCellphone("10071801277"));
        System.out.println();

        System.out.println("=====================");// 预计 false
       System.out.println(RegularUtils.isCellphone("20071801277"));
       System.out.println(RegularUtils.isCellphone("12271801277"));
        System.out.println(RegularUtils.isCellphone("1357180127"));
       System.out.println();

       System.out.println(RegularUtils.isCellphone("135718012777"));
        System.out.println(RegularUtils.isCellphone(""));
        System.out.println(RegularUtils.isCellphone("  "));
        System.out.println("=====================");
    }*/
}
