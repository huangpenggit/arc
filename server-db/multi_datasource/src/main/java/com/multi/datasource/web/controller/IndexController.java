package com.multi.datasource.web.controller;


import com.arc.model.common.Area;
import com.arc.model.common.User;
import com.multi.datasource.mapper.master.UserMapper;
import com.multi.datasource.mapper.cluster.AreaMapper;
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
    AreaMapper areaMapper;


    @RequestMapping("")
    public Map<String, Object> index() {
        Map<String, Object> result = new HashMap<>();
        User user = userMapper.get(1L);
        Area area = areaMapper.get("000000");

        result.put("user", user);
        result.put("area", area);

        return result;
    }
}
