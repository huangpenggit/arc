package com.arc.util.tem;

//import org.apache.http.util.TextUtils;
import org.springframework.util.StringUtils;

/**
 * 正则 判断手机还是固定电话
 */
public class RegularUtils {
    //    private static final String REGEX = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17[013678])|(18[0,5-9]))\\d{8}$";
    private static final String REGEX = "^1[^2][0-9]\\d{8}$";

    //判断手机还是固定电话
    public static boolean isCellphone(String phone) {
        if (!StringUtils.isEmpty(phone) && phone.length() == 11) {
            return phone.matches(REGEX);
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        String str = "";
        System.out.println(str.isEmpty());
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

        System.out.println("=====================");
        System.out.println(RegularUtils.isCellphone("12271801277"));
        System.out.println(RegularUtils.isCellphone("20071801277"));
        System.out.println(RegularUtils.isCellphone("1357180127"));
        System.out.println(RegularUtils.isCellphone("135718012777"));
        System.out.println("=====================");




        System.out.println("*************************");
        System.out.println("*************************");
        System.out.println("*************************");
        System.out.println("*************************");
        System.out.println("*************************");
        String phone = "11974192462";
//        String regex = "^1[2][]0-9]\\d{8}$";
        String regex = "^1[^2][0-9]\\d{8}$";
        // "[1]"代表第1位为数字1，"[358]"代表第二位可以为3、5、8中的一个，"\\d{9}"代表后面是可以是0～9的数字，有9位。
        String regex2 = "^((13[0-9])|(14[5,7,9])|(15[^4])|(18[0-9])|(17[0,1,3,5,6,7,8]))\\d{8}$";

        if (phone!=null &&phone.length()!=0) {
            System.out.println();
        } else {
            boolean matches = phone.matches(regex);
            System.out.println("1007419246".matches(regex));
            System.out.println("111741924626".matches(regex));
            System.out.println("111741924".matches(regex));
            System.out.println();

            System.out.println("11174192462".matches(regex));
            System.out.println("12274192462".matches(regex));
            System.out.println();

            System.out.println("13374192462".matches(regex));
            System.out.println("14474192462".matches(regex));
            System.out.println("15574192462".matches(regex));
            System.out.println();

            System.out.println("16674192462".matches(regex));
            System.out.println("17774192462".matches(regex));
            System.out.println("18874192462".matches(regex));
            System.out.println();

            System.out.println("19974192462".matches(regex));

            System.out.println("00074192462".matches(regex));
            System.out.println("01174192462".matches(regex));
        }



    }
}
