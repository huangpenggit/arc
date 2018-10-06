package com.arc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@EnableCaching//开启Spring data 的缓存
@SpringBootApplication
public class ServerPostApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerPostApplication.class, args);
    }


}
