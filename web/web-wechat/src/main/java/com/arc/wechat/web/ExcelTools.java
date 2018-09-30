package com.arc.wechat.web;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

public class ExcelTools {

    private static final Logger logger = LoggerFactory.getLogger(ExcelTools.class);

    /**
     * 日期格式 yyyy-MM-dd
     */
    private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    /**
     * 日期格式yyyy-MM-dd HH:mm:ss
     */
    private static final DateFormat DATE_FORMAT_YYYY_MM_DD_HH_MM_SS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /**
     * 单元格映射
     */
    public static class CellMap {
        private String title;// 标题
        private String property;// 属性

        public CellMap(String title, String property) {
            this.title = title;
            this.property = property;
        }

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getProperty() {
            return property;
        }

        public void setProperty(String property) {
            this.property = property;
        }

    }

    /**
     * 导出Excel
     *
     * @param cellMapList         单元格映射列表
     * @param dataList            数据列表
     * @param rowAccessWindowSize 内存中缓存记录数
     * @param out                 输出流
     * @throws Exception
     */
    public static void exportSXSSFExcel(String sheetName, List<CellMap> cellMapList, List<?> dataList, int rowAccessWindowSize, OutputStream out) throws Exception {
        SXSSFWorkbook workbook = new SXSSFWorkbook(rowAccessWindowSize);
        Sheet sheet = workbook.createSheet(sheetName);
        Row row = null;
        Cell cell = null;
        if (cellMapList == null || cellMapList.size() <= 0) {
            throw new Exception("cellMapList不能为空或小于等于0");
        }
        int rowIndex = 0;
        // 标题
        Font titleFont = workbook.createFont();
//        titleFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        CellStyle titleCellStyle = workbook.createCellStyle();
//        titleCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
//        titleCellStyle.setFont(titleFont);
        row = sheet.createRow(rowIndex++);
        int cellSize = cellMapList.size();
        for (int i = 0; i < cellSize; i++) {
            CellMap cellMap = cellMapList.get(i);
            String title = cellMap.getTitle();
            cell = row.createCell(i);
            cell.setCellStyle(titleCellStyle);
            cell.setCellValue(title);
            if (title != null) {
                sheet.setColumnWidth(i, title.getBytes().length * 2 * 172);
            }
        }
        // 数据
        CellStyle dataCellStyle = workbook.createCellStyle();
//        dataCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        int rowSize = (dataList == null) ? 0 : dataList.size();
        for (int i = rowIndex; i < rowSize + rowIndex; i++) {
            Object obj = dataList.get(i - rowIndex);
            row = sheet.createRow(i);
            for (int j = 0; j < cellSize; j++) {
                CellMap cellMap = cellMapList.get(j);
                cell = row.createCell(j);
                cell.setCellStyle(dataCellStyle);
                String property = cellMap.getProperty();
                if (property.equals("rowNumber") || StringUtils.isEmpty(property)) {
                    cell.setCellValue(i);
                } else {
                    String propertyValue = getPropertyValue(obj, property);
                    cell.setCellValue(propertyValue);
                    if (propertyValue != null) {
                        int columnWidth = sheet.getColumnWidth(j);
                        int propertyValueLength = propertyValue.getBytes().length * 2 * 172;
                        if (columnWidth < propertyValueLength) {
                            sheet.setColumnWidth(j, propertyValueLength);
                        }
                    }
                }

            }
        }
        workbook.write(out);
    }


