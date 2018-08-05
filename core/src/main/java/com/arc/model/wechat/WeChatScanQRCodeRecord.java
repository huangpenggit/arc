package com.arc.model.wechat;

import com.arc.model.BaseModel;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

import java.util.Date;

/**
 * 扫码回执信息
 * 表对应--实体
 *
 * @author: 叶超
 * @date: 2018/07/27
 */
@Data
@Slf4j
@ToString
@NoArgsConstructor
public class WeChatScanQRCodeRecord extends BaseModel {

    private int id;

    private String merchantId; // 机器商场编号

    private String openId; // openId

    private Integer activityId; // 活动编号

    private Long userId; // 用户编号

    private String codeNickName; // BASE64编码昵称

    private String headImgUrl; // 头像

    private Boolean firstFollow; // 是否首次关注

    private String mall; // 商场名称

    private String key; // key

    private Date createTime; // 创建时间

//
//    public void setCodeNickName(String codeNickName) {
//        this.codeNickName = codeNickName;
//    }
//
//
//    public String getCodeNickName() {
//        String decodeToString = null;
//        try {
//            byte[] decodeFromString = Base64Utils.decodeFromString(this.codeNickName);
//            decodeToString = new String(decodeFromString);
//            System.out.println("#################");
//            System.out.println(decodeToString);
//            System.out.println(decodeToString);
//            System.out.println(decodeToString);
//            System.out.println(decodeToString);
//            System.out.println("#################");
//        } catch (Exception e) {
//            log.debug("解码错误{}", e.getMessage());
//            e.printStackTrace();
//        }
//        return decodeToString;
//    }
//
//
//    public String getMerchantId() {
//        return merchantId;
//    }
//
//    public void setMerchantId(String merchantId) {
//        this.merchantId = merchantId;
//    }
//
//    public String getOpenId() {
//        return openId;
//    }
//
//    public void setOpenId(String openId) {
//        this.openId = openId;
//    }
//
//    public Integer getActivityId() {
//        return activityId;
//    }
//
//    public void setActivityId(Integer activityId) {
//        this.activityId = activityId;
//    }
//
//    public Long getUserId() {
//        return userId;
//    }
//
//    public void setUserId(Long userId) {
//        this.userId = userId;
//    }
//
//
//    public String getHeadImgUrl() {
//        return headImgUrl;
//    }
//
//    public void setHeadImgUrl(String headImgUrl) {
//        this.headImgUrl = headImgUrl;
//    }
//
//    public Boolean getFirstFollow() {
//        return firstFollow;
//    }
//
//    public void setFirstFollow(Boolean firstFollow) {
//        this.firstFollow = firstFollow;
//    }
//
//    public String getMall() {
//        return mall;
//    }
//
//    public void setMall(String mall) {
//        this.mall = mall;
//    }
//
//    public String getKey() {
//        return key;
//    }
//
//    public void setKey(String key) {
//        this.key = key;
//    }
//
//    public Date getCreateTime() {
//        return createTime;
//    }
//
//    public void setCreateTime(Date createTime) {
//        this.createTime = createTime;
//    }
//
//    public static Logger getLog() {
//        return log;
//    }
}
