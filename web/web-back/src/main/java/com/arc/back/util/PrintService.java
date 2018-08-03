package com.arc.back.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

@Service
public class PrintService {
    @Autowired
    @Qualifier("myExecutor")
    private ThreadPoolTaskExecutor myExecutor;

    @Autowired
    @Qualifier("backExecutor")
    private ThreadPoolTaskExecutor backExecutor;

    private static Logger logger = LoggerFactory.getLogger(PrintService.class);

    public void print(int count) {
        try {
            logger.info("模拟运行，等待3s, 当前线程为{}", Thread.currentThread().getName());
            Thread.sleep(3000);
            logger.info("模拟运行完成，结果为：{}， 当前线程为：{}", count, Thread.currentThread().getName());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Async("myExecutor")
    public void asycnPrint(int count) {
        try {
            logger.info("模拟运行，输入为：{}，等待3s, 当前线程为{}，还在执行线程：{}，线程池大小：{}",
                    count, Thread.currentThread().getName(), myExecutor.getActiveCount(), myExecutor.getPoolSize());
            Thread.sleep(3000);
            logger.info("模拟运行完成，结果为：{}， 当前线程为：{}，还在执行线程：{}，线程池大小：{}",
                    count, Thread.currentThread().getName(), myExecutor.getActiveCount(), myExecutor.getPoolSize());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Async("backExecutor")
    public void asycnbackPrint(int count) {
        try {
            logger.info("模拟运行，输入为：{}，等待3s, 当前线程为{}，还在执行线程：{}，线程池大小：{}",
                    count, Thread.currentThread().getName(), backExecutor.getActiveCount(), backExecutor.getPoolSize());
            Thread.sleep(3000);
            logger.info("模拟运行完成，结果为：{}， 当前线程为：{}，还在执行线程：{}，线程池大小：{}",
                    count, Thread.currentThread().getName(), backExecutor.getActiveCount(), backExecutor.getPoolSize());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}