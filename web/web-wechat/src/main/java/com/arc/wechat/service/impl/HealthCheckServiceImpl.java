/*
package com.arc.wechat.service.impl;

import com.arc.wechat.model.vo.DatabaseVo;
import com.arc.wechat.model.vo.DiskSpaceVo;
import com.arc.wechat.model.vo.HealthVo;
import com.arc.wechat.model.vo.RedisVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.sql.Connection;
import java.sql.DriverManager;

*/
/**
 * 服务器健康状态检测
 *
 * @author: yechao
 * @date: 2018/08/01
 *//*

@Slf4j
@Service
public class HealthCheckServiceImpl implements IHealthCheckService {

    //db-url
    @Value("${spring.datasource.url}")
    private String url;

    @Value("${spring.datasource.username}")
    private String username;
    @Value("${spring.datasource.password}")
    private String password;

    //db-driverName
    @Value("${spring.datasource.driver-class-name}")
    private String driver;

    public static final String MYSQL = "MYSQL";
    public static final String ORACLE = "ORACLE";
    public static final String SQLSERVER = "SQLSERVER";

    @Override
    public HealthVo check() {


        DatabaseVo databaseVo = checkDB();
        DiskSpaceVo diskSpaceVo = checkDisk();
        RedisVo redisVo = checkRedis();


        return new HealthVo(databaseVo, diskSpaceVo, redisVo);
    }

    //检查磁盘
    private DiskSpaceVo checkDisk() {
        DiskSpaceVo diskSpaceVo = new DiskSpaceVo();
        return diskSpaceVo;
    }

    //检查redis
    private RedisVo checkRedis() {
        RedisVo redisVo = new RedisVo();
        return redisVo;

    }


    //检查mysql
    public DatabaseVo checkDB() {
        DatabaseVo databaseVo = new DatabaseVo();
        String dataBaseType = getDataBaseType();
        databaseVo.setDatabase(dataBaseType);

        return databaseVo;
    }


    //判断数据库类型
    public String getDataBaseType() {
        if (url.toUpperCase().contains(MYSQL) || driver.toUpperCase().contains(MYSQL)) {
            return "MySQL";
        } else if (url.toUpperCase().contains(ORACLE) || driver.toUpperCase().contains(ORACLE)) {
            return "Oracle";
        } else if (url.toUpperCase().contains(SQLSERVER) || driver.toUpperCase().contains(SQLSERVER)) {
            return "SQLServer";
        } else {
            return "unknown";
        }
    }

    public Connection getConntection() {
        Connection connection = null;
        try {
            //通过得到字节码对象的方式加载静态代码块 从而加载注册驱动程序
            Class.forName(driver);

            //注册URL取得对数据库的连接 获取连接对象
            System.out.println(url);
            System.out.println(username);
            System.out.println(password);
            connection = DriverManager.getConnection(url, username, password);

            connection.close();
            System.out.println(connection);
        } catch (Exception e) {
            log.info("{}", e.getMessage());
        }
        System.out.println(connection);
        return connection;
    }

//    public static void main(String[] args) {
//        HealthCheckServiceImpl healthCheckService = new HealthCheckServiceImpl();
//        System.out.println(healthCheckService.getConntection());
//
//
//        Connection conntection = healthCheckService.getConntection();
//
//        System.out.println(conntection);
//        System.out.println(healthCheckService.getConntection());
//        System.out.println(healthCheckService.getConntection());
//
//    }
}
*/
