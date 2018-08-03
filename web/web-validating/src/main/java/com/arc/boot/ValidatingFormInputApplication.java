package com.arc.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@EnableAsync
@SpringBootApplication
public class ValidatingFormInputApplication {

    public static void main(String[] args) {
        SpringApplication.run(ValidatingFormInputApplication.class, args);
    }
}
