//package com.arc.util.tem;
//
//
//import lombok.Getter;
//import lombok.Setter;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.stereotype.Component;
//
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;
//
///**
// * 获取access-token
// * 简单描述：
// * access-token是标准接口的全局唯一调用凭据，调用各接口时都需使用access-token。
// * 第三方获取后需要进行妥善保存。access-token的存储至少要保留512个字符空间。
// * access-token的有效期目前为1个小时，需定时刷新，重复获取将导致上次获取的access-token失效
// */
//@Slf4j
//@Component
//public class TokenCacheUtil {
//
////    @Value("${hla.hudao.accessTokenUrl}")
////    private String accessTokenUrl;
//
//
//
//    @Autowired
//    private Hla hla;
//
//    /**
//     * 获取tkoken
//     * 读取配置文件中的账户信息发送post请求获取token
//     *
//     * @return
//     */
//    public String getToken() {
//        String json = "{ \"app_id\": \"" + hla.getAppId() + "\", \"app_key\": \"" + GetSignature(hla.getAppId(), hla.getAppSecret()) + "\",\"grant_type\": \"client_credentials\"}";
//        log.debug("获取token的请求参数 \n{} \n时间{}", json, new Date());
//        return HttpUtil.post(hla.getAccessTokenUrl(), json);
//    }
//
//
//
///*
////依赖内存缓存token
//    public static long expiresIn;//
//    public static String accessToken = null;          //全局唯一接口调用凭据
//    public static long expiresTime = 3000000L;//  1时(h)=3600000毫秒(ms) 过期时间，这里提早十分钟
//    public String getAccessToken() {
//        //如果 1、accessToken为null 2、或者超时---则必须去重新获取
//        log.debug(accessToken);
//        log.debug("超时时刻" + expiresTime);
//        log.debug("当前时间{}", System.currentTimeMillis());
//        log.debug("当前时间早于指定时刻{}", System.currentTimeMillis() <= expiresTime);
//        if (accessToken == null || System.currentTimeMillis() > expiresTime) {
//            String response = getToken();
//            log.debug("response from Server is {}", response);
//            if (response.contains("Success") || response.contains(":0,")) {
//                JSONObject targetObject = JSON.parseObject(JSON.parseObject(response).getString("data"));//data属性的数据
//                accessToken = targetObject.getString("access_token");//token
//                expiresIn = (Long.valueOf(targetObject.getString("expires_in"))) * 1000L;//超时时间 单位：ms
//            } else {
//                log.error("!!!POST获取TOKEN时候出错，时间{}", new Date());
//                //失败时给管理员发送邮件
//                //EmailUtils.sendTextEmail("12345678@qq.com","从服务器获取Token失败："+result);
//            }
//            log.debug("服务器返回的accessToken  {},超时时间{}ms", accessToken, expiresIn);
//            expiresTime = System.currentTimeMillis() + (expiresIn - 360000);
//            log.debug("超时时刻重置{}ms", expiresTime);
//        }
//        return accessToken;
//    }
//*/
//
//    /**
//     * 获取凭证 token ,
//     * 注意：
//     * 有缓存功能
//     * 有效期目前为1个小时（实际缓存时间为50min）
//     *
//     * @return
//     */
////依赖数据库缓存token，注意：数据id为1
////    public String getAccessToken() {
////        //如果 1、accessToken为null 2、或者超时---则必须去重新获取
////        log.debug("当前时间{}", System.currentTimeMillis());
////        Token token = null;
////        String accessToken = null;          //全局唯一接口调用凭据
////        long expiresTime = 0L;//  1时(h)=3600000毫秒(ms) 过期时间，这里提早十分钟
////
////        token = tokenService.get(1);//默认 accessToken的id为1
////        if (token == null) {
////            token = new Token();
////            token.setId(1);
////            token.setState(1);
////            token.setExpiresTime(expiresTime);
////            token.setAppId(hla.getAppId());
////            token.setAppSecret(hla.getAppSecret());
////            token.setAccessTokenUrl(hla.getAccessTokenUrl());
////            //首次启动系统 数据库没有数据去获取一个保存
////            boolean isSuccess = true;
////            try {
////                token.setToken(responseToToken(getToken()));
////            } catch (Exception e) {
////                log.error(e.getMessage());
////                isSuccess = false;
////            }
////            if (isSuccess) {
////                tokenService.save(token);
////            }
////        }
////
////        //数据库中有数据检查数据是否合法 1有值 2时间有效
////        if (token.getToken() == null || token.getExpiresTime() == null || System.currentTimeMillis() > token.getExpiresTime() || token.getToken().isEmpty()) {
////
////            String response = getToken();
////            log.debug("Response from Server is {}", response);
////
////            if (response.contains("Success") || response.contains(":0,")) {
////                JSONObject targetObject = JSON.parseObject(JSON.parseObject(response).getString("data"));//data属性的数据
////                accessToken = targetObject.getString("access_token");//token
////                expiresTime = (Long.valueOf(targetObject.getString("expires_in"))) * 1000L;//超时时间 单位：ms
////                log.debug("成功!!!服务器返回的accessToken  {},超时时间expiresTime{}ms", accessToken, expiresTime);
////                expiresTime = System.currentTimeMillis() + (expiresTime - 360000);
////                log.debug("超时时刻重置{}ms", expiresTime);//1534298959371ms
////                token.setExpiresTime(expiresTime);
////                token.setId(1);
////                token.setToken(accessToken);
////                token.setCreateDate(new Date());
////                token.setState(1);
////                token.setAppId(hla.getAppId());
////                token.setAppSecret(hla.getAppSecret());
////                token.setAccessTokenUrl(hla.getHost()+hla.getAccessTokenUrl());
////                tokenService.update(token);
////            } else {
////                //失败时给管理员发送邮件
////                //EmailUtils.sendTextEmail("12345678@qq.com","从服务器获取Token失败："+result);
////                log.error("失败!!!POST获取TOKEN时候出错，时间{}", new Date());
////            }
////        }
////        return token.getToken();
////    }
////
//
//    //response字符串解析出token
////    private String responseToToken(String reponseString) {
////        log.debug("Response from Server is {}", reponseString);
////        if (reponseString.contains("Success") || reponseString.contains(":0,")) {
////            JSONObject targetObject = JSON.parseObject(JSON.parseObject(reponseString).getString("data"));//data属性的数据
////            return targetObject.getString("access_token");//token
////        }
////        throw new RuntimeException("response字符串解析出token时候发生异常");
////    }
//
//    //--------------------------------------------------------------------
//
//    /**
//     * 获得签名
//     * 获取 app_key 算法
//     * 简要描述：
//     * 获取app_key算法
//     * 系统通过签名(app_key)来完成接口调用的合法性验证。验证的流程如下：
//     * 接口调用方根据固定的算法计算签名,并通过接口传递给服务器。
//     * 服务器通过同样的算法验证调用方的签名，签名验证通过后完成接口的实际调用。否则则返回签名验证失败信息。
//     * 具体的计算算法如下：
//     * app_id 与 app_secret 做按位异或生成A，(pp_secret如果位数不够，app_secret从左到右循环使用)
//     * unixtimestamp +  A ＝ B
//     * 32位小写，MD5（B）＝C
//     * app_key ＝ C + unixtimestamp
//     * <p>
//     * * Content-Type: application/json; charset=utf-8
//     * * POST
//     * * http://host:port/api/v6/data/auth_token/get
//     * * <p>
//     * * request
//     * * {
//     * * "app_id": "ntdf5543581a2f066e74cf2fe93ac27d",
//     * * "app_key": "70fac06bc882a8d91a07fe888b885e111497492941",
//     * * "grant_type": "client_credentials"
//     * * }
//     * * <p>
//     * * 注意参数 client_credentials 固定
//     * * <p>
//     * * response
//     * * {
//     * * "message":"Success",
//     * * "code":0,
//     * * "data":{
//     * * "access_token":"CLNTCRED|d031c398-80f5-4ff9-bdbe-21c501510425",
//     * * "grant_type":"client_credentials",
//     * * "expires_in":"86400"
//     * * }
//     * * }
//     * * }
//     *
//     * @param app_id
//     * @param app_secret
//     * @return
//     */
//    public static String GetSignature(String app_id, String app_secret) {
//        String A = crypt2(app_id, app_secret);//两个参数 做按位异或-->A
//        String B = new Date().getTime() / 1000 + A;//抛弃1000ms ？  请求时间+A-->B
////        String C = MD5Utils.encrypt32(B); //MD5 32-->C
//        String app_key = C + new Date().getTime() / 1000;//C+请求时间-->key
//        return app_key;
//    }
//
//
//    //异或工具方法
//    public static String crypt2(String access_token, String app_secret) {
//        List<Character> list = new ArrayList<>();
//        char[] appIds = access_token.toCharArray();
//        char[] appSecrets = app_secret.toCharArray();
//        Integer appIdLength = access_token.length();
//        Integer appSecretLength = app_secret.length();
//
//        Integer size = appIdLength % appSecretLength > 0 ? (appIdLength / appSecretLength) + 1 : (appIdLength / appSecretLength);
//        for (int i = 0; i < size; i++) {
//            for (int j = 0; j < appSecrets.length; j++) {
//                list.add(appSecrets[j]);
//            }
//        }
//        list = list.subList(0, appIdLength);
//        StringBuffer appKey = new StringBuffer("");
//        for (int i = 0; i < list.size(); i++) {
//            Character appkey = (char) ((int) appIds[i] ^ (int) list.get(i));
//            appKey.append(appkey);
//        }
//        return appKey.toString();
//    }
//
//    public String getSkuUrl() {
//        return hla.getHost()+hla.getSkuUrl();
//    }
//
//    public String getAppId() {
//        return hla.getHost()+hla.getAppId();
//    }
//
//    public String getSpuUrl() {
//        return hla.getHost()+hla.getSpuUrl();
//    }
//
//    public String getGroupUrl() {
//        return hla.getHost()+hla.getGroupUrl();
//    }
//
//
//    /**
//     * 内部类
//     * 注入参数的
//     */
//    @Getter
//    @Setter
//    @Component
//    @ConfigurationProperties(prefix = "hla.hudao")
//    public static class Hla {
//        private String appId;
//        private String appSecret;
//
//        private String host;
//        private String skuUrl;
//        private String spuUrl;
//        private String groupUrl;
//        private String accessTokenUrl;
//
//    }
//
//}
