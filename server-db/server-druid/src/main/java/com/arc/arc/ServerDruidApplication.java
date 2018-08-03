package com.arc.arc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
@MapperScan("com.del.arc.mapper")
public class ServerDruidApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServerDruidApplication.class, args);
	}
}
