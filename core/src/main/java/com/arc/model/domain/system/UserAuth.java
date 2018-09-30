package com.arc.model.domain.system;


import com.arc.model.vo.BaseModel;
import lombok.Getter;
import lombok.Setter;

/**
 * 用户授权信息表 
 *
 */
@Getter
@Setter
public class UserAuth extends BaseModel {

	private static final long serialVersionUID = 1L;

	private Long id;// 
	private Long userId;// 
	private String identityType;// 登录类型（手机号 邮箱 用户名）或第三方应用名称（微信 微博等）
	private String identifier;// 标识（手机号 邮箱 用户名或第三方应用的唯一标识）
	private String credential;// 密码凭证（站内的保存密码，站外的不保存或保存token）
	private Integer state;// 状态(逻辑删除/停用)
}
