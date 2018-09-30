package com.arc.shop.test.controller.test;

import com.arc.shop.test.service.AsyncTaskService;
import com.arc.shop.test.util.GetPictureUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
public class TestController {
    @Autowired
    private AsyncTaskService asyncTaskService;

    @Autowired
    private GetPictureUtil getPictureUtil;

    @RequestMapping(value = "/test")
    @ResponseBody
    public Object index() {
        long begin = new Date().getTime();
        for (int i = 0; i < 101; i++) {
            Object byHttp = getPictureUtil.getByHttp("path-" + i);
//            System.out.println(getPictureUtil.getByHttp("wwww.222"));
//            System.out.println(getPictureUtil.getByHttp("wwww.33333"));
        }
        long end = new Date().getTime();
        System.out.println("###########################################");
        System.out.println("调用的结果byHttp" + "   耗时" + (end - begin));

        return new Date();
    }


//    @RequestMapping(value = "/test")
//    @ResponseBody
//    public Object index() {
//        int n = 1;
//        asyncTaskService.fun1(n);
//        asyncTaskService.fun2(n);
//        return new Date();
//    }


}
