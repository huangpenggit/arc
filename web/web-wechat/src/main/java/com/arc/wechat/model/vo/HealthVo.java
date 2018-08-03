package com.arc.wechat.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 健康检查接口返回数据
 *
 * @author yehcao
 * @date 2018/08/01
 */
@Data
@NoArgsConstructor
public class HealthVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 状态
     */
    private String status = "UP";

    /**
     * 磁盘状态
     */
    private DiskSpaceVo diskSpace;

    /**
     * redis状态
     */
    private RedisVo redis;

    /**
     * 数据库状态
     */
    private DatabaseVo database;


    public HealthVo(DatabaseVo database, DiskSpaceVo diskSpace, RedisVo redis) {
        this.diskSpace = diskSpace;
        this.redis = redis;
        this.database = database;
    }

    public HealthVo(String status, DiskSpaceVo diskSpace, RedisVo redis, DatabaseVo database) {
        this.status = status;
        this.diskSpace = diskSpace;
        this.redis = redis;
        this.database = database;
    }
}
