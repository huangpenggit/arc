/*
package com.del.client.website;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@Configuration
class WebMvcConfig extends WebMvcConfigurerAdapter {

    //https://www.2cto.com/kf/201601/485530.html
    //优先级
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");

        //将所有/static/** 访问都映射到classpath:/static/ 目录下
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
        registry.addResourceHandler("/**").addResourceLocations("classpath:/templates");
    }

//    解释
//    其实官方解释没有提及一点，就是不能使用@EnableWebMvc，当然如果Spring Boot在classpath里看到有 spring webmvc 也会自动添加@EnableWebMvc (http://spring.io/guides/gs/rest-service/)
//
//            如果@EnableWebMvc了，那么就会自动覆盖了官方给出的/static, /public, META-INF/resources, /resources等存放静态资源的目录。而将静态资源定位于src/main/webapp。当需要重新定义好资源所在目录时，则需要主动添加上述的那个配置类，来Override addResourceHandlers方法。
//==============================
    //手动配置静态资源路径
}
//问题： No handler found for GET /swagger-ui.html
//我们在访问http://127.0.0.1:8188/swagger-ui.html 时，这个swagger-ui.html相关的所有前端静态文件都在springfox-swagger-ui-2.6.1.jar里面。目录如下：
//Spring Boot自动配置本身不会自动把/swagger-ui.html这个路径映射到对应的目录META-INF/resources/下面。我们加上这个映射即可。代码如下：

//方法1
//配置mvc
//注意需要在住启动泪上贴上、
//在启动类上添加注解@EnableWebMvc


//方法2
//2.1在应用主类中增加@EnableSwagger2Doc注解
//2.2加上配置
//swagger.title=spring-boot-starter-swagger
//        swagger.description=Starter for swagger 2.x
//        swagger.version=1.1.0.RELEASE
//        swagger.license=Apache License, Version 2.0
//        swagger.licenseUrl=https://www.apache.org/licenses/LICENSE-2.0.html
//        swagger.termsOfServiceUrl=https://github.com/dyc87112/spring-boot-starter-swagger
//        swagger.contact.name=程序猿DD
//        swagger.contact.url=http://blog.didispace.com
//        swagger.contact.email=dyc87112@qq.com
//        swagger.base-package=com.didispace
//        swagger.base-path=/**
//        swagger.exclude-path=/error, /ops/**


//配置说明
//
//        swagger.title=标题
//        swagger.description=描述
//        swagger.version=版本
//        swagger.license=许可证
//        swagger.licenseUrl=许可证URL
//        swagger.termsOfServiceUrl=服务条款URL
//        swagger.contact.name=维护人
//        swagger.contact.url=维护人URL
//        swagger.contact.email=维护人email
//        swagger.base-package=swagger扫描的基础包，默认：全扫描
//        swagger.base-path=需要处理的基础URL规则，默认：/**
//        swagger.exclude-path=需要排除的URL规则，默认：空

*/
