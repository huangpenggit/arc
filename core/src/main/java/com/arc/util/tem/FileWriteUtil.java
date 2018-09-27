package com.arc.util.tem;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileWriteUtil {

    public static void uploadFile(byte[] bytes, String filePath, String fileName) {
        File targetFile = new File(filePath);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        FileOutputStream out = null;


        try {
            File file = new File(filePath + fileName);
//            out = new FileOutputStream(filePath+fileName);
//            out.write(file);

        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
