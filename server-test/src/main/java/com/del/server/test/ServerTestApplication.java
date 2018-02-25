package com.del.server.test;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@EnableEurekaClient //表明自己是一个eurekaclient.
//@EnableDiscoveryClient
@EnableFeignClients
@SpringBootApplication
@Controller
public class ServerTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServerTestApplication.class, args);
	}

	@Value("${server.port}")
	String port;

	@RequestMapping("/test")
	@ResponseBody
	public String home(@RequestParam String name) {
		return "  URL--test   "+",i am from port-- " +port;
	}}
