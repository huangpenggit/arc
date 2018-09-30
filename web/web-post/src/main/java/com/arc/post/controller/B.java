package com.arc.post.controller;

public abstract class B {
    private String str;

    public B() {
    }

    public B(String a) {
        System.out.println("父类已经实例化");
//        B b = new B();
        this.str = a;
        System.out.println(str);
    }

    public abstract void play();
}
