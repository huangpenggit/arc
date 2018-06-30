package com.del.server.common;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;


//@EnableDiscoveryClient
//@EnableFeignClients
@EnableTransactionManagement
@SpringBootApplication
@MapperScan("com.del.server.common.mapper")
@Controller
public class ServerCommonApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServerCommonApplication.class, args);
	}

	@RequestMapping("/info")
	public String info() {
		System.out.println("info----");
		return "info";
	}
}
