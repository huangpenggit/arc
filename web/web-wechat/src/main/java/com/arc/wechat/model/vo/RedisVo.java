package com.arc.wechat.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 健康检查接口返回数据
 * Redis
 *
 * @author yehcao
 * @date 2018/08/01
 */
@Data
@NoArgsConstructor
public class RedisVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 状态
     */
    private String status = "UP";

    /**
     * 版本
     */
    private String version;
}
