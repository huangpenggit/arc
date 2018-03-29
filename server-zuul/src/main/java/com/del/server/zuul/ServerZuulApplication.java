package com.del.server.zuul;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

//@SpringCloudApplication//注解，之前没有提过，通过源码我们看到，它整合了@SpringBootApplication、@EnableDiscoveryClient、@EnableCircuitBreaker，主要目的还是简化配置。
@EnableZuulProxy
@EnableEurekaClient
@SpringBootApplication
public class ServerZuulApplication {

	public static void main(String[] args) {
		new SpringApplicationBuilder(ServerZuulApplication.class).web(true).run(args);
	}

/*
	@Bean
	public AccessFilter accessFilter() {
		return new AccessFilter();
	}
*/

}
