package com.arc.model.domain.system;

import com.arc.model.vo.BaseModel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * SSO用户
 * @author yechao
 * @date 2018/09/28
 */
@Getter
@Setter
@ToString
@NoArgsConstructor
public class SsoUser extends BaseModel {

    private static final long serialVersionUID = 1L;

    private Long id;// user主键
    private String nickname;// 昵称
    private String avatar;// 化身
    private Integer sign;// 标记
}
