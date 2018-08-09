package com.arc.express;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@EnableAutoConfiguration(
//        exclude = {
//                HazelcastAutoConfiguration.class,
//                DataSourceAutoConfiguration.class,
//                HibernateJpaAutoConfiguration.class
//        })
@SpringBootApplication
public class WebExpressApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebExpressApplication.class, args);
    }
}
