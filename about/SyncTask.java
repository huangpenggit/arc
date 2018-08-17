package com.rongyi.hla.regular;

import com.rongyi.hla.agent.SkuAgent;
import com.rongyi.hla.service.product.PullLogService;
import com.rongyi.hla.utils.StaticField;
import com.rongyi.model.product.PullLog;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.net.InetAddress;
import java.util.Date;

/**
 * 定时同步任务
 */
@Slf4j
@Component
public class SyncTask {


    @Autowired
    private SkuAgent skuAgent;

    @Autowired
    private PullLogService pullLogService;



//    @Scheduled(cron = " 0/1 * * * * ?")
//    public void s1() {
//            log.debug("一秒一次，时间{}ms ", System.currentTimeMillis());
//    }
    @Scheduled(cron = " 0 0/2 * * * ?")
    public void min() {
        log.debug("-------------------------------2min一次，时间{}ms ", System.currentTimeMillis());
    }

    @Scheduled(cron = " 0 0/10 * * * ?")
    public void min10() {
        log.debug("-------------------------------10min一次，时间{}ms ", System.currentTimeMillis());
    }


    //0 0/30 * * * ?
//    @Scheduled(cron = "0 0/30 * * * ?")
//    @Scheduled(cron = " 0 0/2 * * * ?")
    @Scheduled(cron = " 0 0/1 * * * ?")
    public void sync() {

        boolean executeFlag = false;
        String hostname = "";
        Date start = new Date();
        try {
            log.info("#####################################################");
            log.info("#开始定时同步商品，时间{}", start);
            executeFlag = skuAgent.pullProducts();
            if (executeFlag) {
                hostname = InetAddress.getLocalHost().getHostName();
                log.info("成功的结束定时同步商品，任务耗时 {} S", (System.currentTimeMillis() - start.getTime()) / 1000, hostname);
            } else {
                log.error("失败的同步商品，\n任务耗时 {} S ,{}", (System.currentTimeMillis() - start.getTime()) / 1000, hostname);
            }
            String say = executeFlag ? "成功" : "失败";
            pullLogService.save(new PullLog(StaticField.OPERATOR, StaticField.OPERATE_NAME, hostname,say+ "同步商品", executeFlag));
        } catch (Exception e) {
            log.error("失败的同步商品任务，出现异常！\n任务耗时 {} S,\n错误详情{}", (System.currentTimeMillis() - start.getTime()) / 1000, e.getMessage(), hostname);
        }
        log.info("#####################################################");
    }

    /**
     * 自动调出功能
     * 每天零点调出
     */
    //@Scheduled(fixedDelay=160000)
    @Scheduled(cron = "0 0 0 * * ?")
    public void autoCallout() {
        boolean executeFlag = false;
        try {
            // do something
        } catch (Exception e) {
            log.info("每天零点调出，服务器:{}，定时任务任务执行失败,详情 {}" + new Date(), e.getMessage());
        }
        if (!executeFlag) {
            return;
        }
    }

}