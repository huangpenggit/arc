package com.arc.faststart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class WebFastStartApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebFastStartApplication.class, args);
    }

    //测试是否完成启动
    @RequestMapping("/info")
    public String hello() {
        return "info";
    }
}
