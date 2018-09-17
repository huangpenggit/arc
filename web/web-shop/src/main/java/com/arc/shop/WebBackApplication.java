package com.arc.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.hazelcast.HazelcastAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@EnableAutoConfiguration(
        exclude = {
                HazelcastAutoConfiguration.class,
                DataSourceAutoConfiguration.class,
                HibernateJpaAutoConfiguration.class
        })
@SpringBootApplication
@RestController
public class WebBackApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebBackApplication.class, args);
    }

    @RequestMapping("/info")
    public Object test() {
        return new Date();
    }


}
