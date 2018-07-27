package com.multi.datasource.web.controller;


import com.multi.datasource.common.model.Area;
import com.multi.datasource.common.model.User;
import com.multi.datasource.mapper.one.UserMapper;
import com.multi.datasource.mapper.two.AreaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("/ds")
@RestController
public class IndexController {

    @Autowired
    UserMapper userMapper;

    @Autowired
    AreaMapper areaMapper ;



    @RequestMapping("")
    public Map<String,Object> index(){
        Map<String,Object> result = new HashMap<>();
        User user = userMapper.get(1L);
        Area area = areaMapper.get("000000");

        result.put("user",user);
        result.put("area",area);

        return result;
    }
}
