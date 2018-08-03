package com.arc.wechat.service.impl;

import com.arc.wechat.model.vo.HealthVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * 青蛙活动controller
 * 厂商：正佳
 *
 * @author: 叶超
 * @date: 2018/6/1
 */
@RestController
//@RequestMapping("/frog/activity/health")
//@Log4j
public class HealthyController {

    @Autowired
//    private IHealthCheckService healthCheckService;
    private HealthCheckServiceImpl healthCheckService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public HealthVo healthCheck() {
        return healthCheckService.check();
    }


    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public Object test() {
        String s = healthCheckService.getConntection().toString();

        System.out.println(s);
        System.out.println(s);

        return s;
    }


}
