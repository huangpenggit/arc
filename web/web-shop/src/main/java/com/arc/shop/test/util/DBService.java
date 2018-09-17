package com.arc.shop.test.util;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class DBService {

    public List<Map<String,Object>> getBookListExport(Map<String,Object> p) {
        return new ArrayList<>();
    }

}
