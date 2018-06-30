package com.del._01createbean;

import com.del.doamin.BaseDomain;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class A {
    @Bean
    public BaseDomain getA() {
        BaseDomain bean = new BaseDomain();
        bean.setDomain(new BaseDomain());
        return bean;
    }
}
