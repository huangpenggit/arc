package com.arc.environment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.scheduling.annotation.EnableAsync;

@EnableAsync
//@EnableAutoConfiguration(
//        exclude = {
//                HazelcastAutoConfiguration.class,
//                DataSourceAutoConfiguration.class,
//                HibernateJpaAutoConfiguration.class
//        })
@EntityScan("com.arc.model")
//@EnableJpaRepositories(basePackages={"com.arc.model"})
//@EnableJpaRepositories(basePackages={"dao层对应的包路径"})
//扫描组件 @ComponentScan(value = "com.spriboot.controller") 配置扫描组件的路径
@SpringBootApplication
public class EnvironmentApplication {

    public static void main(String[] args) throws InterruptedException {
        SpringApplication.run(EnvironmentApplication.class, args);
    }
}
