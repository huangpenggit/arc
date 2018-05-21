package com.del.test.service.impl;

import com.del.test.mapper.AreaMapper;
import com.del.test.model.Area;
import com.del.test.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaServiceImpl implements AreaService {

    @Autowired
    private AreaMapper areaMapper;

    @Override
    public Area get(String areaCode) {
        return areaMapper.get(areaCode);
    }

    @Override
    public List<Area> listChildren(String areaCode) {
        return areaMapper.listChildren(areaCode);
    }

    @Override
    public List<Area> list() {
        return areaMapper.list();
    }
}
