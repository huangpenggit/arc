/*
package com.arc.post.agent;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.arc.post.hudao.dto.ExtGroupDTO;
import com.arc.post.hudao.dto.HostUtil;
import com.arc.post.hudao.dto.HuDaoProductSpuDTO;
import com.arc.post.hudao.dto.PageDTO;
import com.arc.post.hudao.model.GroupSpu;
import com.arc.post.hudao.model.ProductSpu;
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

*/
/**
 * 执行远程调用客户spu信息，然后保存这些信息
 *
 * @author: yechao
 * @date: 2018/08/07 15:27
 * @version: V1.0
 *//*

@Slf4j
@Component
public class SpuAgent {

    @Autowired
    private TokenCacheUtil tokenCacheUtil;

//    @Autowired
//    private SpuService spuService;
//
//    @Autowired
//    private PullLogService pullLogService;

    public SimpleDateFormat df_24 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//转换成时间格式24小时制   12小时的--yyyy-MM-dd hh:mm:ss



    //-----------------------------------------------------------------------------------------------------------------------------------------------


    //需要一个方法来处理保存结果并记录日志
    //什么时刻 1、操作数据总量 2、新增数据数量 3、更新的数据量 4、任务状态 成功/失败

    */
/**
     * 保存spu
     * <p>
     * 步骤：
     * 1、获取list<spu>
     * 2、批量保存
     * 3、注意可能分页
     *注意：
     * 什么情况算同步成功
     * 怎么增量更新
     * @return
     *//*

    public PullLog syncSpus() {
        long start = System.currentTimeMillis();
        int currentPage = 1;
        int pageSize = 100;
        int total = 0;//数据条数
        int counts = 0;//分几页码（几次）去请求查询
        int mark = 0;//保存成功的数量
        String jsonString = null;
        PullLog pullLog = new PullLog(new Date());//返回结果初始化并设置：请求时间

        //构造查询条件
        //-------------------------------------------------------------
        HuDaoQueryDTO queryDTO = new HuDaoQueryDTO();
        queryDTO.setPage(currentPage);
        queryDTO.setPage_size(pageSize);
        queryDTO.setEnd_time(df_24.format(new Date()));//格式：2017-08-01 10:00:00


        int LocalSpuTotal = spuService.getTotalCount(); //判断数据库是否是空的 ，空的则全量查询，否则增量
        if (LocalSpuTotal == 0) {//全量同步
            queryDTO.setStart_time("1970-01-01 00:00:00");//格式：2017-08-01 10:00:00
        } else { //增量--就是控制开始时间
            //查询数据库获取最近一次的同步完成请求时间（requestDate）
            PullLog bdPullLog = pullLogService.getLatestRequest(StaticField.OPERATE_NAME_FOR_SPU);

            if (bdPullLog != null && bdPullLog.getRequestDate() != null) {
                queryDTO.setStart_time(df_24.format(bdPullLog.getRequestDate()));//格式：2017-08-01 10:00:00
            } else {
                queryDTO.setStart_time("1970-01-01 00:00:00");//格式：2017-08-01 10:00:00
            }

            log.debug("开始时间startDate {}", queryDTO.getStart_time());
        }

        jsonString = JSON.toJSONString(queryDTO);  //     查询条件

        //第一次掉对方接口获取数据---就知道total数据量了
        PageDTO pageDTO = postForSpus(jsonString);

        total = pageDTO.getTotal();

        if (total > pageSize) {
            counts = total / pageSize;
            if (((total % pageSize) > 0)) {//有余数
                counts = counts + 1;//分页数
            }
        }

        //第一页数据在首次请求中就已经获取了，
        List<ProductSpu> spus = (List<ProductSpu>) pageDTO.getRows();
        Integer save = spuService.batchSave(spus);
        mark = mark + save;

        for (currentPage =2; currentPage <= counts; currentPage++) {
            queryDTO.setPage(currentPage);//第一页的下一页
            pageDTO = postForSpus(JSON.toJSONString(queryDTO));
            save = spuService.batchSave((List<ProductSpu>) pageDTO.getRows());
            mark = mark + save;
        }


        pullLog.setSuccessQuantity(total);
        pullLog.setInsertQuantity(save);
        pullLog.setUpdateQuantity(total - save);

        pullLog.setSuccess(true);
        pullLog.setSourceAddress(HostUtil.getHostNameAtAddress());
        pullLog.setOperator(StaticField.OPERATOR);
        pullLog.setName(StaticField.OPERATE_NAME_FOR_SPU);
        pullLog.setRemark("同步商品SPUs");

        log.info("成功的结束定时同步spus，任务耗时 {} S,结果{}", (System.currentTimeMillis() - start) / 1000, pullLog.toString());
        return pullLog;
    }


    */
/**
     * 获取对方数据spus
     *
     * @return
     *//*

    public PageDTO postForSpus(String jsonString) {
        long start = System.currentTimeMillis();
        PageDTO pageDTO = new PageDTO();


        log.debug("批量查询参数 {}", jsonString);
        String respose = HttpUtil.post(tokenCacheUtil.getSpuUrl(), jsonString, tokenCacheUtil.getAppId(), tokenCacheUtil.getAccessToken());
        HashMap<String, String> map = JSON.parseObject(respose, new TypeReference<HashMap<String, String>>() {
        });


        //第1层
        String dataString = map.get("data");

        HashMap<String, String> dataMap = JSON.parseObject(dataString, new TypeReference<HashMap<String, String>>() {
        });

        Integer total = 0;
        //第2层
        try {
            total = Integer.valueOf(dataMap.get("total"));
        } catch (Exception e) {
            log.error("对方接口返回数据错误，无法获取total，信息{}", e.getMessage());
        }
        pageDTO.setTotal(total);

        String rowsString = dataMap.get("rows");//list的sting
       log.debug("############rows-spu################");
        log.debug("将要解析的数据{}",rowsString);
        log.debug("############rows-spu################");

        List<HuDaoProductSpuDTO> spuDTOs = JSONObject.parseArray(rowsString, HuDaoProductSpuDTO.class);
        ArrayList<ProductSpu> spus = new ArrayList<>(spuDTOs.size());

        for (HuDaoProductSpuDTO dto : spuDTOs) {
            ProductSpu spu = new ProductSpu();

//            group.setGroupCode(dto.getJson_belong().getCategory_code());
//            group.setGroupName(dto.getJson_belong().getCategory_name());
            List<ExtGroupDTO> extGroups = dto.getJson_belong().getExt_groups();
            List<GroupSpu> groupSpus = new ArrayList<>();
            for (ExtGroupDTO extGroup : extGroups) {
                GroupSpu group = new GroupSpu();

                group.setSpuCode(dto.getSpu_code());
                group.setGroupCode(extGroup.getCode());
                group.setGroupName(extGroup.getName());
                groupSpus.add(group);
            }
            spu.setProductGroup(groupSpus);

            spu.setSpuCode(dto.getSpu_code());
            spu.setName(dto.getName());
            spu.setPrice(dto.getJson_price().getSale());
            spu.setNotes(dto.getShort_notes());

            spu.setState(false);
            spu.setImage(dto.getJson_images().getDefault_url());

            spus.add(spu);
        }
        pageDTO.setRows(spus);
        return pageDTO;
    }


}

*/
