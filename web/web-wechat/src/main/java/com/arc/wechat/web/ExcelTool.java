//package com.arc.wechat.web;
//
//import org.apache.poi.ss.usermodel.Sheet;
//import org.apache.poi.xssf.streaming.SXSSFWorkbook;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class ExcelTool {
//
//    private static final Logger logger = LoggerFactory.getLogger(ExcelTool.class);
//
//    public static void main(String[] args) {
//        OutputStream os = null;
//        try {
//            HttpServletResponse response = super.getResponse();
//            response.setContentType("application/force-download"); // 设置下载类型
//            String filename ="risk_event.xlsx";
//            response.setHeader("Content-Disposition","attachment;filename=" + filename); // 设置文件的名称
//            os = response.getOutputStream(); // 输出流
//            SXSSFWorkbook wb = new SXSSFWorkbook(1000);//内存中保留 1000 条数据，以免内存溢出，其余写入 硬盘
//            //获得该工作区的第一个sheet
//            Sheet sheet1 = wb.createSheet("sheet1");
//            int excelRow = 0;
//            //标题行
//            Row titleRow = (Row) sheet1.createRow(excelRow++);
//            for (int i = 0; i < columnList.size(); i++) {
//                Cell cell = titleRow.createCell(i);
//                cell.setCellValue(columnList.get(i));
//            }
//
//            for (int m = 0; m < cycleCount; m++) {
//                List<List<String>> eventStrList = this.convertPageModelStrList();
//                if (eventStrList!= null && eventStrList.size() > 0) {
//                    for (int i = 0; i < eventStrList.size(); i++) {
//                        //明细行
//                        Row contentRow = (Row) sheet1.createRow(excelRow++);
//                        List<String> reParam = (List<String>) eventStrList.get(i);
//                        for (int j = 0; j < reParam.size(); j++) {
//                            Cell cell = contentRow.createCell(j);
//                            cell.setCellValue(reParam.get(j));
//                        }
//                    }
//                }
//            }
//            wb.write(os);
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if (os != null) {
//                    os.close();
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            } // 关闭输出流
//        }
//
//    }
//
//}
