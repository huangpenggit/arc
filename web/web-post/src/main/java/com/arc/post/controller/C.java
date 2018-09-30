package com.arc.post.controller;

public class C extends B {
    public C(String c) {
        super(c);
        System.out.println("子类已经被实例化");
    }

    public C() {

    }

    @Override
    public void play() {
        System.out.println("我实现了父类的方法");
    }

    public static void main(String[] args) {
//        Class<C> cClass = C.class;

//        Cla
        try {
            C c1 = C.class.newInstance();
            System.out.println(c1);
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        B c = new C("c");
    }


}
