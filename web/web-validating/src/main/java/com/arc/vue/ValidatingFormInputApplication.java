package com.arc.vue;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@EnableAsync
@SpringBootApplication
public class ValidatingFormInputApplication {

    public static void main(String[] args) throws InterruptedException {
//        SpringApplication.run(ValidatingFormInputApplication.class, args);
        //
        Long start = System.currentTimeMillis();
        Thread.sleep(2000);
        System.out.println(System.currentTimeMillis() - start);
        System.out.println(System.currentTimeMillis() - start);
        System.out.println((System.currentTimeMillis() - start) > 20000);
        System.out.println(2/ 50000);
        System.out.println(50002% 50000);

    }
}
