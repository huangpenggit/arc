package com.arc.wechat.mapper.two;


import com.arc.model.domain.common.Area;
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
