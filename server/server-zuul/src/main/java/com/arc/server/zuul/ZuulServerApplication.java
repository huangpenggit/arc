package com.arc.server.zuul;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

//@SpringCloudApplication//注解，之前没有提过，通过源码我们看到，
// 它整合了@SpringBootApplication、@EnableDiscoveryClient、@EnableCircuitBreaker，主要目的还是简化配置。
@EnableZuulProxy
@EnableEurekaClient
@SpringBootApplication
@EnableDiscoveryClient
public class ZuulServerApplication {

	public static void main(String[] args) {
        SpringApplication.run(ZuulServerApplication.class, args);
//        new SpringApplicationBuilder(ServerZuulApplication.class).web(true).run(args);
	}

/*
	@Bean
	public AccessFilter accessFilter() {
		return new AccessFilter();
	}
*/

}
