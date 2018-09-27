package com.arc.util.tem;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

//资映射配置文件
@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "hla")
public class Resources {

    //http://42.159.88.244:4000/api/v6/data/auth_token/get
    private String accessTokenUrl;

    private String host;

    private String port;

}
