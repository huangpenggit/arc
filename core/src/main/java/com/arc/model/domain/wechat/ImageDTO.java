package com.arc.model.domain.wechat;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


public class ImageDTO {
    private String imgid;

    private String img_org_name;

    private String suffix;//格式

    private String path;

    private Long uid;//用户id


    private Date upload_time;

    private Boolean available;




    public String getImgid() {
        return imgid;
    }


    public void setImgid(String imgid) {
        this.imgid = imgid;
    }


    public String getImg_org_name() {
        return img_org_name;
    }


    public void setImg_org_name(String img_org_name) {
        this.img_org_name = img_org_name;
    }


    public String getSuffix() {
        return suffix;
    }


    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }


    public String getPath() {
        return path;
    }


    public void setPath(String path) {
        this.path = path.replaceAll("\\\\", "/");
    }


    public Long getUid() {
        return uid;
    }


    public void setUid(Long uid) {
        this.uid = uid;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public Date getUpload_time() {
        return upload_time;
    }


    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    public void setUpload_time(Date upload_time) {
        this.upload_time = upload_time;
    }
    public Boolean getAvailable() {
        return available;
    }


    public void setAvailable(Boolean available) {
        this.available = available;
    }
    @Override
    public String toString() {
        return "BannerImageInfo [imgid=" + imgid + ", img_org_name=" + img_org_name + ", suffix=" + suffix + ", path="
                + path + ", uid=" + uid + ", upload_time=" + upload_time + ", available=" + available + "]";
    }



}



