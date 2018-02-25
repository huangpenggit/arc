package cn.com.besttone.csp.model.custom;

import java.util.Date;

public class CustomTypeInfo {
    private Integer id;

    private Integer packageCode;

    private String customTypeName;

    private String picUrl;

    private String logo;

    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPackageCode() {
        return packageCode;
    }

    public void setPackageCode(Integer packageCode) {
        this.packageCode = packageCode;
    }

    public String getCustomTypeName() {
        return customTypeName;
    }

    public void setCustomTypeName(String customTypeName) {
        this.customTypeName = customTypeName;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}