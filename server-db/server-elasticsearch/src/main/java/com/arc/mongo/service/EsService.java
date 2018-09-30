//package com.arc.mongo.service;
//
//import com.arc.mongo.nodel.EsBean;
//import com.arc.mongo.repository.EsBeanRepository;
//import com.mongodb.util.JSON;
//import org.springframework.stereotype.Service;
//
//import javax.annotation.Resource;
//
///**
// * Created with IntelliJ IDEA. * User: Administrator * Date: 17-9-27 * Time: 下午4:34 * To change this template use File | Settings | File Templates.
// */
//@Service
//@EnableElasticsearchRepositoriespublic
//class EsService {
//    @Resource
//    private EsBeanRepository esBeanRepository;
//
//    public String queryInfoById(String id) {
//        System.out.println("id:" + id);//        EsBean eb = (EsBean)esBeanRepository.findOne(id);
//        EsBean eb = new EsBean();
//        eb.gs = 250;
//        eb.study = 250;
//        esBeanRepository.save(eb);
//        String value = JSON.toJSONString(eb);
//        System.out.println("value:" + value);
//        return value;
//    }
//
//}
