package com.arc.es.test;

public class Son extends Father {
    public Integer getLen() {
        return new Integer(5);
    }

    public static void main(String[] args) {
        System.out.println(new Father().getLen()+"."+new Son().getLen());
    }
}
