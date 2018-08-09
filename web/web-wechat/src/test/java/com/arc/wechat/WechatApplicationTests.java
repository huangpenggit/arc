package com.arc.wechat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class WechatApplicationTests {

    @Test
    public void contextLoads() {
    }
//    @Test
//    public void testWriteLargeData() throws IOException {
//        FileInputStream inputStream = new FileInputStream("mytemplate.xlsx");
//
//        XSSFWorkbook wb_template = new XSSFWorkbook(inputStream);
//        inputStream.close();
//
//        SXSSFWorkbook wb = new SXSSFWorkbook(wb_template);//转换成流
//        wb.setCompressTempFiles(true);
//
//        SXSSFSheet sheet = (SXSSFSheet) wb.getSheetAt(0);
//        sheet.setRandomAccessWindowSize(100);// keep 100 rows in memory, exceeding rows will be flushed to disk
//        for(int rownum = 4; rownum < 100000; rownum++){
//            Row row = sheet.createRow(rownum);
//
//            for(int cellnum = 0; cellnum < 10; cellnum++){
//                Cell cell = row.createCell(cellnum);
////                String address = new CellReference("");
//                cell.setCellValue("2222222222");
//            }
//
//
//        }
//
//
//        FileOutputStream out = new FileOutputStream("tempsxssf.xlsx");
//        wb.write(out);
//        out.close();
//        // dispose of temporary files backing this workbook on disk
//        wb.dispose();
//    }
}