    /**
     * 导出Excel
     *
     * @param cellMapList         单元格映射列表
     * @param dataList            数据列表
     * @param rowAccessWindowSize 内存中缓存记录数
     * @param out                 输出流
     * @throws Exception
     */
    public static void exportSXSSFExcelFromMapData(String sheetName, List<CellMap> cellMapList, List<Map<String, String>> dataList, int rowAccessWindowSize, OutputStream out) throws Exception {
        SXSSFWorkbook workbook = new SXSSFWorkbook(rowAccessWindowSize);
        Sheet sheet = workbook.createSheet(sheetName);
        Row row = null;
        Cell cell = null;
        if (cellMapList == null || cellMapList.size() <= 0) {
            throw new Exception("cellMapList不能为空或小于等于0");
        }
        int rowIndex = 0;
        // 标题
        Font titleFont = workbook.createFont();
//        titleFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        CellStyle titleCellStyle = workbook.createCellStyle();
//        titleCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        titleCellStyle.setFont(titleFont);
        row = sheet.createRow(rowIndex++);
        int cellSize = cellMapList.size();
        for (int i = 0; i < cellSize; i++) {
            CellMap cellMap = cellMapList.get(i);
            String title = cellMap.getTitle();
            cell = row.createCell(i);
            cell.setCellStyle(titleCellStyle);
            cell.setCellValue(title);
            if (title != null) {
                sheet.setColumnWidth(i, title.getBytes().length * 2 * 172);
            }
        }
        // 数据
        CellStyle dataCellStyle = workbook.createCellStyle();
//        dataCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        int rowSize = (dataList == null) ? 0 : dataList.size();
        for (int i = rowIndex; i < rowSize + rowIndex; i++) {
            Map<String, String> obj = dataList.get(i - rowIndex);
            row = sheet.createRow(i);
            for (int j = 0; j < cellSize; j++) {
                CellMap cellMap = cellMapList.get(j);
                cell = row.createCell(j);
                cell.setCellStyle(dataCellStyle);
                String property = cellMap.getProperty();
                if (property.equals("rowNumber") || StringUtils.isEmpty(property)) {
                    cell.setCellValue(i);
                } else {
//                	String propertyValue = getPropertyValue(obj, property);
                    String propertyValue = obj.get(property);
                    cell.setCellValue(propertyValue);
                    if (propertyValue != null) {
                        int columnWidth = sheet.getColumnWidth(j);
                        int propertyValueLength = propertyValue.getBytes().length * 2 * 172;
                        if (columnWidth < propertyValueLength) {
                            sheet.setColumnWidth(j, propertyValueLength);
                        }
                    }
                }

            }
        }
        workbook.write(out);
    }

