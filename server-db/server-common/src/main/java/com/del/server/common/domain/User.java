package com.del.server.common.domain;

import java.util.Date;

public class User {
    private Long id;

    private String username;

    private String password;

    private String nickname;

    private String openId;

    private String accessToken;

    private Byte subscribe;

    private String remark;

    private Byte sex;

    private String headimgurl;

    private Date subscribeTime;

    private Date unsubscribeTime;

    private Date becomevipTime;

    private Long totalpoint;

    private Long cardnumber;

    private Byte viplevel;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getOpenId() {
        return openId;
    }

    public void setOpenId(String openId) {
        this.openId = openId;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public Byte getSubscribe() {
        return subscribe;
    }

    public void setSubscribe(Byte subscribe) {
        this.subscribe = subscribe;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public Date getSubscribeTime() {
        return subscribeTime;
    }

    public void setSubscribeTime(Date subscribeTime) {
        this.subscribeTime = subscribeTime;
    }

    public Date getUnsubscribeTime() {
        return unsubscribeTime;
    }

    public void setUnsubscribeTime(Date unsubscribeTime) {
        this.unsubscribeTime = unsubscribeTime;
    }

    public Date getBecomevipTime() {
        return becomevipTime;
    }

    public void setBecomevipTime(Date becomevipTime) {
        this.becomevipTime = becomevipTime;
    }

    public Long getTotalpoint() {
        return totalpoint;
    }

    public void setTotalpoint(Long totalpoint) {
        this.totalpoint = totalpoint;
    }

    public Long getCardnumber() {
        return cardnumber;
    }

    public void setCardnumber(Long cardnumber) {
        this.cardnumber = cardnumber;
    }

    public Byte getViplevel() {
        return viplevel;
    }

    public void setViplevel(Byte viplevel) {
        this.viplevel = viplevel;
    }
}