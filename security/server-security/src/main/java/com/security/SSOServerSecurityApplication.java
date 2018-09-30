package com.security;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


//@EnableEurekaClient
//@EnableDiscoveryClient
@RestController
@SpringBootApplication
@MapperScan("com.security.mapper")
//@EnableWebSecurity //启用web安全
public class SSOServerSecurityApplication {

    public static void main(String[] args) {
        SpringApplication.run(SSOServerSecurityApplication.class, args);
    }


//    @RequestMapping("/")
//    public String root() {
//        return "index";
//    }

    @RequestMapping("/security")
    public String security() {
        System.out.println("  ##   security");
        return "hello world security 安全测试";
    }

    @RequestMapping("/403")
    public String error() {
        return "403";
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String get() {
        return "403";
    }


//
//    /**
//     * 在工程的启动类中,通过@EnableDiscoveryClient向服务中心注册；
//     * 并且向程序的ioc注入一个bean: restTemplate;
//     * 并通过@LoadBalanced注解表明这个restRemplate开启负载均衡的功能。
//     * @return
//     */
//    @Bean
//    @LoadBalanced
//    RestTemplate restTemplate() {
//        return new RestTemplate();
//    }
}
