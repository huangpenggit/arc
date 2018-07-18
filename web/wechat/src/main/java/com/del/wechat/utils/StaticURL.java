package com.del.wechat.utils;

/**
 * 把微信接口中要用的URL抽到父类中来
 */
public class StaticURL {
    public static final String TOKEN = "mayher";
    public static final String APPID = "wx13c5d7f72dc057fd";
    public static final String APPSECRET = "d66abf648bcbeb19275606c49f2bb4f8";

    public static String accessToken = null;          //公众号的全局唯一接口调用凭据
    public static long expiresTime = 0L;                //过期时间

    // 发送get 请求 去刷新 token   //{"access_token":"ACCESS_TOKEN","expires_in":7200}
    public static final String GET_ACCESSTOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";

    //获取用户信息的url--(关注之后才可以)
    public static final String GET_USERINFO_URL = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";

    //创建菜单的url
    public static final String CREATE_MENU_URL = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN";

    //发送模板消息url
    public static final String SEND_TEMPLE_URL = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=ACCESS_TOKEN";

    //获取到授权页面的access_token的url(get)
    public static final String ACCESS_TOKEN = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";

    //获取刷新后的access_token的url(get)
    public static final String REFRESH_TOKEN = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=APPID&grant_type=refresh_token&refresh_token=REFRESH_TOKEN";

    //获取用户信息(获取到授权的用户信息)
    public static final String USERINFO = " https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID&lang=zh_CN";

    //图文消息留言管理接口1.1 新增永久素材（原接口有所改动）
    public static final String ADD_NEWS = "https://api.weixin.qq.com/cgi-bin/material/add_news?access_token=ACCESS_TOKEN";

    //图文消息留言管理接口1.2 获取永久素材（原接口有所改动）
    public static final String GET_MATERIAL = "https://api.weixin.qq.com/cgi-bin/material/get_material?access_token=ACCESS_TOKEN";

    //2.2 关闭已群发文章评论（新增接口）
    public static final String CLOSE_NEWS_REPLY = "https://api.weixin.qq.com/cgi-bin/comment/close?access_token=ACCESS_TOKEN";
    //2.1 打开已群发文章评论（新增接口）
    public static final String OPENNEWS_REPLY = "https://api.weixin.qq.com/cgi-bin/comment/open?access_token=ACCESS_TOKEN";


    /**
     * 返回一个URL用于发送get请求去获取access_token
     * @return
     */
    public static String getAccessTokenURL() {
        return GET_ACCESSTOKEN_URL.replace("APPID", APPID).replace("APPSECRET", APPSECRET);
    }

    public static String getAccessTokenURL(String appid,String appsecret) {
        return GET_ACCESSTOKEN_URL.replace("APPID", appid).replace("APPSECRET", appsecret);
    }
}
