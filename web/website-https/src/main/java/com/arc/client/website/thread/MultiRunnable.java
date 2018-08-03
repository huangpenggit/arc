package com.arc.client.website.thread;

import com.arc.client.website.mapper.TreeMapper;
import com.arc.client.website.model.Tree;
import com.arc.client.website.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
//1):定义一个类A实现于java.lang.Runnable接口,注意A类不是线程类.
public class MultiRunnable implements Runnable {
    @Autowired
    private ITreeService treeService;
    @Autowired
    private TreeMapper treeMapper;

    @Override
    //2):在A类中覆盖Runnable接口中的run方法.
    public void run() {
        //3):在run方法中编写需要执行的操作
        ArrayList<Tree> list = new ArrayList<>();
        for (int i = 0; i < 10000; i++) {
            Tree recode = new Tree();
            recode.setId(i);
            recode.setpId(0);
            recode.setName("节点 " + i);
            recode.setOpen(false);
            list.add(recode);
        }
//        TreeService treeService = new TreeService();
        System.out.println(treeService);
        System.out.println(treeMapper);
        long start = System.currentTimeMillis();
        int save = treeMapper.batchSave(list);
        long end = System.currentTimeMillis();
        System.out.println("  批量保存 操作成功的数量  " + save + "   耗时    " + (end - start));
        //  druid      批量保存 操作成功的数量  100   耗时    1095
        // HikariCP 批量保存 操作成功的数量  100   耗时    1001
    }
}


