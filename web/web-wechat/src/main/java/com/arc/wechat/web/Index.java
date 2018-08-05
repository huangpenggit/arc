package com.arc.wechat.web;

import com.arc.model.common.Area;
import com.arc.model.common.User;
import com.arc.wechat.mapper.one.UserMapper;
import com.arc.wechat.mapper.two.AreaMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * web包中放的是跳转页面的controller
 *
 * @author yechao
 * @date 20180706
 */
@Slf4j
@Controller
@RequestMapping("/ds")
public class Index {


    @RequestMapping("/search")
    public String search() {
        return "/wan/search";
    }


    @Autowired
    UserMapper userMapper;

    @Autowired
    AreaMapper areaMapper;

    @RequestMapping("")
    @ResponseBody
    public Map<String, Object> index() {
        Map<String, Object> result = new HashMap<>();
        User user = userMapper.get(1L);
        Area area = areaMapper.get("000000");

        result.put("user", user);
        result.put("area", area);
        return result;
    }


    public static void main(String[] args) {
        System.out.println(        2953156-6822690);
    }


}
