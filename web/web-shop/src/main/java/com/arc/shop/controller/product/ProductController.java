package com.arc.shop.controller.product;

import com.arc.model.domain.shop.Product;
import com.arc.model.query.product.ProductQuery;
import com.arc.model.vo.ResponseVo;
import com.arc.shop.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 商品的product接口
 * 注意返回的是json
 *
 * @author yechao
 */
@Slf4j
@RestController
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    private ProductService productService;


    //CURD
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ResponseVo save(@RequestBody Product product) {
        log.debug("Save product  parameter is {}", product);
        return ResponseVo.success(productService.save(product));
    }

    @RequestMapping(value = "/delete", method = {RequestMethod.GET, RequestMethod.DELETE})
    public ResponseVo delete(@RequestParam Long id) {
        log.debug("Delete product  parameter is {}", id);
        return ResponseVo.success(productService.delete(id));
    }

    @RequestMapping(value = "/update", method = {RequestMethod.POST, RequestMethod.PUT})
    public ResponseVo update(Product product) {
        log.debug("Update product  parameter is {}", product);
        return ResponseVo.success(productService.update(product));
    }

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public ResponseVo get(@RequestParam Long id) {
        log.debug("Get product  parameter is id={}", id);
        return ResponseVo.success(productService.get(id));
    }


    @RequestMapping(value = "/page", method = RequestMethod.POST)
    public ResponseVo query(ProductQuery query) {
        log.debug("Query products  parameter is {}", query);
        return ResponseVo.success(productService.page(query));
    }

    //导出
    @RequestMapping(value = "/export", method = RequestMethod.POST)
    public ResponseVo export(@RequestBody ProductQuery query) {
        log.debug("Export product  parameter is {}", query);
        return ResponseVo.success(productService.export(query));
    }

    /*--------------------------------------------------------------------------------*/
    //商品购买的时候就是update


}
