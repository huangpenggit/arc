package com.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
//@MapperScan("com.security.mapper")
@Controller
//@EnableWebSecurity //启用web安全
public class ServerSecurityApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerSecurityApplication.class, args);
    }

    @RequestMapping("/security")
    @ResponseBody
    public String security() {
        System.out.println("  ##   security");
        return "hello world security 安全测试";
    }
}
