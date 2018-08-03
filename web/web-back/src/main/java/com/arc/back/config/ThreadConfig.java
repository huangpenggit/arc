package com.arc.back.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;

/**
 * 描述:
 *
 * @author: yechao
 * @date: 2018/08/02
 */
//@ComponentScan("com.hotpot.*.service.impl")

@Configuration
@EnableAsync
public class ThreadConfig {

    /**
     * 执行需要依赖线程池，这里就来配置一个线程池
     *
     * @return
     */
    @Bean
    public Executor getExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setCorePoolSize(10);
        executor.setMaxPoolSize(100);
        executor.setQueueCapacity(250);
        executor.initialize();
        return executor;
    }
}