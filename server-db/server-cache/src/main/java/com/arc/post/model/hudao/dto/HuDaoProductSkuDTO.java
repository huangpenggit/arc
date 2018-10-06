package com.arc.post.model.hudao.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;

/**
 * 对方的产品dto 用于接收互道商品信息
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Data
@ToString
@NoArgsConstructor
public class HuDaoProductSkuDTO implements Serializable {

    private static final long serialVersionUID = 1L;


    private String rfid_code; // 近场通讯编码

    private String sku_code; // SKU编码

    private String spu_code; // SPU编码

    private String name; // 商品名称sku


    private String sub_name; // 商品副标题/英文名称

    private String comment;//备注

    private String short_notes; // 商品简介，就是描述


    private PriceDTO json_price;

    private BelongDTO json_belong;//商品主分类

    private ImagesDTO json_images;//商品主分类//    private String image; // 默认主图default

    private String color;

    private String size;

    private String huDaoId;


//
//    private Integer id;
//    private Integer price; // sku显示价格（100X）
//    private String notes; // sku商品描述
//    private String image; // 默认主图default
//    private boolean state = false; // 是否可以展示【可编辑】
//    private String originPlace; // 原产地【可编辑】
//    private String material; // 材质【可编辑】
//    private String shortNotes; // 商品简介
//    private Date createDate; // 创建时间
//    private Date updateDate; // 更新时间
//    private Integer spuId; // skuid与spuid对应关系


}
