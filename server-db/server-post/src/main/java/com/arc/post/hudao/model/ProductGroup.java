package com.arc.post.hudao.model;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 产品分类(组)表
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
public class ProductGroup implements Serializable {
    private static final long serialVersionUID = 1L;

    private String code; //分组编码

    private String parentCode; //父级编码

    private String name; // 分组产品名称（如：衬衫）

    private String image; // 分组产品图片

    private String typeZhName;//类型 手工分组

    private String notes; //简介
}
