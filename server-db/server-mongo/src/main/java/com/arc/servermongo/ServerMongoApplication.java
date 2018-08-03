package com.arc.servermongo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.config.EnableMongoAuditing;

@MapperScan("com.del.servermongo.mapper")
@SpringBootApplication
@EnableMongoAuditing

public class ServerMongoApplication {

    public static void main(String[] args) {
        SpringApplication.run(ServerMongoApplication.class, args);
    }
}
