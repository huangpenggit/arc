package com.arc.shop.controller.product;

import com.arc.model.domain.shop.Product;
import com.arc.shop.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 商品相关页面跳转控制
 *
 * @author yechao
 */
@Slf4j
@Controller
@RequestMapping(value = "/product")
public class ProductControllerPage {

    @Autowired
    private ProductService productService;


    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public String save(@RequestBody Product product) {
        log.debug("Save product  parameter is {}", product);
        return "product/save";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list() {
        return "product/page";
    }

}
