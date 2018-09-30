package com.arc.vue;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//@EnableAutoConfiguration(
//        exclude = {
//                HazelcastAutoConfiguration.class,
//                DataSourceAutoConfiguration.class,
//                HibernateJpaAutoConfiguration.class
//        })
@MapperScan("com.arc.vue.mapper")
@EnableAsync
@SpringBootApplication
@RestController
public class VueApplication {

    public static void main(String[] args) throws InterruptedException {
        SpringApplication.run(VueApplication.class, args);
    }

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public Object list() {
        return "success";
    }

}
