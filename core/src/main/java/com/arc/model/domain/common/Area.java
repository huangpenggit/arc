package com.arc.model.domain.common;

import com.arc.model.BaseModel;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * 地区表
 *
 */
@Getter
@Setter
public class Area extends BaseModel {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private String areaCode; // 地区6位码

    private String areaName; // 地区名称

    private Integer areaLevel; // 地区级别

    private String shortCode; // 地区简码

    private String parentCode; // 上级地区码

    private String parentName; // 上级地区名

    private List<Area> children;

}
