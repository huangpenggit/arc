package com.arc.food.service;

import com.arc.food.model.domain.Food;
import com.arc.food.model.query.FoodQuery;

import java.util.List;

/**
 * Food相关服务
 * 使用mybatis作为dao层
 */
public interface FoodService {

    /**
     * 分页查询商品
     *
     * @param query
     * @return
     */
    List<Food> page(FoodQuery query);

    Food save(Food product);

    int delete(Long id);

    Food update(Food product);

    Food get(Long id);

    Object export(FoodQuery query);

    List<Food> list();
}
