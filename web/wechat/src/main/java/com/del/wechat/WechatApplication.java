package com.del.wechat;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



//@EnableDiscoveryClient//向服务中心注册并且向程序的ioc注入一个bean: restTemplate;并通过@LoadBalanced注解表明这个restRemplate开启负载均衡的功能。
//@EnableEurekaClient
//@EnableFeignClients


//@EnableSwagger2Doc // 开启 Swagger

@ServletComponentScan
@MapperScan("com.del.wechat.mapper")
@RestController
@SpringBootApplication
public class WechatApplication {

    public static void main(String[] args) {
        SpringApplication.run(WechatApplication.class, args);
    }

//
//    @Bean
//    @LoadBalanced
//    RestTemplate restTemplate() {
//        return new RestTemplate();
//    }

    @RequestMapping("/info")
    public String hello() {
        return "HELLO";
    }
}
