package com.del.test.controller;


import com.del.doamin.Area;
import com.del.test.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AreaController {

    @Autowired
    private AreaService areaService;


/*    @RequestMapping(value = "/areas",method ={ RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public List<Area> areas(@RequestParam(value = "code",required = false) String code) {
        return areaService.listChildren(code);
    } */

    @RequestMapping(value = "/areas", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public List<Area> areas() {
        return areaService.list();
    }
}
