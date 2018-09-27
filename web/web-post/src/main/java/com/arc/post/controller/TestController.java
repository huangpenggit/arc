package com.arc.post.controller;



//@TODO 测试完成后请移除

import com.arc.post.agent.SkuAgent;
import com.arc.post.util.TokenCacheUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * 商品数据交互控制器
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Slf4j
@RestController
@RequestMapping("/test")
public class TestController {
    //测试用于模拟远程数据
    @Autowired
    private SkuAgent skuAgent;

//    @Autowired
//    private SpuAgent spuAgent;
//
//    @Autowired
//    private GroupAgent groupAgent;

    @Autowired
    private TokenCacheUtil tokenCacheUtil;




    @RequestMapping(value = "/getAccessToken", method = RequestMethod.GET)
    public Object getAccessToken() {
        return tokenCacheUtil.getAccessToken();
    }


    @RequestMapping(value = "/skus", method = RequestMethod.GET)
    public Object pull() {
        log.debug("skus");
        return skuAgent.syncProducts();
    }

//    @RequestMapping(value = "/spus", method = RequestMethod.GET)
//    public Object spus() {
//        log.debug("spus");
//        return spuAgent.syncSpus();
//    }
//
//    @RequestMapping(value = "/groups", method = RequestMethod.GET)
//    public Object groups() {
//        log.debug("groups");
//        return groupAgent.syncGroups();
//    }




}
