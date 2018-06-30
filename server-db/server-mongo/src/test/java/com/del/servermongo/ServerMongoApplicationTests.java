package com.del.servermongo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ServerMongoApplicationTests {

    @Test
    public void contextLoads() {
    }


    public static void main(String[] args) {
        ServerMongoApplicationTests testController = new ServerMongoApplicationTests();
        testController.add();
        int b = testController.add();
        System.out.println(b);
        System.out.println(b);
    }

    static int i = 0;

    public int add() {
        i++;
        System.out.println(i);
        return i;
    }



}
