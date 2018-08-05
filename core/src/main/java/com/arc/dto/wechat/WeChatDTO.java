package com.arc.dto.wechat;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

import java.util.Date;

/**
 * 扫码回执信息 传输对象--实体
 *
 * @author: yechao
 * @date: 2018/5/5
 */
@Data
@Slf4j
@ToString
@NoArgsConstructor
public class WeChatDTO {
    private Integer currentPage = 1;

    private Integer pageSize = 10;

//    private Integer offSet;

    public Integer getOffSet() {
        return (currentPage - 1) * pageSize;
    }

    private String merchantId; // 机器商场编号

    private String openId; // openId

    private Integer activityId; //   活动编号

    private Long userId; // 用户编号

    private String mall; // 商场名称

    private String key; // key

    private Date createTime; // 创建时间

    private boolean reusable = false; //是否可以复用

    private String otherParam;//其他参数


    private String codenickname;//codeNickName; // BASE64编码昵称   codenickname

    private String headimgurl;// headImgUrl; // 头像 headimgurl

    private Boolean firstFollow = false; // 是否首次关注  firstFollow


    public WeChatDTO(Integer activityId,Integer currentPage, Integer pageSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.activityId = activityId;
    }
}