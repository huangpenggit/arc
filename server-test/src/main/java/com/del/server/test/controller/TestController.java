package com.del.server.test.controller;

import com.del.server.test.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TestController {

    @Autowired
    private DataService dataService;

//    @GetMapping("/send")
//    public String send() {
//        Map<String, String> params = new HashMap<>();
//        params.put("targetNumber", "177028799");
//        params.put("content", "文本");
//        params.put("serialNumber", UUID.randomUUID().toString());
//        System.out.println(params);
//        String s = dataService.send(params);
//        System.out.println(s);
//        return s;
//    }


    //校验数据
    //跳转
    //同步ajax
    //请求了接口 成功与否 会返回状态码
    //dock

    @RequestMapping(value = "/users",method = RequestMethod.GET)
    @ResponseBody
    public List users() {
     List list=   dataService.listAll();
        return list;
    }
}
