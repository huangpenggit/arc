package com.arc.server.system.service;

import com.arc.model.domain.system.SsoUser;

import java.util.List;

/**
 * 系统用户的服务
 *
 * @author yechao
 * @date 2018/09/29
 */
public interface SsoUserService {

    Long save(SsoUser ssoUser);

    int delete(Long id);

    int update(SsoUser ssoUser);

    SsoUser get(Long id);

    SsoUser getByUsername(String username);

    List<SsoUser> list();

    SsoUser getByNickname(String nickname);
}
