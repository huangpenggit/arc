package com.arc.food.mapper;

import com.arc.food.model.domain.Food;
import com.arc.food.model.query.FoodQuery;

import java.util.List;

public interface FoodMapper {

    int save(Food food);

    int update(Food food);

    int delete(Long id);

    List<Food> page(FoodQuery query);

    List<Food> list();

    Food get(Long id);
}
