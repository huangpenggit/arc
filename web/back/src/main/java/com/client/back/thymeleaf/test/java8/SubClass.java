package com.client.back.thymeleaf.test.java8;

public class SubClass /*extends MyClass*/ implements MyFun, com.atguigu.java8.MyInterface {

	@Override
	public String getName() {
		return com.atguigu.java8.MyInterface.super.getName();
	}

}
