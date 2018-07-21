package com.mybatis.generator;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mybatis.generator.config.SpringConfig;

public class MybatisGeneratorMain {
	
	@SuppressWarnings("resource")
	public static void main(String[] args) throws Exception {
		ApplicationContext ac = new AnnotationConfigApplicationContext(SpringConfig.class);
		ac.getBean(BootStrap.class).start();
	}

}
