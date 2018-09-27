package com.arc.food.model.domain;

/**
 * 食物实体
 *
 * @author yechao
 * @date 2018/09/18
 */

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 *
 *
 */
@Setter
@Getter
@ToString
@NoArgsConstructor
public class Food extends BaseModel {

    private static final long serialVersionUID = 1L;

    private Long id;// 主键
    private String name;// 食物品名称
    private Integer normalPrice;// 名义上的价格（展示） 100X
    private Integer realPrice;// 真实价格100X
    private String intro;// 介绍
    private String note;// 标识：早餐/午餐/晚餐/夜宵/下午茶/其他等
    private Integer type;// 标识码：用状态码标识是何种类型的餐食或者描述食物其他的类别
    private String description;//描述
    private String image;// 影像:图片或者视频，如果是多个影像，请使用扩展表
    private Integer providerId;// 供应者ID
    private String provider;// 供应商
    private String evaluation;// 评价
    private Integer status;// 逻辑删除
    private Integer stock;// 库存
    private Integer sale;// 售出的
    private Integer last;// 余下的
}
