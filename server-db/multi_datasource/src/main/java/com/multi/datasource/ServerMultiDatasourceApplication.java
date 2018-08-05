package com.multi.datasource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {
        DataSourceAutoConfiguration.class
})
public class ServerMultiDatasourceApplication {

	public static void main(String[] args) {
		SpringApplication.run(ServerMultiDatasourceApplication.class, args);
	}






}
