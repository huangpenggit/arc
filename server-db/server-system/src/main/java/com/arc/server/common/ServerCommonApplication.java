package com.arc.server.common;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


//@EnableFeignClients
@EnableEurekaClient
@EnableTransactionManagement
@SpringBootApplication
@MapperScan("com.del.server.common.mapper")
@RestController
public class ServerCommonApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerCommonApplication.class, args);
    }

    @RequestMapping("/info")
    public String info() {
        System.out.println("info----");
        return "info";
    }
    @RequestMapping("/actuator/info")
    public String info1() {
        System.out.println("info----");
        return "info";
    }
}
//@EnableDiscoveryClient
