package com.arc.wechat.service.impl;

import com.arc.wechat.model.vo.HealthVo;

/**
 * 服务器健康状态检测
 *
 * @author: yechao
 * @date: 2018/08/01
 */
public interface IHealthCheckService {

    HealthVo check();
}
