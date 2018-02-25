package com.del.test;

import com.del._01createbean.A;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestBeans {
    //测试从bean类中获取bean
    @Test
    public void test() {
        try {
            AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(A.class);
            System.out.println(context);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
