/*
package com.del.client.website;

import com.del.client.website.model.Tree;
import com.del.client.website.service.ITreeService;
import com.del.client.website.thread.MultiRunnable;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ClientWebsiteApplicationTests {
    @Autowired
    private ITreeService treeService;

    @Test
    public void contextLoads() {
        ArrayList<Tree> list = new ArrayList<>();
        ArrayList<Tree> list1 = new ArrayList<>();
        for (int i = 0; i < 100000; i++) {
            Tree recode = new Tree();
            recode.setId(i);
            recode.setpId(0);
            recode.setName("根节点1" + i);
            recode.setOpen(false);
            list.add(recode);
        }
        list1 = list;

        long start = System.currentTimeMillis();
        int save = treeService.batchSave(list);
        long end = System.currentTimeMillis();
        System.out.println("  批量保存 操作成功的数量  " + save + "   耗时    " + (end - start));
        //  druid      批量保存 操作成功的数量  100   耗时    1095
        // HikariCP 批量保存 操作成功的数量  100   耗时    1001
        System.out.println(save);

    }

    @Test
    public void testDel() {
        long start = System.currentTimeMillis();
        int delete = treeService.deleteAll();
        long end = System.currentTimeMillis();
        System.out.println("  delete 操作成功的数量  " + delete + "   耗时    " + (end - start));
        //  druid      delete 操作成功的数量  100   耗时    770
        // HikariCP delete 操作成功的数量  100   耗时   410
    }

    @Test
    public void testMultiThread() {
        for (int j = 0; j < 1; j++) {
            System.out.println("运行保存" + j);
            MultiRunnable mu = new MultiRunnable();
            Thread t = new Thread(mu);
            t.start();
        }
    }
}
*/
