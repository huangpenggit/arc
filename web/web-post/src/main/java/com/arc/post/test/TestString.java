package com.arc.post.test;

public class TestString {


    public static void main(String[] args) {

        System.out.println("5000250CB508C0".length());//14
        System.out.println("340050000B437500010002130000D948".length());//32
        System.out.println("2C00FFFFEEEEB508E900E8412A43".length());//28

        String str = "340050000B437500010002130000D948";
        int index = str.indexOf("500");
        System.out.println(index);
        System.out.println("340050000B437500010002130000D948".substring(4, 18));//11 50001D0CB508C0    ------------ 50000B43750001
        System.out.println("340050000B437500010002130000D948".substring(4, 18).length());

        System.out.println("2C00FFFFEEEEB508E900E8412A43".substring(4, 18));//1 50001CCBC508C0  --------------- FFFFEEEEB508E9
        System.out.println("2C00FFFFEEEEB508E900E8412A43".substring(4, 18).length());
    }

}
