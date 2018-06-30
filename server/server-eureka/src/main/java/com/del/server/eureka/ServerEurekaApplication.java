package com.del.server.eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer//springcloud 的注册中心

public class ServerEurekaApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerEurekaApplication.class, args);
    }
//下面两行代码都可以用来启动
// SpringApplication.run(ServerApplication.class, args);
//new SpringApplicationBuilder(Application.class).web(true).run(args);
}
