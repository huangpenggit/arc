package com.client.back.thymeleaf.test.java8;

public class SubClass /*extends MyClass*/ implements MyFun, MyInterface {

    @Override
    public String getName() {
        return MyInterface.super.getName();
    }

}
