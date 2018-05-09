package com.client.simple;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication(exclude= {DataSourceAutoConfiguration.class})
@SpringBootApplication
@MapperScan("com.client.simple.mapper")
public class SimpleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SimpleApplication.class, args);
	}
}
