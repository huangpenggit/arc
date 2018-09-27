package com.arc.post.hudao.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * 对方的spu的dto 用于接收互道spu信息
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
public class HuDaoProductSpuDTO implements Serializable {

    private static final long serialVersionUID = 1L;

//    private Integer code;//商品分组ID
    private String name; // spu名称

    private String comment; // spu备注

    private String short_notes; // spu简述 对应  ---notes

    private String spu_code; //   spu_code





    private PriceDTO json_price; // spu价格   -sale

    private ImagesDTO json_images; // spu图片---默认 default_url

    private BelongDTO json_belong; // spu商品相关隶属关系



    //暂时传来，但是没有使用到的字段
    private String on_sale_date; // spu销售时间
    private String active; // Y
    private String on_sale; // spu
    private String source; // http://test.ezrpro.cn/mall/pro/getproductinfo/120?proid=1133029

}
