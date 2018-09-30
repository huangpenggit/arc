package com.arc.wechat.web;

import com.arc.model.domain.common.Area;
import com.arc.model.domain.common.User;
import com.arc.wechat.mapper.one.UserMapper;
import com.arc.wechat.mapper.two.AreaMapper;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    private Logger logger = LoggerFactory.getLogger(this.getClass());

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
        //日志级别从低到高分为TRACE < DEBUG < INFO < WARN < ERROR < FATAL，如果设置为WARN，则低于WARN的信息都不会输出。
        logger.trace("日志输出 trace");
        logger.debug("日志输出 debug");
        logger.info("日志输出 info");
        logger.warn("日志输出 warn");
        logger.error("日志输出 error");


        Map<String, Object> result = new HashMap<>();
        User user = userMapper.get(1L);
        Area area = areaMapper.get("000000");

        result.put("user", user);
        result.put("area", area);
        return result;
    }


    public static void main(String[] args) {
        System.out.println(2953156 - 6822690);
    }


}
