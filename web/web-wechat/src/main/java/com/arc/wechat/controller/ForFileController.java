package com.arc.wechat.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@Slf4j
public class ForFileController {


    public static void main(String[] args) {

        FileOutputStream fileOut = null;

        BufferedImage bufferImg = null;//图片一
        BufferedImage bufferImg1 = null;//图片二

        try {
            // 先把读进来的图片放到一个ByteArrayOutputStream中，以便产生ByteArray
            ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
            ByteArrayOutputStream byteArrayOut1 = new ByteArrayOutputStream();

            //将两张图片读到 BufferedImage
            bufferImg = ImageIO.read(new File("E:/a.jpg"));
            bufferImg1 = ImageIO.read(new File("E:/b.jpg"));

            ImageIO.write(bufferImg, "jpg", byteArrayOut);
            ImageIO.write(bufferImg1, "jpg", byteArrayOut1);

            // 创建一个工作薄
            HSSFWorkbook wb = new HSSFWorkbook();
            //创建一个sheet
            HSSFSheet sheet = wb.createSheet("out put excel");

            HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
//     * 该构造函数有8个参数
//     * 前四个参数是控制图片在单元格的位置，分别是图片距离单元格 left，top，right，bottom  左上 右下  的像素距离
//     * 后四个参数，前两个表示图片左上角所在的 cellNum 和 rowNum，后天个参数对应的表示图片右下角所在的cellNum和 rowNum，
//     * excel中的cellNum和rowNum的index都是从0开始的

            //图片一导出到单元格B2中
            HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 0, 0, (short) 1, 1, (short) 2, 2);

            //图片二导出到单元格C3到E5中，且图片的left和top距离边框50
            HSSFClientAnchor anchor1 = new HSSFClientAnchor(50, 50, 0, 0, (short) 2, 2, (short) 2, 2);

            // 插入图片
            patriarch.createPicture(anchor, wb.addPicture(byteArrayOut.toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG));
            patriarch.createPicture(anchor1, wb.addPicture(byteArrayOut1.toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG));

            fileOut = new FileOutputStream("E:/Excel.xls");
            // 写入excel文件
            wb.write(fileOut);


        } catch (IOException io) {
            io.printStackTrace();
            log.debug("异常IOException{}", io.getMessage());
        } finally {
            if (fileOut != null) {
                try {
                    fileOut.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    /*    public static void main(String[] args) {//主程序，程序入口
            File file = new File("H:\\a");

            if (!file.exists()) {//如果文件夹不存在
                boolean mkdir = file.mkdir();//创建文件夹
            }
            try {//异常处理
                //如果Qiju_Li文件夹下没有Qiju_Li.txt就会创建该文件
                BufferedWriter bw = new BufferedWriter(new FileWriter("H:\\test\\1.pic"));
                //bw.write("Hello I/O!");//在创建好的文件中写入"Hello I/O"
                bw.close();//一定要关闭文件
            } catch (IOException e) {
                e.printStackTrace();
            }
        }*/


    //获取文件名称
    public static String getFileName() {
        DateFormat formatter = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
        String date = formatter.format(new Date());
        System.out.println(date);
        return date;
    }

}
