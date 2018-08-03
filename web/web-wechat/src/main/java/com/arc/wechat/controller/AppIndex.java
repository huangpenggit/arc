package com.arc.wechat.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

/**
 * 读取配置文件返回文件内容
 */
@RestController
@RequestMapping("/main")
public class AppIndex {
    private static final Logger logger = LoggerFactory.getLogger(AppIndex.class);

    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public Object get() {
        String data = "";
        ClassPathResource cpr = new ClassPathResource("/pdf/test.json");
        try {
            byte[] bdata = FileCopyUtils.copyToByteArray(cpr.getInputStream());
            data = new String(bdata, StandardCharsets.UTF_8);
            logger.debug("**************************************************************************************");
            logger.debug("                                    File is got！");
            logger.debug("**************************************************************************************");
        } catch (IOException e) {
            logger.debug("配置文件读取错误" + e.toString());
        }
        logger.debug(data);
        return data;
    }

}

