package com.arc.vue;

/**
 * @Author yeChao
 * @Date 2018/10/5 0:21
 */
public class Test01 {

    public static void main(String[] args) throws InterruptedException {
        Long start = System.currentTimeMillis();
        Thread.sleep(2000);
        System.out.println(System.currentTimeMillis() - start);
        System.out.println(System.currentTimeMillis() - start);
        System.out.println((System.currentTimeMillis() - start) > 20000);
        System.out.println(2 / 50000);
        System.out.println(50002 % 50000);
    }
}
