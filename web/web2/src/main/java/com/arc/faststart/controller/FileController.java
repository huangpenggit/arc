package com.arc.faststart.controller;

import com.arc.faststart.model.domain.File;
import com.arc.faststart.model.vo.ResponseVo;
import com.arc.faststart.service.FileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 控制器
 * 作用：
 * 接收参数，访问一个url，带一些参数
 * 处理业务【与数据库交互，或者做一些判断】
 * 返回数据【1）返回一个html页面 2）返回JSON的字符串】
 */
@Slf4j
@Controller
//@RequestMapping(value = "/file")
public class FileController {

    @Autowired
    private FileService fileService;


    /**
     * http://localhost:8082/file/update
     * POST方法发送请求。不会的话百度，用postman软件
     * [{"key":"Content-Type","value":"application/json"}]
     *
     * @param file
     * @return
     */
    @RequestMapping(value = "/file/save", method = RequestMethod.POST)
    @ResponseBody
    public ResponseVo save(@RequestBody File file) {
        return ResponseVo.success(fileService.save(file));
    }

    @RequestMapping(value = "/file/update", method = RequestMethod.POST)
    @ResponseBody
    public ResponseVo update(@RequestBody File file) {
        return ResponseVo.success(fileService.update(file));
    }


    /**
     * 浏览器访问这个地址应该会返回一些数据    http://localhost/file/upload
     * 说明@ResponseBody 用了这个注解返回的是JSON字符串，如果没有这个注解则返回的是一个页面！！！
     * 说明@RestController贴在类上那么就相当于所有的方法上都有@ResponseBody注解，那么 所有方法都返回的的JSON字符串
     * 说明@RequestMapping贴在类上相当全部方法前面都加上了这一段url，具体请自行尝试
     *
     * @return
     */
    @RequestMapping(value = "/file/list", method = RequestMethod.GET)
    //用了这个注解返回的是json数据
    @ResponseBody
    public ResponseVo list() {
        return ResponseVo.success(fileService.list());
    }


    /**
     * http://localhost:8082/file/get?id=1
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/file/get", method = RequestMethod.GET)
    @ResponseBody
    public ResponseVo get(@RequestParam(required = true) Long id) {
        File file = fileService.get(id);
        log.debug("file {}", file);
        return ResponseVo.success(file);
    }

    /**
     * 测试中
     * http://localhost:8082/file/getByFilePath?path=名称
     *
     * @param path
     * @return
     */
    @RequestMapping(value = "/file/getByFilePath", method = RequestMethod.GET)
    @ResponseBody
    public ResponseVo findByFilePath(@RequestParam String path) {
        return ResponseVo.success(fileService.findByFilePath(path));
    }

}
