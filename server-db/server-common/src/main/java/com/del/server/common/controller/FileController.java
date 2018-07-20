package com.del.server.common.controller;

import com.del.server.common.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Slf4j
@Controller
@RestController
@RequestMapping("/file")
public class FileController {

    @Autowired
    private UserService userService;



    @RequestMapping(value = "/upload",method = RequestMethod.POST)
    public String upload(MultipartFile file) {
        log.debug("##################################");
        try {
            log.debug("MultipartFile   received parameter file'{}", file.getBytes().toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        log.debug("##################################");
        return "ok";
    }
}

//RESTful
//GET（SELECT）：从服务器取出资源（一项或多项）。
//POST（CREATE）：在服务器新建一个资源。
//PUT（UPDATE）：在服务器更新资源（客户端提供改变后的完整资源）。
//PATCH（UPDATE）：在服务器更新资源（客户端提供改变的属性【补丁】）。
//DELETE（DELETE）：从服务器删除资源。
//
//HEAD：获得一个资源的元数据，比如一个资源的hash值或者最后修改日期；
//OPTIONS：获得客户针对一个资源能够实施的操作；
//-------------------------------------------------------------------------------
//例子
//GET /zoos：列出所有动物园
//POST /zoos：新建一个动物园
//GET /zoos/ID：获取某个指定动物园的信息
//PUT /zoos/ID：更新某个指定动物园的信息（提供该动物园的全部信息）
//PATCH /zoos/ID：更新某个指定动物园的信息（提供该动物园的部分信息）
//DELETE /zoos/ID：删除某个动物园
//GET /zoos/ID/animals：列出某个指定动物园的所有动物
//DELETE /zoos/ID/animals/ID：删除某个指定动物园的指定动物
//-------------------------------------------------------------------------------
//https://www.smzdm.com/p/10096655/

