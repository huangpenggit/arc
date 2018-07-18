package com.del.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 地区表
 *
 */
@Getter
@Setter
public class User extends BaseModel {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private Long id;

    private String username;

    private String password;

    private String nickname;

    private String openId;

    private String accessToken;

    private Byte subscribe;

    private String remark;

    private Byte sex;

    private String headimgurl;

    private Date subscribeTime;

    private Date unsubscribeTime;

    private Date becomevipTime;

    private Long totalpoint;

    private Long cardnumber;

    private Byte viplevel;

}