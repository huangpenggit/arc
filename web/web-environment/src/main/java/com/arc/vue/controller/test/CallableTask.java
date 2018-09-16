package com.arc.vue.controller.test;

import java.util.concurrent.Callable;

public class CallableTask implements Callable<Integer> {
    Integer i;

    public CallableTask(Integer i) {
        super();
        this.i = i;
    }

    @Override
    public Integer call() throws Exception {
        if(i == 1) {
            Thread.sleep(50000);
        }
        System.out.println("task线程："+Thread.currentThread().getName()+"任务i="+i+",完成！");
        return i;
    }
}
