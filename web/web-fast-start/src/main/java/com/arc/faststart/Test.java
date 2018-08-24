package com.arc.faststart;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import java.util.Iterator;

public class Test {
    public static void main(String[] args) {
        String suffix = ".png";
//        if(suffix!=".png" &&suffix!=".PNG"&&suffix!=".jpg" &&suffix!=".JPG"){  //根据后缀，判断是否符合图片格式
        if(!(".png"==suffix ||".PNG"==suffix||".jpg"==suffix ||".JPG"==suffix)){  //根据后缀，判断是否符合图片格式
            System.out.println("图片上传错误,不是指定图片格式,重新选择!");
        }
        System.out.println("合格!");

    }


    public static String getFormatName(Object object) throws Exception{
        ImageInputStream iis = ImageIO.createImageInputStream(object);
        Iterator<ImageReader> iterator = ImageIO.getImageReaders(iis);
        while (iterator.hasNext()) {
            ImageReader reader = (ImageReader)iterator.next();
            return reader.getFormatName();
        }

        return null;
    }

}
