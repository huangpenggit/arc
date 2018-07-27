package com.multi.datasource.common.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 用户
 */
@Getter
@Setter
public class User {

    private static final long serialVersionUID = 1L;

    private Long id; //
    private String nickname; // 昵称
    private String avatar; // 化身头像路径
    private Integer level; // 级别(权限控制中用)
    private Integer gender; // 性别｛0未知/1男/2女｝
    private Date birthday; // 出生日期
    private String sign; // 个性签名
    private Integer userType; // 用户类型
}