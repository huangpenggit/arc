package com.del.servermongo.service;

import com.del.model.common.Area;

import java.util.List;

public interface AreaService {

    //条件查询
    Area get(String areaCode);
    List<Area> listChildren(String areaCode);

    List<Area> list();
}
