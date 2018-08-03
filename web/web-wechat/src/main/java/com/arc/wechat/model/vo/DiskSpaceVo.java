package com.arc.wechat.model.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * 健康检查接口返回数据
 * 磁盘信息
 *
 * @author yehcao
 * @date 2018/08/01
 */
@Data
@NoArgsConstructor
public class DiskSpaceVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 状态
     */
    private String status = "UP";

    /**
     * 磁盘总容量
     */
    private Long total = 0L;

    private Long free = 0L;

    /**
     *
     */
    private Integer threshold = 1;
}
