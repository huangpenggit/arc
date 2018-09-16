package com.arc.faststart.controller;

import lombok.Data;

import java.io.Serializable;

/**
 * TMC推送后的结果记录
 *
 * @author wuyang & yechao
 * @date 2018/09/14
 */
@Data
public class TmcPushInfo implements Serializable {

    private int tmcName;//tmc，服务供应商的名称的代号，数据库中有定义，是可能变更的

    private String appKey;//不同供应商的appKey 可能不一样，数据库定义

    private String orderType;//F-机票，H-酒店，T-火车

    private String orderNo;//订单号

    private String orderStatus;//1-已提交 2-已取消，3-已成交，4-全部退票，5-部分退票，

    private String amount;//总价

    private String payType;//P：个人，C：公司

    private String ticketNum;//票数 一个订单中有多少张票  间夜数

    private String code;//状态码


//    public String getKey() {
//        ORDER:%s:%s:%s:%s:%s:%s:%s:%s:%s:%s
//        order:tmc:日期:appkey:订单类型:订单号:订单状态:金额:支付方式:票数或间/夜数:成功或错误代码
//        return "ORDER:" + tmcName + ":" + DateUtil.dateToString(new Date(), DateUtil.YYYY_MM_DD)
// + ":" + appKey + ":" + orderType + ":" +
//                getOrderNo() + ":" + getOrderStatus() + ":" + getAmount() + ":" + getTicketNum() + ":" + getCode();
//    }


    @Override
    public String toString() {
        return "TmcPushInfo{" +
                "tmcName=" + tmcName +
                ", appKey='" + appKey + '\'' +
                ", orderType='" + orderType + '\'' +
                ", orderNo='" + orderNo + '\'' +
                ", orderStatus='" + orderStatus + '\'' +
                ", amount='" + amount + '\'' +
                ", payType='" + payType + '\'' +
                ", ticketNum='" + ticketNum + '\'' +
                ", code='" + code + '\'' +
                '}';
    }

    public static void main(String[] args) {
//        String useName=" F:\\workspace\\ssh_photo\\WebContent\\uploadFile\\1444783552338pic.jpg";
        String useName="ORDER:6:20180913:eee :T:orderNo-213180912000028:orderStatus-3:amount-209.0:ticketNum-0:resultCode-6000024";

        int begin=useName.indexOf('-')+1;

        int last=useName.length();

        System.out.println(useName.substring(begin,last));


        //\t表示一个tab键的缩进
        //'\r'是回车，前者使光标到行首，（carriage return）
        //'\n'是换行，后者使光标下移一格，（line feed）
        String str="    hello a\n\nb\t\tcde       \t\t\t\t\t\t\t\tv          world    ";
        System.out.print(str);
        System.out.println("\n----------");
        System.out.println(str.trim());
        System.out.println("\n----------");
        System.out.println(str.trim().replace(" ","").replace("\t","").replace("\n","").replace("\r",""));
        System.out.println(str.trim().replaceAll("\\s","").replace("\t","").replace("\n","").replace("\r",""));



    }
}
