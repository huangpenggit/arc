package com.arc.client.website.service;

import com.arc.client.website.model.Tree;

import java.util.List;

public interface ITreeService {
    int save(Tree record);

    int deleteById(int id);

    int updateById(Tree record);

    List<Tree> queryAll();

    int batchSave(List<Tree> list);

    int deleteAll();
}
