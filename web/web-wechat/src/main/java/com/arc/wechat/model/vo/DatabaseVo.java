package com.arc.wechat.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 健康检查接口返回数据
 * 数据库信息
 *
 * @author yehcao
 * @date 2018/08/01
 */
@Data
@NoArgsConstructor
public class DatabaseVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 状态
     */
    private String status = "UP";

    /**
     * 数据库类型
     */
    private String database = "MySQL";

    /**
     *
     */
    private Integer hello = 1;


}
