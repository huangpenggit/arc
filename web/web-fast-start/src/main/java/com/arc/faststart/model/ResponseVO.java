package com.arc.faststart.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 接口返回实体的封装对象
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ResponseVO {

    /**
     * 编码
     */
    private Integer code;


    /**
     * 消息
     */
    private String msg;


    /**
     * 数据
     */
    private Object data;
}
