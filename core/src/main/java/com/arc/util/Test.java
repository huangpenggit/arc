package com.arc.util;

public class Test {
    public static void main(String[] args) {
        String str = null;
        System.out.println(str == null);
        System.out.println(str == "");
        if (str != null && str != "") {
            System.out.println("Not empty");
        } else {
            System.out.println("Empty");
        }
        System.out.println("--------------------------");
//        function1();
//        function2();
//        function3();
//        function4();


        System.out.println("###################");
        System.out.println(isEmpty(""));
        System.out.println(isEmpty(null));//true
        System.out.println("###################");

    }


    public static boolean isEmpty(String str) {
        if (str == null || !str.isEmpty()) {
//            System.out.println("Not empty");
            return true;
        } else {
//            System.out.println("Empty");
            return false;
        }
    }


    static String s = "";
    static long n = 10000000;

    //s == null || s.equals("")
    private static void function1() {
        long startTime = System.currentTimeMillis();
        for (long i = 0; i < n; i++) {
            if (s == null || s.equals(""))
                ;
        }
        long endTime = System.currentTimeMillis();
        System.out.println("[s == null || s.equals(\"\")] use time: " + (endTime - startTime) + "ms");
    }

    //s == null || s.length() <= 0
    private static void function2() {
        long startTime = System.currentTimeMillis();
        for (long i = 0; i < n; i++) {
            if (s == null || s.length() <= 0)
                ;
        }
        long endTime = System.currentTimeMillis();
        System.out.println("[s == null || s.length() <= 0] use time: " + (endTime - startTime) + "ms");
    }

    //s == null || s.isEmpty()
    private static void function3() {
        long startTime = System.currentTimeMillis();
        for (long i = 0; i < n; i++) {
            if (s == null || s.isEmpty())//since jdk1.6
                ;
        }
        long endTime = System.currentTimeMillis();
        System.out.println("[s == null || s.isEmpty()] use time: " + (endTime - startTime) + "ms");
    }

    //s == null || s == ""
    private static void function4() {
        long startTime = System.currentTimeMillis();
        for (long i = 0; i < n; i++) {
            if (s == null || s == "")
                ;
        }
        long endTime = System.currentTimeMillis();
        System.out.println("[s == null || s == \"\"] use time: " + (endTime - startTime) + "ms");
    }

}