    /**
     * 获取属性值
     *
     * @param obj
     * @param property
     * @return
     * @throws Exception
     */
    private static String getPropertyValue(Object obj, String property) throws Exception {
        if (obj instanceof Map) {
            Object val = ((Map<String, Object>) obj).get(StringUtils.upperCase(property));
            if (val == null) {
                return "";
            }
            return val.toString();
        }
        Object result = null;
        String str = "";
        Class<?> clazz = obj.getClass();
        if (property == null || "".equals(property)) {
            return "";
        }
        Method readMethod = clazz.getMethod("get" + property.substring(0, 1).toUpperCase() + property.substring(1));
        if (readMethod != null) {
            result = readMethod.invoke(obj);
        }
        if (result != null) {
            if (result.getClass() == Date.class) {
                str = dateFormat.format(result);
            } else {
                str = result.toString();
            }
        } else {
            str = "";
        }
        return str;
    }

//
//    public static void main(String[] args) {
//        List<CellMap> cellMapList = new ArrayList<CellMap>();
//        cellMapList.add(new CellMap("单元格1", "cell1"));
//        cellMapList.add(new CellMap("单元格21111111111", "cell2"));
//        cellMapList.add(new CellMap("单元格3", "a"));
//
////        List<Excel> list = new ArrayList<Excel>();
////        list.add(new Excel("3333333333333333333", "中文中文中文中文中文中文中文中文中文中文中文", "值3", "ddddddddddddddddddddd"));
////        list.add(new Excel("值5", "值6", "值7", "值8"));
//
//        try {
////            ExcelExportUtil.exportSXSSFExcel(cellMapList, list, 1000, new FileOutputStream(new File("e:/test.xlsx")));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    /**
     * 填充excel数据
     * <功能详细描述>
     *
     * @param dataCellStyle
     * @param cellSize
     * @param sheet
     * @param rowIndex
     * @param workbook
     * @param response
     * @param excelName
     * @param cellMapList
     * @param dataList
     * @return
     * @throws Exception
     * @see [类、类#方法、类#成员]
     */
    public static int fillExcel_2007_SXSSF(CellStyle dataCellStyle, int cellSize, Sheet sheet, int rowIndex, SXSSFWorkbook workbook, HttpServletResponse response, String excelName, List<CellMap> cellMapList, List<?> dataList) throws Exception {
        Row row = null;
        Cell cell = null;
        int rowSize = (dataList == null) ? 0 : dataList.size();
        for (int i = rowIndex; i < rowSize + rowIndex; i++) {
            Object obj = dataList.get(i - rowIndex);
            row = sheet.createRow(i);
            for (int j = 0; j < cellSize; j++) {
                CellMap cellMap = cellMapList.get(j);
                cell = row.createCell(j);
                cell.setCellStyle(dataCellStyle);
                String property = cellMap.getProperty();
                if (property.equals("rowNumber") || StringUtils.isEmpty(property)) {
                    cell.setCellValue(i);
                } else {
                    String propertyValue = getPropertyValue(obj, property);
                    cell.setCellValue(propertyValue);
                    if (propertyValue != null) {
                        int columnWidth = sheet.getColumnWidth(j);
                        int propertyValueLength = propertyValue.getBytes().length * 2 * 172;
                        if (columnWidth < propertyValueLength) {
//                            sheet.setColumnWidth(j, propertyValueLength);
                        }
                    }
                }
            }
        }
        return rowSize + rowIndex;
    }
//
//    /**
//     *
//     * 以 SXSSF 导出2007
//     * <功能详细描述>
//     * @param response response
//     * @param excelName excel文件名
//     * @param cellMapList excel列属性
//     * @param sql 查询报表的SQL
//     * @param param 上述SQL中的参数
//     * @param baseDao 继承自baseDAO的DAO
//     * @param foot 页脚信息
//     * @throws Exception
//     * @see [类、类#方法、类#成员]
//     */
//    public static void exportExcel_2007_SXSSF(HttpServletResponse response, String excelName, List<CellMap> cellMapList, String sql, Parameter param, BaseDao<?> baseDao, List<HashMap<String, Object>> foot) throws Exception{
//        createExcel(response, excelName, cellMapList,null, sql, param,null, baseDao,foot);
//    }
//    /**
//     *
//     * 以 SXSSF 导出2007(增强版)
//     * <功能详细描述>
//     * @param response
//     * @param excelName
//     * @param cellMapList
//     * @param dataSql
//     * @param dataParam
//     * @param baseDao
//     * @param foot
//     * @param countSql
//     * @param countParam
//     * @throws Exception
//     * @see [类、类#方法、类#成员]
//     */
//    public static void exportExcel_2007_SXSSF(HttpServletResponse response,String excelName,List<CellMap> cellMapList,String dataSql,Parameter dataParam,BaseDao<?> baseDao,List<HashMap<String, Object>> foot,String countSql,Parameter countParam) throws Exception{
//        createExcel(response, excelName, cellMapList,countSql, dataSql, dataParam,countParam, baseDao,foot);
//    }
//    /**
//     *
//     * 以 SXSSF 导出2007  无页脚
//     * <功能详细描述>
//     * @param response response
//     * @param excelName excel文件名
//     * @param cellMapList excel列属性
//     * @param sql 查询报表的SQL
//     * @param param 上述SQL中的参数
//     * @param baseDao 继承自baseDAO的DAO
//     * @throws Exception
//     * @see [类、类#方法、类#成员]
//     */
//    public static void exportExcel_2007_SXSSF(HttpServletResponse response,String excelName,List<CellMap> cellMapList,String sql,Parameter param,BaseDao<?> baseDao) throws Exception{
//        createExcel(response, excelName, cellMapList,null, sql, param,null, baseDao,null);
//    }
//    /**
//     *
//     * 创建excel
//     * <功能详细描述>
//     * @param response
//     * @param excelName
//     * @param cellMapList
//     * @param countSql
//     * @param sql
//     * @param param
//     * @param baseDao
//     * @param footers
//     * @throws Exception
//     * @see [类、类#方法、类#成员]
//     */
//    public static void createExcel(HttpServletResponse response,String excelName, List<CellMap> cellMapList,String countSql, String sql,Parameter param,Parameter countParam,BaseDao<?> baseDao,List<HashMap<String, Object>> footers) throws Exception{
//        logger.info("导出报表开始-read write data into excel begin:"+DATE_FORMAT_YYYY_MM_DD_HH_MM_SS.format(new Date()));
//        //参数校验
//        if (response==null||CollectionUtils.isEmpty(cellMapList))
//        {
//            logger.error("cellMapList is empty");
//            throw new Exception("cellMapList不能为空或小于等于0");
//        }
//        if (StringUtils.isBlank(excelName))
//        {
//            excelName = UUID.randomUUID().toString();
//        }
//
//        SXSSFWorkbook workbook = new SXSSFWorkbook(1000);
//        workbook.setCompressTempFiles(true);
//        Sheet sheet = workbook.createSheet();
//        Row row = null;
//        Cell cell = null;
//        int rowIndex = 0;
//        // header 标题
//        Font titleFont = workbook.createFont();
//        titleFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
//        CellStyle titleCellStyle = workbook.createCellStyle();
//        titleCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
//        titleCellStyle.setFont(titleFont);
//        row = sheet.createRow(rowIndex++);
//        // 数据列数
//        int cellSize = cellMapList.size();
//        for (int i = 0; i < cellSize; i++) {
//            CellMap cellMap = cellMapList.get(i);
//            String title = cellMap.getTitle();
//            cell = row.createCell(i);
//            cell.setCellStyle(titleCellStyle);
//            cell.setCellValue(title);
//            if (title != null) {
//                sheet.setColumnWidth(i, title.getBytes().length * 2 * 234);
//            }
//        }
//
//        //body 数据查询开始
//        //初始化第一页数据
//        ReportPage reportPage = new ReportPage();
//        Integer total = null ;
//        if (StringUtils.isBlank(countSql))
//        {
//            total = baseDao.countBySql(sql, param);
//        }else {
//            total = baseDao.countBySql(countSql,sql, countParam==null?param:countParam);
//        }
//        //先设定每页多少条
//        reportPage.setRows(10000);
//        reportPage.setTotal(total);
//        reportPage.setPage(1);
//
//        if (total.intValue()!=0)
//        {
//            //详细数据样式
//            CellStyle dataCellStyle = workbook.createCellStyle();
//            dataCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
//            for (int i = 0; i < reportPage.getPageTotal(); i++)
//            {
//                logger.info("rw data into excel begin_"+(i+1)+":"+DATE_FORMAT_YYYY_MM_DD_HH_MM_SS.format(new Date()));
//                List<HashMap<String, Object>> res_part = baseDao.queryToMap(sql, param, reportPage);
//                rowIndex = fillExcel_2007_SXSSF(dataCellStyle,cellSize,sheet, rowIndex, workbook, response, excelName, cellMapList, res_part);
//                logger.info("rw data into excel end_"+(i+1)+":"+DATE_FORMAT_YYYY_MM_DD_HH_MM_SS.format(new Date()));
//                reportPage.setPage(reportPage.getPage()+1);
//            }
//        }
//
//        //footer 尾部
//        if (CollectionUtils.isNotEmpty(footers))
//        {
//            //footers数据样式
//            CellStyle dataCellStyle = workbook.createCellStyle();
//            dataCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
//            rowIndex=fillExcel_2007_SXSSF(dataCellStyle,cellSize,sheet, rowIndex, workbook, response, excelName, cellMapList, footers);
//        }
//
//        response.setContentType("application/msexcel;charset=UTF-8");
//        response.setHeader("Content-Disposition", "attachment;filename="
//                + new String(excelName.getBytes("UTF-8"),
//                "ISO-8859-1") + ".xlsx");
//        OutputStream out = response.getOutputStream();
//        workbook.write(out);
//        out.close();
//        workbook.dispose();
//        logger.info("导出报表结束-read write data into excel end:"+DATE_FORMAT_YYYY_MM_DD_HH_MM_SS.format(new Date()));
//    }


    /**
     * @param row
     * @param cellNum 第几列的列号
     * @param value   值
     */
    public static void createCell(Row row, int cellNum, Object value) {
        Cell cell = row.createCell(cellNum);
        generateValue(value, cell);
    }


    /**
     * 写入标题
     *
     * @param sheet
     * @param rowNum 第几行的行号
     * @param values key:第几列的列号  value:值
     */
    public static void genSheetHead(Sheet sheet, int rowNum, Map<Integer, Object> values) {

        Row row = sheet.createRow(rowNum);
        for (Integer cellNum : values.keySet()) {
            Cell cell = row.createCell(cellNum);
            Object value = values.get(cellNum);
            generateValue(value, cell);
        }
    }

    private static void generateValue(Object value, Cell cell) {
        if (value instanceof String) {
            cell.setCellValue((String) value);
        } else if (value instanceof Boolean) {
            cell.setCellValue((Boolean) value);
        } else if (value instanceof Double) {
            cell.setCellValue((Double) value);
        } else if (value instanceof Date) {
            cell.setCellValue((Date) value);
        } else if (value instanceof Calendar) {
            cell.setCellValue((Calendar) value);
        } else if (value instanceof RichTextString) {
            cell.setCellValue((RichTextString) value);
        }
    }


    public static void main(String[] args) throws Exception {

        //输入模板文件
        XSSFWorkbook xssfWorkbook = new XSSFWorkbook(new FileInputStream("H:\\ceshi.xls"));
        SXSSFWorkbook workbook = new SXSSFWorkbook(xssfWorkbook, 1000);

        //导出文件
        File file = new File("H:\\test2.xls");

        long start = System.currentTimeMillis();
        for (int i = 0; i < 2; i++) {
            Sheet sheet = workbook.getSheet("sheet" + (i + 1));
            if (sheet == null) {
                sheet = workbook.createSheet("sheet" + (i + 1));
            }
//            生成标题
            Map<Integer, Object> firstTitles = new HashMap<>();
            firstTitles.put(0, "部门:");
            firstTitles.put(1, "test12221");
            firstTitles.put(7, "时间:");
            firstTitles.put(8, "2017-09-11");
            genSheetHead(sheet, 0, firstTitles);

            Map<Integer, Object> twoTitles = new HashMap<>();
            twoTitles.put(0, "工号：");
            twoTitles.put(1, "test12221");
            twoTitles.put(2, "姓名:");
            twoTitles.put(3, "aaaa");
            genSheetHead(sheet, 1, twoTitles);

            for (int rownum = 2; rownum < 100000; rownum++) {
                Row row = sheet.createRow(rownum);
                int k = -1;
                createCell(row, ++k, "第 " + rownum + " 行");
                createCell(row, ++k, "23.67%");
                createCell(row, ++k, "12:12:23");
                createCell(row, ++k, "2014-10-<11 12:12:23");
                createCell(row, ++k, "true");
                createCell(row, ++k, "false");
                createCell(row, ++k, "fdsa");
                createCell(row, ++k, "123");
                createCell(row, ++k, "321");
                createCell(row, ++k, "3213");
                createCell(row, ++k, "321");
                createCell(row, ++k, "321");
                createCell(row, ++k, "few1");
            }

        }
        FileOutputStream out = new FileOutputStream(file);
        workbook.write(out);

        System.out.println((System.currentTimeMillis() - start));
        out.close();
    }


}
