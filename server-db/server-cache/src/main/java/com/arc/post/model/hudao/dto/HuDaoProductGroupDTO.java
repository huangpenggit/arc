package com.arc.post.model.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 对方的group的dto 用于接收互道group信息
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
public class HuDaoProductGroupDTO implements Serializable {

    private static final long serialVersionUID = 1L;

    private String type_zh_name;//类型 手工分组
    private String code; //分组编码
    private String parent_code; //父级编码
    private String name; //分组名称
    private String notes; //简介


}
