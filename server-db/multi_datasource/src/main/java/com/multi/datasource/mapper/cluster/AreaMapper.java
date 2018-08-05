package com.multi.datasource.mapper.cluster;


import com.arc.model.common.Area;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AreaMapper {

    Area get(String code);

//    List<Area> listChildren(String root);

//    Area getByShortCodeAndLevel(String shortCode, String level);

//    List<Area> list(List<String> areaCodes);

    List<Area> list();
}
