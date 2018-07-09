package com.client.back.thymeleaf.java8;

@FunctionalInterface
public interface MyPredicate<T> {

	public boolean test(T t);
	
}
