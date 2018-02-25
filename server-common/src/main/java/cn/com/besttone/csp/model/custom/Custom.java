package cn.com.besttone.csp.model.custom;

import java.util.Date;

public class Custom {
    private Long id;//主键ID
    private String telephone;
    private String customeName;
    private Integer gender;
    private Integer state;

    private String pictureUrl;

    private Date registTime;

    private String registChannel;

    private String telephoneAscription;

    private String tianyiId;

    private String qqId;

    private String weixinId;

    private String alipayId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCustomeName() {
        return customeName;
    }

    public void setCustomeName(String customeName) {
        this.customeName = customeName;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }

    public String getRegistChannel() {
        return registChannel;
    }

    public void setRegistChannel(String registChannel) {
        this.registChannel = registChannel;
    }

    public String getTelephoneAscription() {
        return telephoneAscription;
    }

    public void setTelephoneAscription(String telephoneAscription) {
        this.telephoneAscription = telephoneAscription;
    }

    public String getTianyiId() {
        return tianyiId;
    }

    public void setTianyiId(String tianyiId) {
        this.tianyiId = tianyiId;
    }

    public String getQqId() {
        return qqId;
    }

    public void setQqId(String qqId) {
        this.qqId = qqId;
    }

    public String getWeixinId() {
        return weixinId;
    }

    public void setWeixinId(String weixinId) {
        this.weixinId = weixinId;
    }

    public String getAlipayId() {
        return alipayId;
    }

    public void setAlipayId(String alipayId) {
        this.alipayId = alipayId;
    }
}