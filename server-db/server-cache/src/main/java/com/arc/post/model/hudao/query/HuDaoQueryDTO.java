package com.arc.post.model.hudao.query;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * 互道查询条件
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Data
@ToString
public class HuDaoQueryDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private String start_time;//格式：2017-08-01 10:00:00

    private String end_time;//2017-08-01 10:00:00

    private String order_by = "asc";//asc desc

    private int page = 1;//1、2、3、、、、

    private int page_size = 1000;//1、2、3、、、
}
