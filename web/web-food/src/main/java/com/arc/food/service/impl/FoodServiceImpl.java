package com.arc.food.service.impl;

import com.arc.food.mapper.FoodMapper;
import com.arc.food.model.domain.Food;
import com.arc.food.model.query.FoodQuery;
import com.arc.food.service.FoodService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品服务的相关服务的实现
 * 注意后面应该分表
 * 数据库读写分离
 */
@Slf4j
@Service
public class FoodServiceImpl implements FoodService {

    @Autowired
    private FoodMapper foodMapper;

    @Override
    public Food save(Food food) {
        int save = foodMapper.save(food);
        return save == 0 ? null : food;
    }

    @Override
    public int delete(Long id) {
        return foodMapper.delete(id);
    }

    @Override
    public Food update(Food food) {
        int update = foodMapper.update(food);
        return update == 0 ? null : food;
    }

    @Override
    public Food get(Long id) {
        return foodMapper.get(id);
    }


    @Override
    public List<Food> page(FoodQuery query) {
        return foodMapper.page(query);
    }

    @Override
    public Object export(FoodQuery query) {
        return null;
    }

    @Override
    public List<Food> list() {
        return foodMapper.list();
    }
}
