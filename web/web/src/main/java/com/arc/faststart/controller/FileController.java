package com.arc.faststart.controller;

import com.arc.faststart.model.vo.ResponseVo;
import com.arc.faststart.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 控制器
 * 作用：
 * 接收参数，访问一个url，带一些参数
 * 处理业务【与数据库交互，或者做一些判断】
 * 返回数据【1）返回一个html页面 2）返回JSON的字符串】
 */
@Controller
@RequestMapping("/file")
public class FileController {

    @Autowired
    private FileService fileService;


    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody//用了这个注解返回的是json数据
    public ResponseVo list() {
        return ResponseVo.success(fileService.list());
        //浏览器访问这个地址应该会返回一些数据    http://localhost/file/upload
    }

}
