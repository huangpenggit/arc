package com.arc.server.system.mapper;

import com.arc.model.domain.system.SsoUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SsoUserMapper {

    int save(SsoUser user);

    int delete(Long id);

    int update(SsoUser user);

    SsoUser get(Long id);

    SsoUser getByNickname(@Param("nickname") String nickname);

    SsoUser getByUsername(@Param("username") String username);

    List<SsoUser> list();
}