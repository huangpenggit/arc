package com.arc.server.system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



//@EnableEurekaClient
//@EnableTransactionManagement // 开启事务管理
@EnableCaching
@EnableAsync
@RestController
@SpringBootApplication
@MapperScan("com.arc.server.system.mapper")
public class ServerSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerSystemApplication.class, args);
    }


    @Value("${server.port}")
    String port;

    @RequestMapping("/hi")
    public String home(@RequestParam String name) {
        return "hi "+name+",i am from port:" +port;
    }

}
