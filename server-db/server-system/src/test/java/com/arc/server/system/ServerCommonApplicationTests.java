package com.arc.server.system;

import com.arc.server.system.task.Task;
import com.arc.server.system.task.TaskWithCallBack;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.concurrent.Future;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ServerCommonApplicationTests {

    //	@Test
//	public void contextLoads() {
//	}
    @Autowired
    private Task task;
    @Autowired
    private TaskWithCallBack taskWithCallBack;

    @Test
    public void test() throws Exception {
        task.taskOne();
        task.taskTwo();
        task.taskThree();

    }    @Test
    public void test2() throws Exception {
        long start = System.currentTimeMillis();

        Future<String> task1  = taskWithCallBack.fun1();
        Future<String> task2 = taskWithCallBack.fun2();
        Future<Object> task3= taskWithCallBack.fun3();

        while(true) {
            if(task1.isDone() && task2.isDone() && task3.isDone()) {
                // 三个任务都调用完成，退出循环等待
                break;
            }
            Thread.sleep(1000);
        }
        System.out.println("任务全部完成，总耗时：" + (System.currentTimeMillis() - start) + "毫秒");
    }

//    任务二执行时间：2000
//    任务三执行时间：3001
//    任务一执行时间：5002
//    任务全部完成，总耗时：6006毫秒
}
