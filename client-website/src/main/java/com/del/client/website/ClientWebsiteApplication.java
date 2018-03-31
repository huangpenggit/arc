package com.del.client.website;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication
@EnableWebMvc
@MapperScan("com.del.client.website.mapper")
public class ClientWebsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClientWebsiteApplication.class, args);
	}
}
