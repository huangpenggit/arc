package com.arc.model.dto.enviroment;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

/**
 * 产品dto
 * 格式化价格
 */
@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "product")
public class ProjectDto {


    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id; // 主键

    @Column(name = "type", length = 255)
    private String type; //商品类型【单商品：single（默认）、多规格商品：variant、组合捆绑：package、服务：service、辅料：accessory】


    @Column(name = "spu_code", length = 255)
    private String spu_code; //商品代码

    @Column(name = "sku_code", length = 255)
    private String sku_code; //货品SKU编码

    @Column(name = "barcode", length = 255)
    private String barcode; //条码

    @Column(name = "outcode", length = 255)
    private String outcode; //第三方识别码

    @Column(name = "rfid_code", length = 255)
    private String rfid_code; //RFID编号

    @Column(name = "parent_code", length = 255)
    private String parent_code; //主商品编号


    @Column(name = "name", length = 255)
    private String name; //商品名称

    @Column(name = "sub_name", length = 255)
    private String sub_name; //商品副标题/英文名称

    @Column(name = "unit_code", length = 255)
    private String unit_code; //计量单位代码

    @Column(name = "on_sale", length = 255)
    private String on_sale; //是否可销售【是：Y（默认）、否：N】

    @Column(name = "on_sale_date", length = 255)
    private String on_sale_date; //2018-01-01 10:00:00 上架时间

    @Column(name = "short_notes", length = 255)
    private String short_notes; //商品简介


    @Column(name = "notes", length = 255)
    private String notes; //商品描述

    @Column(name = "is_virtual", length = 255)
    private String is_virtual; //是否虚拟商品【是：Y、否：N(默认)】


    @Column(name = "active", length = 255)
    private String active; //是否有效【是：Y（默认）、否：N】

    @Column(name = "comment", length = 255)
    private String comment; //热卖商品，轻拿轻放 备注

    @Column(name = "source", length = 255)
    private String source; //来源/原访问地址


    @Column(name = "json_price", length = 255)
    private String json_price;

    @Column(name = "json_stock", length = 255)
    private String json_stock;

    @Column(name = "json_attrs", length = 255)
    private String json_attrs;


    @Column(name = "json_belong", length = 255)
    private String json_belong;

    @Column(name = "json_images", length = 255)
    private String json_images;

    @Column(name = "other_params", length = 255)
    private String other_params;


//    private List<String> accessories;
//    private List<String> tags;
}
