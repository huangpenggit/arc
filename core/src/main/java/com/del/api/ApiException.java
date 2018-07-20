package com.del.api;

/**
 * API异常定义
 *
 * @author yechao
 * @date 2018/07/20
 */
public class ApiException extends Exception {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private ApiCode code;

    private String message;

    public ApiException(ApiCode code) {
        super();
        this.code = code;
    }

    public ApiException(ApiCode code, String message) {
        super();
        this.code = code;
        this.message = message;
    }

    public ApiCode getCode() {
        return code;
    }

    @Override
    public String getMessage() {
        return message;
    }

}
