package com.arc.mongo.task;


import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;

@Configuration
@EnableScheduling
public class CountTask {

    //    @Scheduled("0")
    public void main(String[] args) {

    }


//    创建管理用户
//    rabbitmqctl.bat add_user csp_admin csp_admin
//    设置管理员
//    rabbitmqctl.bat set_user_tags    csp_admin administrator
//    设置权限
//    rabbitmqctl.bat set_permissions -p / csp_admin ".*" ".*" ".*"
//    rabbitmq-server start
//    net stop RabbitMQ && net start RabbitMQ
//
//    https://blog.csdn.net/eastsea/article/details/41941193
 }
