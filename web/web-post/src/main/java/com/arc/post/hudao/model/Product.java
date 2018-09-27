package com.arc.post.hudao.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;

/**
 * 产品表
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Getter
@Setter
@NoArgsConstructor
public class Product  implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;
    private String skuCode; // SKU编码
    private String rfidCode; // 近场通讯编码

    private String spuCode; // SPU编码
    private Integer price; // sku显示价格（100X）
    private String name; // 商品名称sku

    private String subtitle; // 商品副标题/英文名称
    private String notes; // sku商品描述
    private String shortNotes; // 商品简介

    private String image; // 默认主图default
    private String originPlace; // 原产地【可编辑】
    private String material; // 材质【可编辑】

    private Date createDate; // 创建时间
    private Date updateDate; // 更新时间

}
