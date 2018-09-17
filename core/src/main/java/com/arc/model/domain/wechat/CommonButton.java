package com.arc.model.domain.wechat;

/**
 * 普通按钮（子按钮）
 * 接着是子菜单项的封装。
 * 这里对子菜单是这样定义的：
 * 没有子菜单的菜单项，
 * 有可能是二级菜单项，
 * 也有可能是不含二级菜单的一级菜单。
 * 这类子菜单项一定会包含三个属性：type、name和key，封装的代码如下：
 *
 * @author 叶超
 * @date 2017-11-20
 */
public class CommonButton extends Button {
    private String type;            //类型
    private String key;             //key--参数--微信服务器会带给开发者的服务器
    private String url;             //url--url--微信服务器会带给开发者的服务器

    //getter--setter 方法
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
}
