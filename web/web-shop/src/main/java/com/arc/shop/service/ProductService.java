package com.arc.shop.service;

import com.arc.model.domain.shop.Product;
import com.arc.model.query.product.ProductQuery;

import java.util.List;

/**
 * 商品相关服务
 * 使用mybatis作为dao层
 */
public interface ProductService {

    /**
     * 分页查询商品
     *
     * @param query
     * @return
     */
    List<Product> page(ProductQuery query);

    Product save(Product product);

    int delete(Long id);

    Product update(Product product);

    Product get(Long id);

    Object export(ProductQuery query);
}
