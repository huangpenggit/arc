package com.arc.model.domain.wechat;

import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.util.Base64Utils;

import java.io.UnsupportedEncodingException;
import java.util.Date;

/**
 * 扫码回执信息 传输对象--实体
 *
 * @author: yechao
 * @date: 2018/5/5
 */
//@Data
@Slf4j
@ToString
@NoArgsConstructor
public class WeChatDTO {

    private static final long serialVersionUID = 1L;


    private Integer currentPage = 1;

    private Integer pageSize = 10;

//    private Integer offSet;

    public Integer getOffSet() {
        return (currentPage - 1) * pageSize;
    }

    private String merchantId; // 机器商场编号

    private String openId; // openId

    private Integer activityId; //   活动编号

    private Long userId; // 用户编号

    private String mall; // 商场名称

    private String key; // key

    private Date createTime; // 创建时间

    private boolean reusable = false; //是否可以复用

    private String otherParam;//其他参数


    private String codenickname;//codeNickName; // BASE64编码昵称   codenickname

    private String headimgurl;// headImgUrl; // 头像 headimgurl

    private Boolean firstFollow = false; // 是否首次关注  firstFollow


    public WeChatDTO(Integer activityId,Integer currentPage, Integer pageSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.activityId = activityId;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(String merchantId) {
        this.merchantId = merchantId;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public Integer getActivityId() {
        return activityId;
    }

    public void setActivityId(Integer activityId) {
        this.activityId = activityId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getMall() {
        return mall;
    }

    public void setMall(String mall) {
        this.mall = mall;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public boolean isReusable() {
        return reusable;
    }

    public void setReusable(boolean reusable) {
        this.reusable = reusable;
    }

    public String getOtherParam() {
        return otherParam;
    }

    public void setOtherParam(String otherParam) {
        this.otherParam = otherParam;
    }

    public String getCodenickname() {
        return  decStringToString(codenickname);
    }

    public void setCodenickname(String codenickname) {
        if (codenickname== null) {
            this.codenickname = "";
        } else {
            try {

                String encodeToString = Base64Utils.encodeToString(codenickname.getBytes("utf-8"));
                log.debug("  编码后{}", encodeToString);
                this.codenickname = encodeToString;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public Boolean getFirstFollow() {
        return firstFollow;
    }

    public void setFirstFollow(Boolean firstFollow) {
        this.firstFollow = firstFollow;
    }

    public static Logger getLog() {
        return log;
    }




    //解密方法提供
    public static String decStringToString(String encodeToString) {
        byte[] decodeFromString = Base64Utils.decodeFromString(encodeToString);
        String decodeToString = null;
        try {
            decodeToString = new String(decodeFromString,"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            log.debug("解码出错了     " + e.getMessage());
        }
        log.debug("解码前的参数     " + encodeToString);
        log.debug("解码后的string  " + decodeToString);
        return decodeToString;
    }

}
