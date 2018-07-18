package com.del.servermongo.service.impl;

import com.del.model.common.Area;
import com.del.servermongo.mapper.AreaMapper;
import com.del.servermongo.service.AreaService;
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
