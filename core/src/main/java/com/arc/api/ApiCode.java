package com.arc.api;


import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public enum ApiCode {
    @T("成功") CODE_SUCCESS("0"),

    // 项目级别异常(3位数字)
    @T("Http请求错误") CODE_HTTP_REQUEST_ERROR("100"),
    @T("非法参数") CODE_ILLEGAL_ARGUMENT("101"),
    @T("加解密异常") CODE_CIPHER_EXCEPTION("191"),
    @T("Api接口回退异常") CODE_API_CLIENT_FALLBACK("198"),
    @T("未知异常") CODE_UNKOWN_EXCEPTION("199"),

    // Order异常从1000开始
    @T("订单消息队列异常") CODE_ORDER_AMQP_EXCEPTION("1100"),
    @T("订单不存在") CODE_ORDER_NOT_FOUND("1101"),
    @T("状态不支持") CODE_ORDER_STATE_NOT_SUPPORT("1102"),
    @T("反馈类型不支持") CODE_ORDER_FEEDBACK_NOT_SUPPORT("1103"),
    @T("订单金额数据不一致") CODE_ORDER_AMOUNT_DIFFIERENT("1104"),
    @T("订单查询失败") CODE_ORDER_SELECT_EXCEPTION("1107"),
    @T("订单查询状态不正确") CODE_ORDER_STATE_EXCEPTION("1108"),
    @T("支付回调不存在") CODE_ORDER_PAYMENT_CALLBACK_NOT_FOUND("1109"),
    @T("支付信息不正确") CODE_ORDER_PAYMENT_GET_EXCEPTION("1111"),
    @T("订单重复提交") CODE_ORDER_DUPLICATE_ORDER_SUBMIT("1202"),

    // Custom异常从2000开始
    @T("用户不正确") CODE_CUSTOM_INFO_EXCEPTION("2000"),
    @T("用户不存在") CODE_CUSTOM_INFO_NOT_FOUND("2001"),
    @T("用户保存不正确") CODE_CUSTOM_SAVE_EXCEPTION("2002"),
    @T("用户更新不正确") CODE_CUSTOM_UPDATE_EXCEPTION("2003"),
    @T("用户地址更新不正确") CODE_CUSTOM_ADDRESS_INFO_EXCEPTION("2011"),
    @T("用户地址不存在") CODE_CUSTOM_ADDRESS_NOT_FOUND("2012"),
    @T("用户套餐信息不存在") CODE_CUSTOM_PACK_NOT_FOUND("2021"),
    @T("用户套餐地址数量达到上限") CODE_CUSTOM_PACK_ADDRESS_IS_MAX("2022"),

    // Partner异常从3000开始
    @T("合作商不存在") CODE_PARTNER_INFO_NOT_FOUND("3001"),
    @T("合作商Code不统一") CODE_PARTNER_CODE_NOT_UNIQUE("3004"),

    // Business异常从4000,5000开始
    @T("产品异常") CODE_PRODECT_INFO_EXCEPTION("4000"),
    @T("产品不存在") CODE_PRODECT_INFO_NOT_FOUND("4001"),

    @T("产品价目异常") CODE_PRODECT_QUOTE_EXCEPTION("4003"),
    @T("产品价目不存在") CODE_PRODECT_QUOTE_NOT_FOUND("4004"),
    @T("产品价目不一致") CODE_PRODECT_QUOTE_NOT_UNIQUE("4005"),

    @T("服务大类异常") CODE_CATEGORY_INFO_EXCEPTION("4100"),
    @T("服务大类未找到") CODE_CATEGORY_INFO_NOT_FOUND("4101"),

    @T("套餐信息异常") CODE_PACK_INFO_EXCEPTION("4200"),
    @T("套餐信息未找到") CODE_PACK_INFO_NOT_FOUND("4201"),

    @T("权益信息未找到") CODE_RIGHT_INFO_NOT_FOUND("4203"),
    @T("权益信息与产品不匹配") CODE_RIGHT_PRODUCT_NOT_MATCH("4204"),

    @T("活动尚未开始") CODE_MARKET_ACTIVITY_NOT_START("4301"),
    @T("活动优惠券未找到") CODE_MARKET_ACTIVITY_COUPON_NOT_FOUND("4311"),

    @T("优惠券未找到") CODE_MARKET_COUPON_NOT_FOUND("4401"),
    @T("优惠券不匹配") CODE_MARKET_COUPON_NOT_MATCH("4402"),
    @T("优惠券已使用") CODE_MARKET_COUPON_USED("4403"),
    @T("优惠券已过期") CODE_MARKET_COUPON_EXPIRED("4404"),
    @T("优惠券已锁定") CODE_MARKET_COUPON_LOCK("4405"),
    @T("优惠券产品不匹配") CODE_MARKET_COUPON_PRODUCT_NOT_MATCH("4406"),
    @T("优惠券地区不匹配") CODE_MARKET_COUPON_AREA_NOT_MATCH("4407"),
    @T("优惠券渠道不匹配") CODE_MARKET_COUPON_CHANNEL_NOT_MATCH("4408"),

    //payment异常 10000开始
    @T("错误的回调签名") CODE_PAYMENT_WRONG_CALLBACK_SIGN("6002"),

    // System异常从7000开始
    @T("token获取异常") CODE_TOKEN_OBTAIN_EXCEPTION("7004"),
    @T("token解析异常") CODE_TOKEN_RESOLVE_EXCEPTION("7005"),
    @T("token验证异常") CODE_TOKEN_VERIFICATION_EXCEPTION("7006"),
    @T("token保存异常") CODE_TOKEN_SAVE_EXCEPTION("7007"),
    @T("token更新异常") CODE_TOKEN_UPDATE_EXCEPTION("7008"),

    // Subscription异常从8000开始
    @T("套餐无法找到") CODE_PACK_NOTFOUND_EXCEPTION("8002"),
    @T("订购记录无法找到") CODE_SUBSCRIPTION_NOT_FOUND("8007"),

    // SMC异常从9000开始
    @T("相同序列号") CODE_SMC_SAME_SERIAL_NUMBER("9001"),
    @T("无法查询到短信模板内容") CODE_MESSAGE_TEMPLATE_NONFOUND_EXCEPTION("9002"),;

    private String code;

    ApiCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return this.code;
    }

    /**
     * 将字符型代码转换成枚举状态码
     *
     * @param code
     * @return
     */
    public static ApiCode by(String code) {
        for (ApiCode ac : ApiCode.values()) {
            if (ac.getCode().equals(code)) {
                return ac;
            }
        }
        return null;
    }

    /**
     * 输出状态码的文本内容
     *
     * @param ac
     * @return
     */
    public static String text(ApiCode ac) {
        if (ac == null) {
            return "";
        }
        return text(ac.getCode());
    }

    /**
     * 输出状态码的文本内容
     *
     * @param code
     * @return
     */
    public static String text(String code) {
        return TEXT_HOLDER.get(code);
    }

    private static Map<String, String> TEXT_HOLDER = new HashMap<>();

    static {
        for (ApiCode ac : ApiCode.class.getEnumConstants()) {
            try {
                TEXT_HOLDER.put(ac.getCode(), getValue(ac));
            } catch (IllegalArgumentException e) {
                continue;
            }
        }
    }

    private static String getValue(ApiCode ac) {
        if (ac == null) {

            throw new IllegalArgumentException();
        }
        Field f = org.apache.commons.lang3.reflect.FieldUtils.getDeclaredField(ApiCode.class, ac.name());
        if (f != null) {
            T anno = f.getAnnotation(T.class);
            if (anno != null) {
                return anno.value();
            }
        }
        throw new IllegalArgumentException();
    }

    @Target(ElementType.FIELD)
    @Retention(RetentionPolicy.RUNTIME)
    private @interface T {
        String value();
    }

}