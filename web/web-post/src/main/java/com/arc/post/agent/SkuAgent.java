package com.arc.post.agent;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.arc.post.hudao.dto.HostUtil;
import com.arc.post.hudao.dto.HuDaoProductSkuDTO;
import com.arc.post.hudao.dto.PageDTO;
import com.arc.post.hudao.model.Product;
import com.arc.post.hudao.model.PullLog;
import com.arc.post.hudao.query.HuDaoQueryDTO;
import com.arc.post.util.HttpUtil;
import com.arc.post.util.StaticField;
import com.arc.post.util.TokenCacheUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * 执行远程调用客户接口，获取数据的服务
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 */
@Slf4j
@Component
public class SkuAgent {

    @Autowired
    private TokenCacheUtil tokenCacheUtil;

//    @Autowired
//    private SkuService skuService;

//    @Autowired
//    private PullLogService pullLogService;

    public SimpleDateFormat df_24 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//转换成时间格式24小时制   12小时的--yyyy-MM-dd hh:mm:ss

    private Integer counter = 0;//计数器

    //1、到指定服务器获取数据
    //1.1 获取什么数据 商品分页数据

    //2、本地保存这些数据
    //3、问题点怎么增量，如何区分数据是变化过的、
    //4、需要一个操作日志记录表来记录同步情况


    //        if (productMark >= 0) {
//            log.info("成功的结束定时同步skus，涉及操作sku数量为{},任务耗时 {} S",productMark, (System.currentTimeMillis() - start) / 1000);
//            return true;
//        } else {
//            log.info("失败的结束定时同步skus，涉及操作sku数量为{},任务耗时 {} S", productMark,(System.currentTimeMillis() - start) / 1000);
//            return false;
//        }
//        pullLogService.save(new PullLog(skuResult.getRequestDate(), StaticField.OPERATOR, StaticField.OPERATE_NAME_FOR_SKU, hostname, say + "的同步商品", executeFlag));


    /**
     * @return
     */
    public PullLog syncProducts() {
        log.debug("SKU-同步方法进入》》》》》》》》》》》》》》》》》》》》》》》》》》");

        long start = System.currentTimeMillis();
        int currentPage = 1;
        int pageSize = 1000;
        int total = 0;
        int counts = 0;
        int mark = 0;//保存成功的数量
        Integer save = 0;
        PullLog pullLog = new PullLog(new Date());//返回结果初始化并设置：请求时间


        //构造查询条件
        //-------------------------------------------------------------
        HuDaoQueryDTO queryDTO = new HuDaoQueryDTO();
//        queryDTO.setPage(currentPage);
//        queryDTO.setPage_size(pageSize);
//        queryDTO.setEnd_time(df_24.format(new Date()));//格式：2017-08-01 10:00:00

        //判断数据库是否是空的 ，空的则全量查询，否则增量
//        int LocalProductTotal = skuService.getTotalCount();
//        if (LocalProductTotal == 0) {//全量同步
//            queryDTO.setStart_time("1970-01-01 00:00:00");//格式：2017-08-01 10:00:00
//            log.debug("全量同步 {}", queryDTO);
//        } else {
//            //查询数据库获取最近一次的同步完成请求时间9（requestDate）
//            try {
//
////                PullLog bdPullLog = pullLogService.getLatestRequest(StaticField.OPERATE_NAME_FOR_SKU);
////                if (bdPullLog != null && bdPullLog.getRequestDate() != null) {
////                    queryDTO.setStart_time(df_24.format(bdPullLog.getRequestDate()));//格式：2017-08-01 10:00:00
////                } else {
//                    queryDTO.setStart_time("1970-01-01 00:00:00");//格式：2017-08-01 10:00:00
////                }
//            } catch (Exception e) {
//                log.error("异常{}", e.getMessage());
//            }
//        }

//        测试条件
        queryDTO.setPage(1);
        queryDTO.setPage_size(1);
        queryDTO.setStart_time("1970-01-01 00:00:00");//格式：2017-08-01 10:00:00
        queryDTO.setEnd_time("2018-08-15 20:14:09");

        String jsonString = JSON.toJSONString(queryDTO);
        log.debug("To jsonString is 查询sku条件 {}", jsonString);
        //-------------------------------------------------------------

        //第一次掉对方接口获取数据---就知道数据量了
        PageDTO pageDTO = postForSkus(jsonString);
        total = pageDTO.getTotal();

        if (total > pageSize) {
            counts = total / pageSize;
            if (((total % pageSize) > 0)) {//有余数
                counts = counts + 1;
            }
        }

        //
        //
        //
        //保存数据库的数据
//        save = skuService.batchSave((List<Product>) pageDTO.getRows());
        //
        List<Product> products = (List<Product>) pageDTO.getRows();


        mark = mark + save;

        for (currentPage = 2; currentPage <= counts; currentPage++) {
            queryDTO.setPage(currentPage);//下一页
            pageDTO = postForSkus(JSON.toJSONString(queryDTO));
//            save = skuService.batchSave((List<Product>) pageDTO.getRows());

            List<Product> products2= (List<Product>) pageDTO.getRows();

            mark = mark + save;
        }


        pullLog.setSuccessQuantity(total);
        pullLog.setInsertQuantity(mark);
        pullLog.setUpdateQuantity(total - mark);

        pullLog.setSuccess(true);
        pullLog.setSourceAddress(HostUtil.getHostName() + "@" + HostUtil.getHostAddress());
        pullLog.setOperator(StaticField.OPERATOR);
        pullLog.setName(StaticField.OPERATE_NAME_FOR_SKU);
        pullLog.setRemark("同步商品SKUs");

        log.info("成功的结束定时同步skus，任务耗时 {} S,结果{}", (System.currentTimeMillis() - start) / 1000, pullLog.toString());
        return pullLog;
    }


