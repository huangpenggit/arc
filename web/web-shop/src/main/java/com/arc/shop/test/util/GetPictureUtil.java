package com.arc.shop.test.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import java.io.File;

@Slf4j
@Component
public class GetPictureUtil {


    @Async("asyncExecutor")
    public Object getByHttp(String path) {

        try {
            Thread.sleep(2000);
            log.info("###############异步执行,参数{}", path);


            //创建文件 耗时操作
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss-SSS");
//            String filePath = "D:\\Z\\" + sdf.format(new Date()) + "-" + path + ".txt";
            String filePath = "D:\\Z\\" + "-" + path + ".txt";

//            System.out.println(filePath);
            File file = new File(filePath);
            if (!file.exists()) {
//                file.mkdirs();
                file.createNewFile();
            }


//            String strPath = "E:\\a\\aa\\aaa.txt";
//            SystemFile file = new SystemFile(strPath);
//            if(!file.exists())){
//                file.file.mkdirs();
//            }


            return path;

        } catch (Exception e) {
            e.printStackTrace();
        }
//        throw new RuntimeException("线程错误");
        return 1;

    }


}
