package com.del.client.website;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

@SpringBootApplication
//@EnableWebMvc
@MapperScan("com.del.client.website.mapper")
public class ClientWebsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClientWebsiteApplication.class, args);
	}

 /*   @Bean
    public ObjectMapper serializingObjectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        objectMapper.registerModule(new JavaTimeModule());
        return objectMapper;
    }*/



    /**
     *
     * Description：FreeMarker视图配置
     * @return
     */
    @Bean
    public FreeMarkerViewResolver freeMarkerViewResolver() {
        FreeMarkerViewResolver viewResolver = new FreeMarkerViewResolver();
//        viewResolver.setPrefix("/WEB-INF/ftl/");//# 前缀设置 默认为 "" return 那个url 是否拼写  /
//        viewResolver.setSuffix(".ftl");
        viewResolver.setSuffix(".html");
        viewResolver.setCache(false);
        viewResolver.setContentType("text/html;charset=UTF-8");
        viewResolver.setRequestContextAttribute("requestContext");
        viewResolver.setOrder(0);
        return viewResolver;
    }

}

//1如果@EnableWebMvc了，那么就会自动覆盖了官方给出的/static, /public, META-INF/resources, /resources等存放静态资源的目录。而将静态资源定位于src/main/webapp。当需要重新定义好资源所在目录时，则需要主动添加上述的那个配置类，来Override addResourceHandlers方法。