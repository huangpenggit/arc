package cn.com.besttone.fms.mybatis.generator;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import cn.com.besttone.fms.mybatis.generator.config.SpringConfig;

public class Main {
	
	@SuppressWarnings("resource")
	public static void main(String[] args) throws Exception {
		ApplicationContext ac = new AnnotationConfigApplicationContext(SpringConfig.class);
		ac.getBean(Bootstrap.class).start();
	}

}
