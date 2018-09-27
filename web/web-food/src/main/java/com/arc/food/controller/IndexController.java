package com.arc.food.controller;

public class IndexController {


    public static void main(String[] args) {
        //mb4  mb3
        // 1B（byte，字节）= 8 bit
        //5.0版本以上，varchar(50)，指的是50字符，无论存放的是数字、字母还是UTF8汉字（每个汉字3字节），都可以存放50个
        //位 字节  字   双字
        //        计算机中的数据都是以0和1来表示的，其中一个0或者一个1称之为一位，8位称为一个字节（Byte），两个字节称为一个字（Word）(双字节)，4个字节称为双字（Dword）(四字节)。
        System.out.println("表试试可以放多少汉字无论存放的是数字如果存放如果存放如果存放如果存放如果存放如果存放如果存放如果存放".length());
    }
}
