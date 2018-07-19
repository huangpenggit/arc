package com.del.enums;

/**
 * 枚举常量标识不同服务 application_name
 *
 * @author yechao
 * @date 2018/07/19
 */
public enum FeignPath {

    //枚举
    MS_BUSINESSS(FeignPath.SERVER_COMMON),
    ;


    //定义常量
    public static final String SERVER_COMMON = "ms-server-common";



    //属性
    private String serviceId;

    //构造方法
    FeignPath(String serviceId) {
        this.serviceId = serviceId;
    }

    public String getServiceId() {
        return serviceId;
    }


}