    /**
     * 获取商品列表sku
     * POST
     *
     * @param jsonString
     * @return
     */
    public PageDTO postForSkus(String jsonString) {
        log.debug("SKU批量查询参数 {}", jsonString);
        PageDTO pageDTO = new PageDTO();
        System.out.println(tokenCacheUtil.getSkuUrl());
        String respose = HttpUtil.post(tokenCacheUtil.getSkuUrl(), jsonString, tokenCacheUtil.getAppId(), tokenCacheUtil.getAccessToken());
        HashMap<String, String> map = JSON.parseObject(respose, new TypeReference<HashMap<String, String>>() {
        });

        //第1层
        String dataString = map.get("data");
        HashMap<String, String> dataMap = JSON.parseObject(dataString, new TypeReference<HashMap<String, String>>() {
        });


        //第2层
        Integer total = 0;
        try {
            total = Integer.valueOf(dataMap.get("total"));
        } catch (Exception e) {
            log.error("对方接口返回数据错误，无法获取total，信息{}", e.getMessage());
        }
        pageDTO.setTotal(total);

        String rowsString = dataMap.get("rows");//list的sting
        List<HuDaoProductSkuDTO> huDaoProductSkuDTOS = JSONObject.parseArray(rowsString, HuDaoProductSkuDTO.class);
        log.debug("{}", huDaoProductSkuDTOS);

        ArrayList<Product> products = new ArrayList<>(huDaoProductSkuDTOS.size());
        for (HuDaoProductSkuDTO dto : huDaoProductSkuDTOS) {
            Product product = new Product();

            product.setRfidCode(dto.getRfid_code());
            product.setSkuCode(dto.getSku_code());
            product.setSpuCode(dto.getSpu_code());

            product.setPrice(dto.getJson_price().getSale());
            product.setName(dto.getName());
            product.setSubtitle(dto.getSub_name());

            product.setNotes(dto.getComment());
            product.setShortNotes(dto.getShort_notes());
            product.setImage(dto.getJson_images().getDefault_url());

            product.setCreateDate(new Date());
            product.setUpdateDate(new Date());

            products.add(product);
        }
        pageDTO.setRows(products);
        return pageDTO;
    }


}

