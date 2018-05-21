package com.del.test.mapper;


import com.del.test.model.Area;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AreaMapper {

	Area get(String code);
	
	Area tree(String root);
	
	List<Area> listChildren(String root);

	Area getByShortCodeAndLevel(String shortCode, String level);

    List<Area> list();
}
