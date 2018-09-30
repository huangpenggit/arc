package com.arc.wechat.utils.excel;

import org.apache.commons.codec.binary.Base64;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * 导出工具类
 *
 * @author 叶超
 * @author
 */
public class ExportUtils {
    //基础：
    //03版（xls）excel文件每个sheet最大长度为 65535
    //07版（xlsx）excel文件每个sheet最大长度为 104万
    //07版后， 底层文件为 xml， 可以将 xlsx后缀改为rar 后用解压软件打开查看源文件
    //因为2003的Excel一个工作表最多可以有65536条记录，除去列头剩下65535条
    //所以如果记录太多，需要放到多个工作表中，其实就是个分页的过程

//    /**
//     * 03版（xls）excel文件
//     * 注意：每个sheet最大长度为 65535
//     *
//     * @param name
//     * @param request
//     * @param response
//     * @param book
//     * @throws IOException
//     * @MethodName : exportToXLS
//     */
//    public static void exportToXLS(String name, HttpServletRequest request, HttpServletResponse response, SXSSFWorkbook book) throws IOException {
//        String filename = name + ".xls";
////        String filename = name + new Date(System.currentTimeMillis()) + ".xls";
//        response.reset();
//        response.setContentType(request.getServletContext().getMimeType(filename));
//        response.addHeader("Content-Disposition", "attachment;filename=" + filename(filename, request.getHeader("user-agent")));
//        ServletOutputStream outputStream = response.getOutputStream();
//        book.write(outputStream);
//        response.flushBuffer();
//        outputStream.close();
//    }

//    /**
//     * 07版（xlsx）excel文件
//     * 注意每个sheet最大长度为 104万
//     *
//     * @param name
//     * @param request
//     * @param response
//     * @param book
//     * @throws IOException
//     * @MethodName : exportToXLSX
//     * @Description : 导出Excel（可以导出到本地文件系统，也可以导出到浏览器，可自定义工作表大小）
//     */
//    public static void exportToXLSX(String name, HttpServletRequest request, HttpServletResponse response, SXSSFWorkbook book) throws IOException {
////        String filename = name + new Date(System.currentTimeMillis()) + ".xlsx";
//        String filename = name + ".xlsx";
//
//        response.reset();
//        response.setContentType(request.getServletContext().getMimeType(filename));
//        response.addHeader("Content-Disposition", "attachment;filename=" + filename(filename, request.getHeader("user-agent")));
//        ServletOutputStream outputStream = response.getOutputStream();
//        book.write(outputStream);
//        response.flushBuffer();
//        outputStream.close();
//    }

    /**
     * 下载文件时，针对不同浏览器，进行附件名的编码
     *
     * @param filename 下载文件名
     * @param agent    客户端浏览器
     * @return 编码后的下载附件名
     * @throws IOException
     */
    private static String filename(String filename, String agent) throws IOException {
        if (agent.contains("Firefox")) { // 火狐浏览器
            filename = "=?UTF-8?B?" + new Base64().encode(filename.getBytes("utf-8")) + "?=";
            filename = filename.replaceAll("\r\n", "");
        } else { // IE及其他浏览器
            filename = URLEncoder.encode(filename, "utf-8");
            filename = filename.replace("+", " ");
        }
        return filename;
    }

    public static void exportToFile(SXSSFWorkbook workbook, String filePath) {
//        String filePath = "G:/123.xlsx";
        //创建文件导出文件路径
        File file = new File(filePath);
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            //写文件
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            workbook.write(fileOutputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //SXSSFWorkbook     HSSFWorkbook
    public static void export(String name, HttpServletRequest request, HttpServletResponse response, SXSSFWorkbook book) throws IOException {
        String filename = name + ".xls";
        response.reset();
        response.setContentType(request.getServletContext().getMimeType(filename));
        response.addHeader("Content-Disposition", "attachment;filename=" + filename(filename, request.getHeader("user-agent")));
        ServletOutputStream outputStream = response.getOutputStream();

        book.write(outputStream);
        response.flushBuffer();
        outputStream.close();
    }


}
