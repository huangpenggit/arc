package com.arc.post.hudao.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 产品表
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
public class ProductSpu  implements Serializable {

    private static final long serialVersionUID = 1L;

    private String spuCode; // spuCode
    private String name; // spu商品名称
    private Integer price; // spu商品售价
    private String notes; // spu商品描述
    private String image; // spu商品图片


    private String originPlace; // 原产地【可编辑】
    private String material; // 材质【可编辑】
    private Boolean state; // spu商品状态

    private Date createDate;//创建时间

    private Date updateDate;//更新时间

    //分组信息
    private List<GroupSpu> productGroup;//分组信息

   //数据不要
   // private GroupSpu1 category;//主分类（code，name）
}
