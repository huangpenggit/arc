package com.arc.server.eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer//springcloud 的注册中心
public class EurekaServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(EurekaServerApplication.class, args);
    }
//下面两行代码都可以用来启动
// SpringApplication.run(ServerApplication.class, args);
//new SpringApplicationBuilder(Application.class).web(true).run(args);
}

//eureka是一个高可用的组件，它没有后端缓存，每一个实例注册之后需要向注册中心发送心跳（因此可以在内存中完成），在默认情况下erureka server也是一个eureka client ,必须要指定一个 server。eureka server的配置文件appication.yml：
//启动完成
//http://localhost:8761
//No application available 没有服务被发现 ……^_^
//        因为没有注册服务当然不可能有服务被发现了。


