package com.arc.server.system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@EnableEurekaClient
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
