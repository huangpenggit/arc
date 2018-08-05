package com.arc.wechat.config;

//import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;

@Configuration
public class DataSourceConfig {

    @Value("${master.datasource.url}")
    private String url1;

    @Value("${master.datasource.username}")
    private String user1;

    @Value("${master.datasource.password}")
    private String password1;

    @Value("${master.datasource.driverClassName}")
    private String driverClass1;


    @Value("${cluster.datasource.url}")
    private String url2;

    @Value("${cluster.datasource.username}")
    private String user2;

    @Value("${cluster.datasource.password}")
    private String password2;

    @Value("${cluster.datasource.driverClassName}")
    private String driverClass2;






    @Bean(name = "dataSourceOne")
    @Primary
//    @ConfigurationProperties(prefix = "master") // application.properteis中对应属性的前缀
    public DataSource dbOneDataSource() {
//        return DataSourceBuilder.create().build();
            DruidDataSource dataSource = new DruidDataSource();
            dataSource.setDriverClassName(driverClass1);
            dataSource.setUrl(url1);
            dataSource.setUsername(user1);
            dataSource.setPassword(password1);
            return dataSource;
    }

    @Bean(name = "dataSourceTwo")
    public DataSource dataSourceTwo() {
            DruidDataSource dataSource = new DruidDataSource();
            dataSource.setDriverClassName(driverClass2);
            dataSource.setUrl(url2);
            dataSource.setUsername(user2);
            dataSource.setPassword(password2);
            return dataSource;
    }




//    @Bean(name = "dataSourceTwo")
//    @ConfigurationProperties(prefix = "cluster") // application.properteis中对应属性的前缀
//    public DataSource dbTwoDataSource() {
//        return DataSourceBuilder.create().build();
//    }
}
