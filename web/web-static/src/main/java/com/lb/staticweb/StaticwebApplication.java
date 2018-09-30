package com.lb.staticweb;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication//SpringBootApplication项目
@EnableTransactionManagement//开启事物
@MapperScan("com.lb.staticweb.mapper")//mapper包扫描
@RestController
public class StaticwebApplication {

    public static void main(String[] args) {
        SpringApplication.run(StaticwebApplication.class, args);
    }

    @RequestMapping(value = "/call", method = RequestMethod.GET)
    public String call() {
        return "<h1>项目已经正常启动，访问正常！</><br><a href=\"http://localhost:8087/\">跳转首页</a>";
    }
}
