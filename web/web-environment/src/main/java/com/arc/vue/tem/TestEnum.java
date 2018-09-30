package com.arc.vue.tem;

public class TestEnum {

    public static void main(String[] args) {

        e1();
        e2();
        e3();
    }

    public static void e1() {
        String s = "OK";
        switch (s) {
            case "OP":
                System.out.println("OP");
                break;
            case "OK":
                System.out.println("OK");
                break;
            default:
                System.out.println("没匹配");
                break;
        }
    }

    public static void e2() {
        int a = 123456789;
        switch (a) {
            case 123456789:
                System.out.println(a);
                break;
            case 1:
                System.out.println("1L");
                break;
            default:
                System.out.println("没匹配");
                break;
        }
    }

    public static void e3() {
        char ch = 'a';
        switch (ch) {
            case 'b':
                System.out.println('b');
                break;
            case 'a':
                System.out.println(ch);
                break;
            default:
                System.out.println("没匹配");
                break;
        }
    }

}
