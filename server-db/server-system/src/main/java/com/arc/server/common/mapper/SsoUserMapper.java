package com.arc.server.common.mapper;

import com.arc.model.domain.system.SsoUser;

import java.util.List;

/**
 * SsoUser的Mapper
 */
public interface SsoUserMapper {

    int save(SsoUser record);

    int delete(Long id);

    int update(SsoUser record);

    SsoUser get(Long id);

    List<SsoUser> list();

}