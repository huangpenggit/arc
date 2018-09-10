package com.arc.faststart.controller;

import com.arc.faststart.model.ResponseVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("/file")
@RestController
public class FileController {

    @RequestMapping("/upload")
    public Object upload(MultipartFile file) {
        //1、图片非空，且合法--大小格式
        //2、数据库记录上传的图片路径
        //3、返回图片的地址
        //4、注意：相同图片处理 大小和名称一样的数据算是相同的，相同的图片则名称每次加一
        ResponseVO responseVO = new ResponseVO();

        if (file == null) {

        }
        String contentType = file.getContentType();

        return 1;
    }

}
