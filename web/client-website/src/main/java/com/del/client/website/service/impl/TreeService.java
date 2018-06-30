package com.del.client.website.service.impl;

import com.del.client.website.mapper.TreeMapper;
import com.del.client.website.model.Tree;
import com.del.client.website.service.ITreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class TreeService implements ITreeService ,Runnable {
    @Autowired
    private TreeMapper treeMapper;
    @Override
    public int save(Tree record) {
        return treeMapper.insert(record);
    }

    @Override
    public int deleteById(int id) {
        return treeMapper.deleteById(id);
    }

    @Override
    public int updateById(Tree record) {
        return treeMapper.update(record);
    }

    @Override
    public List<Tree> queryAll() {
        return treeMapper.selectAll();
    }

    @Override
    public int batchSave(List<Tree> list) {
        return treeMapper.batchSave(list);
    }

    @Override
    public int deleteAll() {
        return treeMapper.deleteAll();
    }

    @Override
    public void run() {
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
//        System.out.println(treeService);
        System.out.println(treeMapper);
        long start = System.currentTimeMillis();
        int save = treeMapper.batchSave(list);
        long end = System.currentTimeMillis();
        System.out.println("  批量保存 操作成功的数量  "+save +"   耗时    "+(end-start));
        //  druid      批量保存 操作成功的数量  100   耗时    1095
        // HikariCP 批量保存 操作成功的数量  100   耗时    1001
    }
}
