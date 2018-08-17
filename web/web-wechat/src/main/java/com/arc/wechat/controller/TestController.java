package com.arc.wechat.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

//用于校验token的controller----以及--获取用户信息，图林交互等
@RestController
@Slf4j//注解在类上；为类提供一个 属性名为log 的 log4j 日志对象
public class TestController {

    @RequestMapping(value = "/test", method = RequestMethod.POST)
    public Object pull() {


        String str = "{\"message\": \"Success\", \"code\": 0, \"data\": {\"total\": 1206, \"rows\": [{\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u4f11\\u95f2\\u88e4, \\u6df1\\u7eff\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 450.0, \"market\": 0.0}, \"barcode\": \"KKCAJ37017A31\", \"outcode\": \"\", \"sku_code\": \"KKCAJ37017A_31_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"\", \"spu_code\": \"KKCAJ37017A\", \"json_belong\": {\"category_code\": \"KA1KCA\", \"category_name\": \"K-\\u7537\\u4f11\\u95f2\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"HTTP://**************.JPG\", \"default_url\": \"http://***.png\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u4f11\\u95f2\\u88e4, \\u5361\\u5176\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 390.0, \"market\": 0.0}, \"barcode\": \"KKCAJ37004A08\", \"outcode\": \"\", \"sku_code\": \"KKCAJ37004A_08_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001D6FD508C0\", \"spu_code\": \"KKCAJ37004A\", \"json_belong\": {\"category_code\": \"KA1KCA\", \"category_name\": \"K-\\u7537\\u4f11\\u95f2\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u4f11\\u95f2\\u88e4, \\u85cf\\u9752\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 430.0, \"market\": 0.0}, \"barcode\": \"KKCAJ37015A25\", \"outcode\": \"\", \"sku_code\": \"KKCAJ37015A_25_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"\", \"spu_code\": \"KKCAJ37015A\", \"json_belong\": {\"category_code\": \"KA1KCA\", \"category_name\": \"K-\\u7537\\u4f11\\u95f2\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u4f11\\u95f2\\u88e4, \\u5361\\u5176\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 430.0, \"market\": 0.0}, \"barcode\": \"KKCAJ37015A27\", \"outcode\": \"\", \"sku_code\": \"KKCAJ37015A_27_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"\", \"spu_code\": \"KKCAJ37015A\", \"json_belong\": {\"category_code\": \"KA1KCA\", \"category_name\": \"K-\\u7537\\u4f11\\u95f2\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u9488\\u7ec7\\u4f11\\u95f2\\u88e4, \\u85cf\\u9752\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 350.0, \"market\": 0.0}, \"barcode\": \"KKZZJ37003A03\", \"outcode\": \"\", \"sku_code\": \"KKZZJ37003A_03_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CCB0508C0\", \"spu_code\": \"KKZZJ37003A\", \"json_belong\": {\"category_code\": \"KA1KZZ\", \"category_name\": \"K-\\u7537\\u9488\\u7ec7\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u897f\\u88e4, \\u4e2d\\u7070\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 750.0, \"market\": 0.0}, \"barcode\": \"KKXAJ37011A11\", \"outcode\": \"\", \"sku_code\": \"KKXAJ37011A_11_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CC45508C0\", \"spu_code\": \"KKXAJ37011A\", \"json_belong\": {\"category_code\": \"KA1KXA\", \"category_name\": \"K-\\u7537\\u897f\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u897f\\u88e4, \\u85cf\\u9752\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 590.0, \"market\": 0.0}, \"barcode\": \"KKXAJ37004A04\", \"outcode\": \"\", \"sku_code\": \"KKXAJ37004A_04_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CC94508C0\", \"spu_code\": \"KKXAJ37004A\", \"json_belong\": {\"category_code\": \"KA1KXA\", \"category_name\": \"K-\\u7537\\u897f\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u897f\\u88e4, \\u6df1\\u7070\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 500.0, \"market\": 0.0}, \"barcode\": \"KKXAJ37009A09\", \"outcode\": \"\", \"sku_code\": \"KKXAJ37009A_09_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CCA1508C0\", \"spu_code\": \"KKXAJ37009A\", \"json_belong\": {\"category_code\": \"KA1KXA\", \"category_name\": \"K-\\u7537\\u897f\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u4f11\\u95f2\\u88e4, \\u4e2d\\u7070\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 650.0, \"market\": 0.0}, \"barcode\": \"KKCAJ37008A14\", \"outcode\": \"\", \"sku_code\": \"KKCAJ37008A_14_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CC78508C0\", \"spu_code\": \"KKCAJ37008A\", \"json_belong\": {\"category_code\": \"KA1KCA\", \"category_name\": \"K-\\u7537\\u4f11\\u95f2\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}, {\"comment\": \"\\u5546\\u54c1\\u5907\\u6ce8\", \"sub_name\": \"\", \"name\": \"\\u7537\\u9488\\u7ec7\\u4f11\\u95f2\\u88e4, \\u9ed1\\u8272\\uff08\\u51c0\\u8272\\uff09, 170/74A(30)\", \"on_sale_date\": \"\", \"unit_code\": \"\\u6761\", \"on_sale\": \"Y\", \"json_price\": {\"cost\": 0.0, \"sale\": 350.0, \"market\": 0.0}, \"barcode\": \"KKZZJ37002A02\", \"outcode\": \"\", \"sku_code\": \"KKZZJ37002A_02_170/74A(30)\", \"short_notes\": \"\", \"rfid_code\": \"50001CC4E508C0\", \"spu_code\": \"KKZZJ37002A\", \"json_belong\": {\"category_code\": \"KA1KZZ\", \"category_name\": \"K-\\u7537\\u9488\\u7ec7\\u88e4(AEX)\"}, \"json_images\": {\"thumb_url\": \"\", \"default_url\": \"\"}, \"active\": \"Y\"}]}}";

        log.debug("----{}",str);
        return str;
    }





















//    private static final Logger logger = LoggerFactory.getLogger(WeixinController.class);

    //注入
//    @Autowired
//    private IUserService userService;
//    @Autowired
//    private IAnswerService answerService;


    /**
     * 可以使用 Servlet 原生的API作为目标方法的参数
     * 具体支持以下类型
     * HttpServletRequest
     * HttpServletResponse
     * HttpSession
     * java.security.Principal
     * OutputStream
     * Reader
     * Writer
     *
     * @throws IOException
     */
//    @RequestMapping("/testServlet")
//    public void testServletAPI(HttpServletRequest request, HttpServletResponse response, Writer out) throws IOException {
//        System.out.println("testServletAPI, " + request + "," + response);
//        // 为了测试能用原生的Servlet中的Writer，先把返回值String去掉改成void，一样能在屏幕写出String
//        out.write("hello springMVC");
//        // return SUCCESS;
//    }


}


