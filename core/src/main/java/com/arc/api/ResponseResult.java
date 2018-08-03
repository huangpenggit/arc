package com.arc.api;

import lombok.ToString;
import org.springframework.util.Assert;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;


/**
 * Api response
 *
 * @param <T> any results from api interface
 * @author dengqianyong
 */
@ToString
public final class ResponseResult<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    private String code;
    private boolean success;
    private String message;
    private Collection<String> errors;
    private T result;
    private Object date;

    private Integer total; // 分页数量，由ApiAdvice切面时set，不需要手动set

    private ResponseResult() {
        this.code = ApiCode.CODE_SUCCESS.getCode();
        this.result = null;
        this.total = null;
        this.errors = new ArrayList<>();
    }

    private ResponseResult(ApiCode apiCode) {
        this.code = apiCode.getCode();
        this.result = null;
        this.total = null;
        this.errors = new ArrayList<>();
    }

    private ResponseResult(ApiCode apiCode, T result) {
        this(apiCode);
        this.result = result;
    }

    private ResponseResult(ApiCode apiCode, String error) {
        this(apiCode);
        addError(error);
    }

    private ResponseResult(ApiCode apiCode, String... errors) {
        this(apiCode);
        if (errors != null) {
            for (String error : errors) {
                addError(error);
            }
        }
    }

    public static <T> ResponseResult<T> success(T result) {
        return new ResponseResult<T>(ApiCode.CODE_SUCCESS, result);
    }

    public static <T> ResponseResult<T> failure(ApiCode code) {
        Assert.notNull(code, ApiCode.class.getName() + " must not be null. ");
        return new ResponseResult<T>(code);
    }

    public static <T> ResponseResult<T> failure(ApiCode code, String error) {
        Assert.notNull(code, ApiCode.class.getName() + " must not be null. ");
        return new ResponseResult<T>(code, error);
    }

    public static <T> ResponseResult<T> failure(ApiCode code, String... errors) {
        Assert.notNull(code, ApiCode.class.getName() + " must not be null. ");
        return new ResponseResult<T>(code, errors);
    }

    public void addError(String error) {
        errors.add(error);
    }

    /**
     * 结果状态码
     *
     * @return
     */
    public String getCode() {
        return code;
    }

    /**
     * 错误信息列表
     *
     * @return
     */
    public Collection<String> getErrors() {
        return errors;
    }

    /**
     * 响应结果<T>可以是任何类型，如果是分页结果，分页的总数将封装在total中
     *
     * @return
     */
    public T getResult() {
        return result;
    }

    /**
     * 添加分页的记录总数
     *
     * @param total
     */
    public void setTotal(Integer total) {
        this.total = total;
    }

    /**
     * 分页的记录总数
     *
     * @return
     */
    public Integer getTotal() {
        return total;
    }


    /**
     * 判断请求是否成功（CODE是否等于0）
     *
     * @return
     */
    public boolean isSuccess() {
        return ApiCode.CODE_SUCCESS.getCode().equals(getCode());
    }

}
