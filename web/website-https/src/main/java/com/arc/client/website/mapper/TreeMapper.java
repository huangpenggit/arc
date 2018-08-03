package com.arc.client.website.mapper;

import com.arc.client.website.model.Tree;

import java.util.List;

public interface TreeMapper {

    int insert(Tree record);

    int deleteById(int id);

    int update(Tree record);

    List<Tree> selectAll();

    int batchSave(List<Tree> list);

    int deleteAll();
}