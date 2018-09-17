package com.arc.shop.service.impl;

import com.arc.model.domain.shop.Product;
import com.arc.model.query.product.ProductQuery;
import com.arc.shop.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 商品服务的相关服务的实现
 * 注意后面应该分表
 * 数据库读写分离
 */
@Slf4j
@Service
public class ProductServiceImpl implements ProductService {

    @Override
    public List<Product> page(ProductQuery query) {
        return null;
    }

    @Override
    public Product save(Product product) {
        return null;
    }

    @Override
    public int delete(Long id) {
        return 0;
    }

    @Override
    public Product update(Product product) {
        return null;
    }

    @Override
    public Product get(Long id) {
        return null;
    }

    @Override
    public Object export(ProductQuery query) {
        return null;
    }
}
