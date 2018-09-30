package com.security.mapper;

import com.arc.model.domain.system.SsoUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    int save(SsoUser record);

    int delete(Long id);

    int update(SsoUser record);

    SsoUser get( Long id);

    SsoUser getByUsername(@Param("username") String username);

    SsoUser getByNickname(@Param("nickname") String nickname);

    List<SsoUser> list();

}