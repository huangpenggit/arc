package com.arc.post.hudao.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * BaseDTO
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Setter
@Getter
@ToString
public class BaseDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer currentPage = 1;

    private Integer pageSize = 10;

    private Integer offSet;//起始页

    public Integer getOffSet() {
        return (currentPage - 1) * pageSize;
    }

}
